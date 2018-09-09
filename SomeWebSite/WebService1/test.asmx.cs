
using System.Web.Services; 

namespace Test
{
    /// <summary>
    /// Summary description for Mac
    /// </summary>
    [WebService(Namespace = "http://localhost:52158/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class TestWebService : System.Web.Services.WebService
    {

        public TestWebService()
        {
        }

        Common.Error theError = new Common.Error();


        [WebMethod]
        public System.String CheckTest()
        {
            return "Running";
        }

        [WebMethod]
        public System.Boolean CheckAccountStatus(System.String computerId)
        {
            return true;
        }
    }
}
