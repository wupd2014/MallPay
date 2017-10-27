using Castle.DynamicProxy;
using log4net;
using Model;
using Newtonsoft.Json;
using System;
using System.Net.Http;
using System.Text;
using System.Web.Http.Results;

namespace App.App_Start
{
    public class ExceptionInterceptor : IInterceptor
    {
        private static Encoding GB2312 = Encoding.GetEncoding("GB2312");
        private static ILog Logger = LogManager.GetLogger("DatabaseLogger");

        public void Intercept(IInvocation invocation)
        {
            try
            {
                invocation.Proceed();
            }
            catch (Exception e)
            {
                // Writes log
                string paras = invocation.Arguments[0].ToString();
                Logger.Error(Log.New(e.Message, e.StackTrace, paras));

                // Returns error result
                ActionResult result = ActionResult.Failed(e.Message);
                invocation.ReturnValue = GetErrorResult(result);
            }
        }

        private JsonResult<ActionResult> GetErrorResult(ActionResult result)
        {
            JsonSerializerSettings settings = new JsonSerializerSettings()
            {
                Formatting = Formatting.Indented,
                ReferenceLoopHandling = ReferenceLoopHandling.Ignore
            };
            return new JsonResult<ActionResult>(result, settings, GB2312, new HttpRequestMessage());
        }
    }
}
