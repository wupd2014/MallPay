using PetaPoco;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    [PrimaryKey("Code")]
    [TableName("Logs")]
    public class Log
    {
        public Guid Code { get; set; }
        public string Category { get; set; }
        public string Message { get; set; }
        public string Exception { get; set; }
        public object Params { get; set; }
        public string FileName { get; set; }
        public int LineNumber { get; set; }
        public DateTime CreateTime { get; set; }

        public Log()
        {
            CreateTime = DateTime.Now;
        }

        public static Log New(string message, string exception = null, object @params = null, string category = "WebApi")
        {
            Log log = new Log();
            log.Message = message;
            log.Exception = exception;
            log.Params = @params;
            log.Category = category;
            return log;
        }
    }
}
