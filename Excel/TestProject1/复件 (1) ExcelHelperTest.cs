using excel;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Data;
using System.Collections.Generic;

namespace TestProject1
{
    
    
    /// <summary>
    ///这是 ExcelHelperTest 的测试类，旨在
    ///包含所有 ExcelHelperTest 单元测试
    ///</summary>
    [TestClass()]
    public class ExcelHelperTest
    {


        private TestContext testContextInstance;

        /// <summary>
        ///获取或设置测试上下文，上下文提供
        ///有关当前测试运行及其功能的信息。
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        #region 附加测试属性
        // 
        //编写测试时，还可使用以下属性:
        //
        //使用 ClassInitialize 在运行类中的第一个测试前先运行代码
        //[ClassInitialize()]
        //public static void MyClassInitialize(TestContext testContext)
        //{
        //}
        //
        //使用 ClassCleanup 在运行完类中的所有测试后再运行代码
        //[ClassCleanup()]
        //public static void MyClassCleanup()
        //{
        //}
        //
        //使用 TestInitialize 在运行每个测试前先运行代码
        //[TestInitialize()]
        //public void MyTestInitialize()
        //{
        //}
        //
        //使用 TestCleanup 在运行完每个测试后运行代码
        //[TestCleanup()]
        //public void MyTestCleanup()
        //{
        //}
        //
        #endregion


        /// <summary>
        ///saveListToExcel 的测试
        ///</summary>
        [TestMethod()]
        public void saveListToExcelTest()
        {
            string filePath = string.Empty; // TODO: 初始化为适当的值
            List<string> list = null; // TODO: 初始化为适当的值
            string expected = string.Empty; // TODO: 初始化为适当的值
            string actual;
            actual = ExcelHelper.saveListToExcel(filePath, list);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("验证此测试方法的正确性。");
        }

        /// <summary>
        ///saveDtToExcel 的测试
        ///</summary>
        [TestMethod()]
        public void saveDtToExcelTest()
        {
            DataTable dt = null; // TODO: 初始化为适当的值
            string filePath = string.Empty; // TODO: 初始化为适当的值
            bool expected = false; // TODO: 初始化为适当的值
            bool actual;
            actual = ExcelHelper.saveDtToExcel(dt, filePath);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("验证此测试方法的正确性。");
        }

        /// <summary>
        ///SaveAsXls 的测试
        ///</summary>
        [TestMethod()]
        [DeploymentItem("Excel.dll")]
        public void SaveAsXlsTest()
        {
            DataTable dt = null; // TODO: 初始化为适当的值
            string filePath = string.Empty; // TODO: 初始化为适当的值
            ExcelHelper_Accessor.SaveAsXls(dt, filePath);
            Assert.Inconclusive("无法验证不返回值的方法。");
        }

        /// <summary>
        ///getDsFromExcel 的测试
        ///</summary>
        [TestMethod()]
        public void getDsFromExcelTest()
        {
            string filePath = string.Empty; // TODO: 初始化为适当的值
            string sql = string.Empty; // TODO: 初始化为适当的值
            DataSet expected = null; // TODO: 初始化为适当的值
            DataSet actual;
            actual = ExcelHelper.getDsFromExcel(filePath, sql);
            Assert.AreEqual(expected, actual);
            Assert.Inconclusive("验证此测试方法的正确性。");
        }

        /// <summary>
        ///ExcelHelper 构造函数 的测试
        ///</summary>
        [TestMethod()]
        public void ExcelHelperConstructorTest()
        {
            ExcelHelper target = new ExcelHelper();
            Assert.Inconclusive("TODO: 实现用来验证目标的代码");
        }
    }
}
