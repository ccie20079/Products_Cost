using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Office.Interop.Excel;
using System.Data;
using System.Windows.Forms;
using System.ComponentModel;

namespace Excel
{
    public class ExcelToPrint
    {
        /// <summary>
        /// 这个方法，用来确定模板。
        /// </summary>
        /// <param name="wS"></param>
        /// <param name="dt"></param>
        public static void defineExcelTemplate(Worksheet wS,List<TemplateProperty> templatePropertyList,ProgressBar pb) {
            //以下依据DataTable 来  确定 模板内容
            Usual_Excel_Helper uEHelper = new Usual_Excel_Helper(wS);
            pb.Visible = true;
            pb.Maximum = templatePropertyList.Count;
            pb.Value = 0;
            //打开该文档.
            for (int i = 0; i <= templatePropertyList.Count - 1; i++)
            {
                string property_name = templatePropertyList[i].Property_name;
                decimal visible = templatePropertyList[i].Visible;
                bool isVisible = (1 == visible) ? true : false;
                if (isVisible)
                {
                    pb.Value++;
                    continue;
                }
                //获取该属性对应的行号.
                int[] rowIndexArray = uEHelper.getRowIndexArrayWhichContainContent(property_name);
                for (int j = 0; j <= rowIndexArray.Length - 1; j++)
                {
                    uEHelper.delTheSpecificRowShiftToUp(rowIndexArray[j] - j);
                }
                pb.Value++;
            }
            pb.Visible = false;
            pb.Maximum = 0;
            pb.Value = 0;
        }
        /// <summary>
        /// 这个方法，用来生成数据。
        /// </summary>
        /// <param name="wS"></param>
        /// <param name="dtToPrint"></param>
        public static void generate_data_to_print(Worksheet wS,System.Data.DataTable dtToPrint,ProgressBar pb)
        {
            Usual_Excel_Helper uEHelper = new Usual_Excel_Helper(wS);
            Range theAllRange = wS.UsedRange;
            pb.Visible = true;
            pb.Maximum  = dtToPrint.Rows.Count* dtToPrint.Columns.Count;
            pb.Value = 0;
            //1.模板修正操作.
            //依据列字段名来确定
            //2.赋值操作.
            for (int i = 0; i <= dtToPrint.Rows.Count - 1; i++)
            {
                //1.替换 Company
                //2.先找出uEHelper中有没有Companyi
                for (int j = 0; j <= dtToPrint.Columns.Count - 1; j++)
                {
                    string columnName = dtToPrint.Columns[j].ColumnName;
                    string searchStr = "$" + columnName + (i + 1).ToString() + "$";
                    uEHelper.replace_Str_in_the_range(theAllRange, searchStr, dtToPrint.Rows[i][columnName].ToString());
                    pb.Value++;
                }
            }
            pb.Visible = false;
            pb.Maximum = 0;
            pb.Value = 0;
        }
    }
}
