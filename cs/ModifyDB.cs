using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Data.Common;
using System.Data.OracleClient;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
//using MySql.Data.MySqlClient;

namespace LMWebApp.cs
{
    public class ModifyDB
    {
        public OracleConnection con;
        public OracleCommand cmd;

        public MySqlConnection conmysql;
        public MySqlCommand cmdmysql;

        public SqlConnection consql;
        public SqlCommand cmdsql;


        /////////MYSQL//////////
        protected MySqlConnection DBConnectMySql()
        {
            conmysql = new MySqlConnection(ConfigurationManager.ConnectionStrings["MOFGOVMNConn"].ConnectionString);
            try
            {
                if (conmysql.State == ConnectionState.Closed) conmysql.Open();
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
            }
            return conmysql;
        }
        public void DBDisconnectMySql()
        {
            if (conmysql.State == ConnectionState.Open)
            {
                conmysql.Close();
                conmysql.Dispose();
            }
        }
        public MySqlDataReader MySqlExecuteReader(string strQry)
        {
            try
            {
                cmdmysql = new MySqlCommand();
                cmdmysql.CommandType = CommandType.Text;
                cmdmysql.CommandText = strQry;
                cmdmysql.Connection = DBConnectMySql();
                return cmdmysql.ExecuteReader();
            }
            catch (DbException DbEx)
            {
                throw DbEx;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
            }
        }
        public object MySqlExecuteScalar(string strQry)
        {
            try
            {
                cmdmysql = new MySqlCommand();
                cmdmysql.CommandType = CommandType.Text;
                cmdmysql.CommandText = strQry;
                cmdmysql.Connection = DBConnectMySql();
                return cmdmysql.ExecuteScalar();
            }
            catch (DbException DbEx)
            {
                throw DbEx;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                DBDisconnectMySql();
            }
        }
        public int SP_MySqlExecuteNonQuery(string SPName, string[] Params1, string[] Params2)
        {
            MySqlCommand cmd;
            try
            {
                cmd = new MySqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = SPName;
                cmd.Connection = DBConnectMySql();
                if ((Params1 != null || Params1.Length > 0) && (Params2 != null || Params2.Length > 0)) for (int i = 0; i < Params1.Length; i++) cmd.Parameters.AddWithValue(Params1[i], Params2[i]);
                return cmd.ExecuteNonQuery();
            }
            catch (DbException DbEx)
            {
                throw DbEx;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                DBDisconnectMySql();
            }
        }
        public DataSet MySqlExecuteDataSet(string strQry)
        {
            GetTableData myObjGetTableData = new GetTableData();
            MySqlDataAdapter adapter = new MySqlDataAdapter();
            DataSet dataSet = null;
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                cmdmysql = new MySqlCommand();
                cmdmysql.CommandType = CommandType.Text;
                cmdmysql.CommandText = strQry;
                cmdmysql.Connection = DBConnectMySql();
                adapter.SelectCommand = cmdmysql;
                dataSet = new DataSet();
                adapter.Fill(dataSet);
            }
            catch (cs.LMException ex)
            {
                throw ex;
            }
            catch (DbException ex)
            {
                throw ex;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                DBDisconnectMySql();
            }
            return dataSet;
        }
        public int MySqlExecuteNonQuery(string strQry)
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                cmdmysql = new MySqlCommand();
                cmdmysql.CommandType = CommandType.Text;
                cmdmysql.CommandText = strQry;
                cmdmysql.Connection = DBConnectMySql();
                return cmdmysql.ExecuteNonQuery();
            }
            catch (cs.LMException ex)
            {
                throw ex;
            }
            catch (DbException ex)
            {
                throw ex;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally { DBDisconnectMySql(); }
        }

        /////////ORACLE//////////
        public int OracleExecuteNonQuery(string strQry)
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                cmd = new OracleCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = strQry;
                cmd.Connection = DBConnect();
                return cmd.ExecuteNonQuery();
            }
            catch (cs.LMException ex)
            {
                throw ex;
            }
            catch (DbException ex)
            {
                throw ex;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally{DBDisconnect();}
        }
        public object OracleExecuteScalar(string strQry)
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                cmd = new OracleCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = strQry;
                cmd.Connection = DBConnect();
                return cmd.ExecuteScalar();
            }
            catch (NullReferenceException ex)
            {
                return "";
            }
            catch (cs.LMException ex)
            {
                throw ex;
            }
            catch (DbException ex)
            {
                throw ex;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                DBDisconnect();
            }
        }
        public OracleDataReader OracleExecuteReader(string strQry)
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                cmd = new OracleCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = strQry;
                cmd.Connection = DBConnect();
                return cmd.ExecuteReader();
            }
            catch (cs.LMException ex)
            {
                throw ex;
            }
            catch (DbException ex)
            {
                throw ex;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally{}
        }
        public DataSet OracleExecuteDataSet(string strQry)
        {
            GetTableData myObjGetTableData = new GetTableData();
            OracleDataAdapter adapter = new OracleDataAdapter();
            DataSet dataSet = null;
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                cmd = new OracleCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = strQry;
                cmd.Connection = DBConnect();
                adapter.SelectCommand = cmd;
                dataSet = new DataSet();
                adapter.Fill(dataSet);
            }
            catch (cs.LMException ex)
            {
                throw ex;
            }
            catch (DbException ex)
            {
                throw ex;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                DBDisconnect();
            }
            return dataSet;
        }
        public OracleCommand OracleCMD(string strQry)
        {
            GetTableData myObjGetTableData = new GetTableData();
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                cmd = new OracleCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = strQry;
                cmd.Connection = DBConnect();
                return cmd;
            }
            catch (cs.LMException ex)
            {
                throw ex;
            }
            catch (DbException ex)
            {
                throw ex;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally{}
        }
        protected OracleConnection DBConnect()
        {
            try
            {
                con = new OracleConnection(ConfigurationManager.ConnectionStrings["CMCDBBTConn"].ConnectionString);
                if (con.State == ConnectionState.Closed) con.Open();
            }
            catch (cs.LMException ex)
            {
                throw ex;
            }
            return con;
        }
        public void DBDisconnect()
        {
            try
            {
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                    con.Dispose();
                }
            }
            catch (cs.LMException ex)
            {
                throw ex;
            }
            catch (DbException ex)
            {
                throw ex;
            }
            catch (Exception ex)
            {
                throw ex;
            }           
        }
        public int SP_OracleExecuteNonQuery(string SPName, string[] Params1, string[] Params2)
        {
            GetTableData myObjGetTableData = new GetTableData();
            OracleCommand cmd;
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                cmd = new OracleCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = SPName;
                cmd.Connection = DBConnect();
                if ((Params1 != null || Params1.Length > 0) && (Params2 != null || Params2.Length > 0)) for (int i = 0; i < Params1.Length; i++) cmd.Parameters.AddWithValue(Params1[i], Params2[i]);
                return cmd.ExecuteNonQuery();
            }
            catch (cs.LMException ex)
            {
                throw ex;
            }
            catch (DbException ex)
            {
                throw ex;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally{DBDisconnect();}
        }
        public object SP_OracleExecuteScalar(string SPName, string[] Params1, string[] Params2)
        {
            GetTableData myObjGetTableData = new GetTableData();
            OracleCommand cmd;
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                cmd = new OracleCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = SPName;
                cmd.Connection = DBConnect();
                if ((Params1 != null || Params1.Length > 0) && (Params2 != null || Params2.Length > 0)) for (int i = 0; i < Params1.Length; i++) cmd.Parameters.AddWithValue(Params1[i], Params2[i]);
                return cmd.ExecuteScalar();
            }
            catch (cs.LMException ex)
            {
                throw ex;
            }
            catch (DbException ex)
            {
                throw ex;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally { DBDisconnect(); }
        }
        public OracleDataReader SP_OracleExecuteReader(string SPName, string[] Params1, string[] Params2)
        {
            GetTableData myObjGetTableData = new GetTableData();
            ModifyDB myObj = new ModifyDB();
            OracleCommand cmd;
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                cmd = new OracleCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = SPName;
                cmd.Connection = myObj.DBConnect();
                if ((Params1 != null || Params1.Length > 0) && (Params2 != null || Params2.Length > 0)) for (int i = 0; i < Params1.Length; i++) cmd.Parameters.AddWithValue(Params1[i], Params2[i]);
                return cmd.ExecuteReader();
            }
            catch (cs.LMException ex)
            {
                throw ex;
            }
            catch (DbException ex)
            {
                throw ex;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally { }
        }
        public OracleCommand SP_OracleCMD(string SPName, string[] Params1, string[] Params2)
        {
            GetTableData myObjGetTableData = new GetTableData();
            OracleCommand cmd;
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                cmd = new OracleCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = SPName;
                cmd.Connection = DBConnect();
                if ((Params1 != null || Params1.Length > 0) && (Params2 != null || Params2.Length > 0)) for (int i = 0; i < Params1.Length; i++) cmd.Parameters.AddWithValue(Params1[i], Params2[i]);
                return cmd;
            }
            catch (cs.LMException ex)
            {
                throw ex;
            }
            catch (DbException ex)
            {
                throw ex;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally { }
        }
        public DataSet SP_OracleExecuteDataSet(string SPName, string[] Params1, string[] Params2)
        {
            GetTableData myObjGetTableData = new GetTableData();
            ModifyDB myObj = new ModifyDB();
            OracleDataAdapter adapter = new OracleDataAdapter();
            DataSet dataSet = null;
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                cmd = new OracleCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = SPName;
                cmd.Connection = myObj.DBConnect();
                if ((Params1 != null || Params1.Length > 0) && (Params2 != null || Params2.Length > 0)) for (int i = 0; i < Params1.Length; i++) cmd.Parameters.AddWithValue(Params1[i], Params2[i]);
                adapter.SelectCommand = cmd;
                dataSet = new DataSet();
                adapter.Fill(dataSet);
            }
            catch (cs.LMException ex)
            {
                throw ex;
            }
            catch (DbException ex)
            {
                throw ex;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally { DBDisconnect(); }
            return dataSet;
        }



        /////////MSSQL//////////
        protected SqlConnection DBConnectSql()
        {
            consql = new SqlConnection(ConfigurationManager.ConnectionStrings["MOFDMSConn"].ConnectionString);
            try
            {
                if (consql.State == ConnectionState.Closed) consql.Open();
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
            }
            return consql;
        }
        public void DBDisconnectSql()
        {
            if (consql.State == ConnectionState.Open)
            {
                consql.Close();
                consql.Dispose();
            }
        }
        public int ExecuteNonQuery(string strQry)
        {
            try
            {
                cmdsql = new SqlCommand();
                cmdsql.CommandType = CommandType.Text;
                cmdsql.CommandText = strQry;
                cmdsql.Connection = DBConnectSql();
                return cmdsql.ExecuteNonQuery();
            }
            catch (DbException DbEx)
            {
                throw DbEx;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                DBDisconnectSql();
            }
        }
        public object ExecuteScalar(string strQry)
        {
            try
            {
                cmdsql = new SqlCommand();
                cmdsql.CommandType = CommandType.Text;
                cmdsql.CommandText = strQry;
                cmdsql.Connection = DBConnectSql();
                return cmdsql.ExecuteScalar();
            }
            catch (DbException DbEx)
            {
                throw DbEx;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                DBDisconnectSql();
            }
        }
        public SqlDataReader ExecuteReader(string strQry)
        {
            try
            {
                cmdsql = new SqlCommand();
                cmdsql.CommandType = CommandType.Text;
                cmdsql.CommandText = strQry;
                cmdsql.Connection = DBConnectSql();
                return cmdsql.ExecuteReader();
            }
            catch (DbException DbEx)
            {
                throw DbEx;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
            }
        }
        public DataSet ExecuteDataSet(string strQry)
        {
            GetTableData myObjGetTableData = new GetTableData();
            SqlDataAdapter adapter = new SqlDataAdapter();
            DataSet dataSet = null;
            try
            {
                if (!myObjGetTableData.checkUserSession()) throw new cs.LMException("SessionDied");
                cmdsql = new SqlCommand();
                cmdsql.CommandType = CommandType.Text;
                cmdsql.CommandText = strQry;
                cmdsql.Connection = DBConnectSql();
                adapter.SelectCommand = cmdsql;
                dataSet = new DataSet();
                adapter.Fill(dataSet);
            }
            catch (cs.LMException ex)
            {
                cs.WriteLogForEx.WriteLog(ex);
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                throw ex;
            }
            catch (DbException ex)
            {
                cs.WriteLogForEx.WriteLog(ex);
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                throw ex;
            }
            catch (Exception ex)
            {
                cs.WriteLogForEx.WriteLog(ex);
                HttpContext.Current.Session["error500"] = "Message: " + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                throw ex;
            }
            finally
            {
                DBDisconnectSql();
            }
            return dataSet;
        }
        public SqlCommand SqlCMD(string strQry)
        {
            try
            {
                cmdsql = new SqlCommand();
                cmdsql.CommandType = CommandType.Text;
                cmdsql.CommandText = strQry;
                cmdsql.Connection = DBConnectSql();
                return cmdsql;
            }
            catch (DbException DbEx)
            {
                throw DbEx;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {

            }
        }
        public bool checkDBConnectSql()
        {
            bool rVal = true;
            consql = new SqlConnection(ConfigurationManager.ConnectionStrings["MOFDMSConn"].ConnectionString);
            try
            {
                if (consql.State == ConnectionState.Closed) consql.Open();
            }
            catch (NullReferenceException ex)
            {
                HttpContext.Current.Session["error500"] = "Баазтай холдогдож чадсангүй <br/>Message:" + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                rVal = false;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Session["error500"] = "Баазруу холдогдоход алдаа гарлаа <br/>Message:" + ex.Message + "<br/>StackTrace: " + ex.StackTrace;
                rVal = false;
            }
            finally
            {
                consql.Close();
                consql.Dispose();
            }
            return rVal;
        }
        public int SP_ExecuteNonQuery(string SPName, string[] Params1, string[] Params2)
        {
            SqlCommand cmdsql;
            try
            {
                cmdsql = new SqlCommand();
                cmdsql.CommandType = CommandType.StoredProcedure;
                cmdsql.CommandText = SPName;
                cmdsql.Connection = DBConnectSql();
                if ((Params1 != null || Params1.Length > 0) && (Params2 != null || Params2.Length > 0)) for (int i = 0; i < Params1.Length; i++) cmdsql.Parameters.AddWithValue(Params1[i], Params2[i]);
                return cmdsql.ExecuteNonQuery();
            }
            catch (DbException DbEx)
            {
                throw DbEx;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                DBDisconnectSql();
            }
        }
        public object SP_ExecuteScalar(string SPName, string[] Params1, string[] Params2)
        {
            SqlCommand cmdsql;
            try
            {
                cmdsql = new SqlCommand();
                cmdsql.CommandType = CommandType.StoredProcedure;
                cmdsql.CommandText = SPName;
                cmdsql.Connection = DBConnectSql();
                if ((Params1 != null || Params1.Length > 0) && (Params2 != null || Params2.Length > 0)) for (int i = 0; i < Params1.Length; i++) cmdsql.Parameters.AddWithValue(Params1[i], Params2[i]);
                return cmdsql.ExecuteScalar();
            }
            catch (DbException DbEx) { throw DbEx; }
            catch (Exception ex) { throw ex; }
            finally { DBDisconnectSql(); }
        }
        public SqlDataReader SP_ExecuteReader(string SPName, string[] Params1, string[] Params2)
        {
            SqlCommand cmdsql;
            try
            {
                cmdsql = new SqlCommand();
                cmdsql.CommandType = CommandType.StoredProcedure;
                cmdsql.CommandText = SPName;
                cmdsql.Connection = DBConnectSql();
                if ((Params1 != null || Params1.Length > 0) && (Params2 != null || Params2.Length > 0)) for (int i = 0; i < Params1.Length; i++) cmdsql.Parameters.AddWithValue(Params1[i], Params2[i]);
                return cmdsql.ExecuteReader();
            }
            catch (DbException DbEx) { throw DbEx; }
            catch (Exception ex) { throw ex; }
            finally { }
        }
        public SqlCommand SP_CMD(string SPName, string[] Params1, string[] Params2)
        {
            SqlCommand cmdsql;
            try
            {
                cmdsql = new SqlCommand();
                cmdsql.CommandType = CommandType.StoredProcedure;
                cmdsql.CommandText = SPName;
                cmdsql.Connection = DBConnectSql();
                if ((Params1 != null || Params1.Length > 0) && (Params2 != null || Params2.Length > 0)) for (int i = 0; i < Params1.Length; i++) cmdsql.Parameters.AddWithValue(Params1[i], Params2[i]);
                return cmdsql;
            }
            catch (DbException DbEx) { throw DbEx; }
            catch (Exception ex) { throw ex; }
            finally { }
        }
    }

}