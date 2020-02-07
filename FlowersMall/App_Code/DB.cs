using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Net;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace App_Code
{
    /// <summary>
    /// 数据库操作类，连接数据库操作，并操作的数据存储在本地数据库MyDataSet中
    /// </summary>
    public class DB : System.Web.UI.Page
    {

        #region 属性

        /// <summary>
        /// 连接的全局变量
        /// </summary>
        private SqlConnection conn = null;
        /// <summary>
        /// 适配器
        /// </summary>
        public SqlDataAdapter da = null;
        /// <summary>
        /// 本地数据库名
        /// </summary>
        public DataSet MyDataSet = null;
        /// <summary>
        /// 返回错误
        /// </summary>
        public bool Fault = false;

        #endregion


        #region 构造函数

        /// <summary>
        /// 连接数据库，并开启。实例化完需要调用Fault属性判断是否连接成功！！
        /// </summary>
        public DB()
        {
            try
            {
                string s = "data source=localhost;database=Flower_Shop;Integrated Security=True;Pooling=False";//windows身份验证模式
                conn = new SqlConnection(s);
                conn.Open();

                da = new SqlDataAdapter();
                MyDataSet = new DataSet();
            }
            catch
            {
                //.Show("连接数据库失败！", "提示");
                Fault = true;
            }
        }
        /// <summary>
        /// 连接数据库，并开启。实例化完需要调用Fault属性判断是否连接成功！！
        /// </summary>
        /// <param name="s">Sql Server 连接语句</param>
        public DB(string s)
        {
            try
            {
                conn = new SqlConnection(s);
                conn.Open();

                da = new SqlDataAdapter();
                MyDataSet = new DataSet();
            }
            catch
            {
                //.Show("连接数据库失败！", "提示");
                Fault = true;
            }
        }
        /// <summary>
        /// windows身份验证模式连接数据库，并开启。实例化完需要调用Fault属性判断是否连接成功！！
        /// </summary>
        /// <param name="source">连接的服务器地址</param>
        /// <param name="database">连接的数据库名</param>
        public DB(string source, string database)
        {
            try
            {
                string s = "data source="+source+";database="+database+";Integrated Security=True;Pooling=False";//windows身份验证模式
                conn = new SqlConnection(s);
                conn.Open();

                da = new SqlDataAdapter();
                MyDataSet = new DataSet();
            }
            catch
            {
                //.Show("连接数据库失败！", "提示");
                Fault = true;
            }
        }
        /// <summary>
        /// 数据库标准安全连接，并开启。 实例化完需要调用Fault属性判断是否连接成功！！
        /// </summary>
        /// <param name="source">连接的服务器地址</param>
        /// <param name="initial_catalog">连接的数据库名</param>
        /// <param name="user_id">用户ID</param>
        /// <param name="password">密码</param>
        public DB(string source, string initial_catalog, string user_id, string password)
        {
            try
            {
                string s = "Data Source = "+source+"; Initial Catalog  = "+initial_catalog+"; User Id = "+user_id+"; Password = "+password+";";
                conn = new SqlConnection(s);
                conn.Open();

                da = new SqlDataAdapter();
                MyDataSet = new DataSet();
            }
            catch
            {
                //.Show("连接数据库失败！", "提示");
                Fault = true;
            }
        }

        
        #endregion


        #region 无连接操作

        /// <summary>
        /// 无连接操作，加载查询的数据库，精确查询，并将查询到的数据存储在本地中
        /// </summary>
        /// <param name="tableName">要查询的表名</param>
        /// <param name="listName">要查询的列名</param>
        /// <param name="value">要查询的值</param>
        public void LoadData(string tableName,string listName,string value)
        {
            string sql = "select * from "+ tableName +" where "+listName+"='" + value + "'";
            da = new SqlDataAdapter(sql, conn);//定义操作命令
            da.Fill(MyDataSet);
        }
        /// <summary>
        /// 无连接操作，加载查询的数据库，精确查询，并将查询到的数据存储在本地中
        /// </summary>
        /// <param name="tableName">要查询的表名</param>
        /// <param name="listName">要查询的列名</param>
        /// <param name="value">要查询的值</param>
        public void LoadData(string tableName, string listName, int value)
        {
            string sql = "select * from " + tableName + " where " + listName + "=" + value ;
            da = new SqlDataAdapter(sql, conn);//定义操作命令
            da.Fill(MyDataSet);
        }
        /// <summary>
        /// 无连接操作，加载查询的数据库，查询表，并将查询到的数据存储在本地中,自定义本地数据库的表名
        /// </summary>
        /// <param name="tableName">要查询的表名</param>
        /// <param name="MyDataTableName">自定义本地数据库的表名</param>
        public void LoadData(string tableName,string MyDataTableName)
        {
            string sql = "select * from " + tableName;
            da = new SqlDataAdapter(sql, conn);//定义操作命令
            da.Fill(MyDataSet,MyDataTableName);
        }
        /// <summary>
        /// 无连接操作，加载查询的数据库，查询表，并将查询到的数据存储在本地中
        /// </summary>
        /// <param name="tableName">要查询的表名</param>
        public void LoadData(string tableName)
        {
            string sql = "select * from " + tableName;
            da = new SqlDataAdapter(sql, conn);//定义操作命令
            da.Fill(MyDataSet);
        }

        /// <summary>
        /// 无连接操作，加载执行的数据库，执行sql语句，并加载相关数据到本地,自定义本地数据库的表名
        /// </summary>
        /// <param name="sql">要执行的sql语句</param>
        /// <param name="MyDataTableName">自定义本地数据库的表名</param>
        public void LoadExecuteData(string sql,string MyDataTableName)
        {
            da = new SqlDataAdapter(sql, conn);//定义操作命令
            da.Fill(MyDataSet, MyDataTableName);
        }
        /// <summary>
        /// 无连接操作，加载执行语句的数据库，执行sql语句，并加载相关数据到本地
        /// </summary>
        /// <param name="sql">要执行的sql语句</param>
        public void LoadExecuteData(string sql)
        {
            da = new SqlDataAdapter(sql, conn);//定义操作命令
            da.Fill(MyDataSet);
        }

        /// <summary>
        /// 无连接操作，本地查询判断 值 是否存在
        /// </summary>
        /// <param name="value">要查询的值</param>
        /// <param name="myTableName">要查询的本地表名</param>
        /// <param name="columnName">要查询的列名</param>
        /// <returns></returns>
        public bool QueryValue(string value, string myTableName, string columnName)
        {
            string val = ".";

            for (int i = 0; i < MyDataSet.Tables[myTableName].Rows.Count; i++)
            {
                val = Convert.ToString(MyDataSet.Tables[myTableName].Rows[i][columnName]).Trim();
                if (value == val)
                {
                    return true;
                }
            }
            return false;
        }
        /// <summary>
        /// 无连接操作，本地查询判断 值 是否存在
        /// </summary>
        /// <param name="value">要查询的值</param>
        /// <param name="myTableName">要查询的本地表名</param>
        /// <param name="columnNum">要查询的列名索引值，索引从0开始</param>
        /// <returns></returns>
        public bool QueryValue(string value, string myTableName, int columnNum)
        {
            string val = ".";

            for (int i = 0; i < MyDataSet.Tables[myTableName].Rows.Count; i++)
            {
                val = Convert.ToString(MyDataSet.Tables[myTableName].Rows[i][columnNum]).Trim();
                if (value == val)
                {
                    return true;
                }
            }
            return false;
        }
        /// <summary>
        /// 无连接操作，本地查询判断 值 是否存在 ，默认查询列索引值为0
        /// </summary>
        /// <param name="value">要查询的值</param>
        /// <param name="myTableName">要查询的本地表名</param>
        /// <returns></returns>
        public bool QueryValue(string value, string myTableName)
        {
            string val = ".";

            for (int i = 0; i < MyDataSet.Tables[myTableName].Rows.Count; i++)
            {
                val = Convert.ToString(MyDataSet.Tables[myTableName].Rows[i][0]).Trim();
                if (value == val)
                {
                    return true;
                }
            }
            return false;
        }
        /// <summary>
        /// 无连接操作，本地查询判断 值 是否存在 ，默认本地表名为索引0
        /// </summary>
        /// <param name="value">要查询的值</param>
        /// <param name="columnNum">要查询的列名索引，索引从0开始</param>
        /// <returns></returns>
        public bool QueryValue(string value, int columnNum)
        {
            string val = ".";

            for (int i = 0; i < MyDataSet.Tables[0].Rows.Count; i++)
            {
                val = Convert.ToString(MyDataSet.Tables[0].Rows[i][columnNum]).Trim();
                //if (value == val)
                if (value.Equals(val))
                {
                    return true;
                }
            }
            return false;
        }
        /// <summary>
        /// 无连接操作，本地查询判断 值 是否存在 ，默认本地表名索引为0，查询列名索引为0
        /// </summary>
        /// <param name="value">要查询的值</param>
        /// <returns></returns>
        public bool QueryValue(string value)
        {
            string val = ".";

            for (int i = 0; i < MyDataSet.Tables[0].Rows.Count; i++)
            {
                val = Convert.ToString(MyDataSet.Tables[0].Rows[i][0]).Trim();
                if (value == val)
                {
                    return true;
                }
            }
            return false;
        }
        /// <summary>
        /// 无连接操作，得到本地数据库 索引为0的表 中指定 列名 的第一行数据值
        /// </summary>
        /// <param name="columnName">指定列名</param>
        /// <returns></returns>
        public string GetValue(string columnName)
        {
            return Convert.ToString(MyDataSet.Tables[0].Rows[0][columnName]).Trim();
        }
        /// <summary>
        /// 无连接操作，得到本地数据库 索引为0的表 中指定 价钱列名 的第一行数据值（将得到的数据值现转换成浮点型，再转换成字符串）
        /// </summary>
        /// <param name="columnName">指定列名</param>
        /// <returns></returns>
        public string GetPriceValue(string columnName)
        {
            return Convert.ToString(Convert.ToDouble( MyDataSet.Tables[0].Rows[0][columnName])).Trim();
        }

        /// <summary>
        /// 无连接操作，设置本地数据库默认表的主键（1个）
        /// </summary>
        /// <param name="columnsName">要设置主键的列名</param>
        public void SetDataSetTableKey(string columnsName)
        {
            DataColumn[] keys = new DataColumn[1];
            keys[0] = MyDataSet.Tables[0].Columns[columnsName];
            MyDataSet.Tables[0].PrimaryKey = keys;
        }

        /// <summary>
        /// 无连接操作，上传本地数据库
        /// </summary>
        public void UploadData()
        {
            //try
            //{
                SqlCommandBuilder myCB = new SqlCommandBuilder(da); //将数据适配器封装的sql语句和连接对象转换成可以被执行的命令格式
                //记录在本地数据库中的操作，以便在更新到数据源时可以自动生成更新命令
                da.Update(MyDataSet);//将更改后的本地数据库更新到数据库服务器
                                     //MessageBox.Show("保存成功！", "提示");
            //}
            //catch (Exception e1)
            //{
            //    //MessageBox.Show(e1.Message, "提示");
            //    Fault = true;
            //}
        }
        /// <summary>
        /// 无连接操作，上传本地数据库
        /// </summary>
        /// <param name="MyDataTableName">自定义本地数据库的表名</param>
        public void UploadData(string MyDataTableName)
        {
            try
            {
                SqlCommandBuilder myCB = new SqlCommandBuilder(da); //将数据适配器封装的sql语句和连接对象转换成可以被执行的命令格式
                //记录在本地数据库中的操作，以便在更新到数据源时可以自动生成更新命令
                da.Update(MyDataSet, MyDataTableName);//将更改后的本地数据库更新到数据库服务器
                //MessageBox.Show("保存成功！", "提示");
            }
            catch (Exception e1)
            {
                //MessageBox.Show(e1.Message, "提示");
            }
        }
        /// <summary>
        /// 无连接操作，清空本地数据库
        /// </summary>
        public void Empty()
        {
            if (MyDataSet != null)
                MyDataSet.Clear();//清空本地储存的所有数据
        }

        #endregion


        #region 有连接操作

        /// <summary>
        /// 数据库有连接操作，对连接执行Transact-SQL语句并返回受影响的行数
        /// </summary>
        /// <param name="sql">Sql操作命令语句</param>
        public int ExecuteNonQuery(string sql)
        {
            SqlCommand dacj = new SqlCommand(sql, conn);
            return dacj.ExecuteNonQuery();
        }
        /// <summary>
        /// 数据库有连接操作，数据库查询，传入查询语句，返回bool值
        /// </summary>
        /// <param name="sqlstr">查询的语句</param>
        /// <returns></returns>
        public bool Query(string sqlstr)
        {
            SqlCommand comm = new SqlCommand(sqlstr,conn);
            string str = Convert.ToString(comm.ExecuteScalar());
            if (str != "")
            {
                //MessageBox.Show(str,"有值");
                return true;
            }
            else
            {
                //MessageBox.Show(str, "无值");
                return false;
            }
        }
        /// <summary>
        /// 数据库有连接操作，获取查询结果，返回指定查询列的值
        /// </summary>
        /// <param name="sql">查询语句</param>
        /// <param name="columnName">指定查询的列名</param>
        /// <returns></returns>
        public ArrayList DataReader(string sql,string columnName)
        {
            SqlCommand comm = new SqlCommand(sql, conn);
            SqlDataReader sdr = comm.ExecuteReader();
            ArrayList arr = new ArrayList(1);
            while (sdr.Read())
            {
                arr.Add( sdr[columnName].ToString().Trim());
            }
            sdr.Close();
            return arr;
        }
        /// <summary>
        /// 数据库有连接操作，获取查询结果，返回查询结果表
        /// </summary>
        /// <param name="sql">查询语句</param>
        /// <returns></returns>
        public SqlDataReader DataReader (string sql)
        {
            SqlCommand comm = new SqlCommand(sql, conn);
            SqlDataReader sdr = comm.ExecuteReader();
            return sdr;
        }
        /// <summary>
        /// 数据库有连接操作，更新数据库的数据 (临时项目方法)
        /// </summary>
        /// <param name="sqlstr">sql语句</param>
        /// <returns></returns>
        public void UPATE(string sqlstr)
        {
            SqlCommand comm = new SqlCommand(sqlstr, conn);
            comm.ExecuteNonQuery();

        }
        /// <summary>
        /// 数据库有连接操作，更新购物车表的数据 (鲜花商城项目方法)
        /// </summary>
        /// <param name="listName">要更改的列名</param>
        /// <param name="value">更改的值</param>
        /// <param name="s_c_id">商品id</param>
        /// <param name="s_u_id">用户id</param>
        /// <returns></returns>
        public bool Update(string listName, int value, int s_c_id, int s_u_id)
        {
            string sql = string.Format("update Shipping_Table set {0}={1} where s_c_id={2} and s_u_id={3}", listName, value, s_c_id, s_u_id);
            try
            {
                SqlCommand comm = new SqlCommand(sql, conn);
                return comm.ExecuteNonQuery() > 0;
            }
            catch (System.Exception ex)
            {
                throw;
            }
            finally
            {
                //conn.Close();
            }
        }
        #endregion



        /// <summary>
        /// 断开数据库连接，释放资源（只释放连接时产生的资源，不会将本地数据库里的数据清除）
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void OffData()
        {
            if (conn != null)
            {
                conn.Close();//关闭数据库连接
                conn.Dispose();//释放资源
            }
        }
        
    }
}
