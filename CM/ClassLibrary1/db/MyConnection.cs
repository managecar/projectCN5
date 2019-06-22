using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;

namespace ClassLibrary1
{
    public class MyConnection
    {
        public static string getConnection()
        {
            return ConfigurationManager.ConnectionStrings["CarDB"].ConnectionString;
        }
    }
}
