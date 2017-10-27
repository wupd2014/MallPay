using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class ActionResult
    {
        public int Error { get; set; }
        public string Message { get; set; }
        public object Data { get; set; }

        private ActionResult(int error)
        {
            Error = error;
        }

        public static ActionResult Success(object data)
        {
            ActionResult result = new ActionResult(0);
            result.Data = data;
            return result;
        }

        public static ActionResult Failed(string message)
        {
            ActionResult result = new ActionResult(1);
            result.Message = message;
            return result;
        }
    }
}
