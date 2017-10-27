using PetaPoco;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class BaseDAL
    {
        protected Database db
        {
            get
            {
                return new Database("Schedules");
            }
        }
    }
}
