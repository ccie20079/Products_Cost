using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
using Tools;
using LoginSystem.Entities;
using Products_Cost.Helper;
namespace Products_Cost
{
    static class Program
    {
        //=====================================================================
        // Project Name        :    Products_Cost  
        // Project Description : 
        // Class Name          :    Class1
        // File Name           :    Class1
        // Namespace           :    Products_Cost 
        // Class Version       :    v1.0.0.0
        // Class Description   : 
        // CLR                 :    4.0.30319.42000  
        // Author              :    董   魁  (ccie20079@126.com)
        // Addr                :    中国  陕西 咸阳    
        // Create Time         :    2019-10-22 15:15:12
        // Modifier:     
        // Update Time         :    2019-10-22 15:15:12
        //======================================================================
        // Copyright © DGCZ  2019 . All rights reserved.
        // =====================================================================
        public static User_Info _userInfo;
        static XmlFlexflow xff = new XmlFlexflow();
        /// <summary>
        /// 应用程序的主入口点。
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
          
            string ftpIPADDR = xff.ReadXmlNodeValue("FTP_IPADDR");
            //先测试是否可以ping通
            if (!ConnectByPing.pingTheAddress(ftpIPADDR))
            {
                if (DialogResult.No == MessageBox.Show("未能与版本服务器: " +　ftpIPADDR+",取得联系,是否继续？", "提示: ", MessageBoxButtons.YesNo, MessageBoxIcon.Information))
                {
                    return;
                }
                //继续。
                doNext();
                return;
            }
            //检查软件版本
            MSG msg = CheckVersionForApplication.checkVersionByPN(ftpIPADDR,Application.ProductName,Application.ProductVersion);
            if (!msg.Flag)
            {
                MessageBox.Show(msg.Msg, "提示：", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
                return;
            }
            doNext();   
        }
        /// <summary>
        /// 
        /// </summary>
        static void doNext() {
            #region 数据库联接测试。
            string host_Name = xff.ReadXmlNodeValue("SERVER_NAME");
            string user_Id = xff.ReadXmlNodeValue("USER_ID");
            string password = xff.ReadXmlNodeValue("PASSWORD");
            //先测试是否可以ping通
            if (!ConnectByPing.pingTheAddress(host_Name))
            {
                MessageBox.Show("与" + host_Name + " 连接失败!", "提示: ", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            #endregion
            //再这个启动类里，对对象进行初始化。
            OracleDaoHelper daoHelper = new OracleDaoHelper(host_Name, user_Id, password);
            FormLogin frmLogin = new FormLogin();
            frmLogin.ShowDialog();
            if (DialogResult.OK != frmLogin.DialogResult)
            {
                //结束程序
                return;
            }
            FrmMainOfProductsCost frmMainOfProductsCost = new FrmMainOfProductsCost();
            Application.Run(frmMainOfProductsCost);
        }
    }
}
