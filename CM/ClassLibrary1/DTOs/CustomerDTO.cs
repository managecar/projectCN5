using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary1
{
    class CustomerDTO
    {
        private int ID;
        private string Fullname, Phone, Address;
        private DateTime Brithday;

        public int ID1 { get => ID; set => ID = value; }
        public string Fullname1 { get => Fullname; set => Fullname = value; }
        public string Phone1 { get => Phone; set => Phone = value; }
        public string Address1 { get => Address; set => Address = value; }
        public DateTime Brithday1 { get => Brithday; set => Brithday = value; }
    }
}
