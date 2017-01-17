using AeroEduClass.Lib.PostgreSQLDB;
using AeroEduLib;
using Newtonsoft.Json.Linq;
using System.Data;
using System.Windows.Forms;

namespace AeroEduClass.Lib
{
    public class frmDownloadLib
    {
        IDBHelper dbHelper = new PostgreHelper();
        string conn = Program._config.ConnectionString;
        #region 建表

        /// <summary>
        /// 如果表不存在则创建
        /// </summary>
        /// <param name="tableName"></param>
        public void IfNotExistCreateTable(string tableName)
        {
            string sql = "select count(0) from pg_tables where schemaname='public' and tablename=@TableName";

            string result = dbHelper.ExecuteScalar(conn, CommandType.Text, sql, new Npgsql.NpgsqlParameter("@TableName", tableName)).ToString();

            if (result == "0")
            {
                dbHelper.ExecuteNonQuery(conn, CommandType.Text, GetCreateTableSQL(tableName), null);
            }
        }
        /// <summary>
        /// 根据表名返回建表语句
        /// </summary>
        /// <param name="tableName"></param>
        /// <returns></returns>
        private string GetCreateTableSQL(string tableName)
        {
            string sql = string.Empty;
            switch (tableName)
            {
                case "userdl":
                    sql = @"CREATE TABLE public.userdl
                        (
                           id character(36), 
                           resource jsonb, 
                           createdate character varying(40) DEFAULT now(), 
                           CONSTRAINT userdl_pk_id PRIMARY KEY (id)
                        ) 
                        WITH (
                          OIDS = FALSE
                        )
                        ;
                        ALTER TABLE public.userdl
                          OWNER TO postgres;";
                    break;
                default:
                    break;
            }
            if (string.IsNullOrEmpty(sql))
                Log.ToFile("建表语句不存在:" + tableName);
            return sql;
        }

        #endregion

        #region datagridview operat postgresql

        internal void SaveCompleteItems(DataGridViewRow row)
        {
            string sql = "INSERT INTO userdl (id, resource) VALUES";
            // if insert multi lines
            //('1', 'json1'),('2', 'json2'),('3', 'json3');";
            string id = row.Cells["clID"].Value.ToString();
            JObject jo = new JObject();
            jo.Add("name", row.Cells["clName"].Value.ToString());
            jo.Add("path", row.Cells["clPath"].Value.ToString());
            sql += string.Format("('{0}','{1}');", id, jo.ToString());

            dbHelper.ExecuteNonQuery(conn, CommandType.Text, sql, null);
        }

        internal DataSet LoadTopLines(int top)
        {
            string sql = "select id, resource->>'name' as name,resource->>'path' as path,createdate from userdl order by createdate desc limit " + top + ";";
            DataSet ds = dbHelper.ExecuteQuery(conn, CommandType.Text, sql, null);
            return ds;
        }
        /// <summary>
        /// 删除一个已下载的资源
        /// </summary>
        /// <param name="id"></param>
        internal void DeleteRow(string id)
        {
            string sql = "delete from userdl where id='" + id + "'";
            dbHelper.ExecuteQuery(conn, CommandType.Text, sql, null);
        }
        #endregion
    }
}
