using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Tools;
using System.Data;
using Oracle.DataAccess.Client;
using System.Windows.Forms;
namespace Products_Cost_Public_Class
{
    #region Version Info
    //=====================================================================
    // Project Name        :    Products_Cost_Public_Class  
    // Project Description : 
    // Class Name          :    GetProductsCostDetailInfo
    // File Name           :    GetProductsCostDetailInfo
    // Namespace           :    Products_Cost_Public_Class 
    // Class Version       :    v1.0.0.0
    // Class Description   : 
    // CLR                 :    4.0.30319.42000  
    // Author              :    dong kui  (ccie20079@126.com)
    // Addr                :    China ShannXi Xi'An  
    // Create Time         :    2019-10-26 11:38:11
    // Modifier:     
    // Update Time         :    2019-10-26 11:38:11
    //======================================================================
    // Copyright © DGCZ  2019 . All rights reserved.
    // =====================================================================
    #endregion
    public class GetProductsCostDetailInfo
    {
       
        public static DataTable getProductsCostDetailInfo(string productName) {
            XmlFlexflow.configFilePath = Application.StartupPath + "\\flexflow.cfg";
            OracleHelper oH = OracleHelper.getBaseDao();
            DataTable dt = null;
            //先进行分析。
            string procName = "pkg_analyze_products_cost.analyze_P_C";
            OracleParameter param_PN = new OracleParameter("v_product_name", OracleDbType.NVarchar2, ParameterDirection.Input);
            param_PN.Size = 20;
            param_PN.Value = productName;
            OracleParameter[] parameters = new OracleParameter[1] { param_PN };
            oH.ExecuteNonQuery(procName, parameters);

            procName = "Show_Products_Cost.get_P_C_Summary_To_Export";
            OracleParameter paramCursor = new OracleParameter("v_Cur", OracleDbType.RefCursor, 20);
            OracleParameter paramPN = new OracleParameter("v_PN", OracleDbType.NVarchar2, 20);
            paramCursor.Direction = ParameterDirection.ReturnValue;
            paramPN.Direction = ParameterDirection.Input;
            paramPN.Value = productName;
            parameters = new OracleParameter[2] { paramCursor, paramPN };
            dt = oH.getDT(procName, parameters);
            return dt;
        }
    }
}
