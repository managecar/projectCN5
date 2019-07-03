using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary1.DTOs
{
    public class AccountDTO
    {
        private string Username, Password, Fullname, Address, Phone, Email, Role;
        private DateTime Birthday;

        public string Username1 { get => Username; set => Username = value; }
        public string Password1 { get => Password; set => Password = value; }
        public string Fullname1 { get => Fullname; set => Fullname = value; }
        public string Address1 { get => Address; set => Address = value; }
        public string Phone1 { get => Phone; set => Phone = value; }
        public string Email1 { get => Email; set => Email = value; }
        public string Role1 { get => Role; set => Role = value; }
        public DateTime Birthday1 { get => Birthday; set => Birthday = value; }
    }
}
