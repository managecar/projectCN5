﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary1
{
    class BrandDTO
    {
        private string BrandID, BrandName, Email, Address, Phone, Note;
        private DateTime DateContact;

        public string BrandID1 { get => BrandID; set => BrandID = value; }
        public string BrandName1 { get => BrandName; set => BrandName = value; }
        public string Email1 { get => Email; set => Email = value; }
        public string Address1 { get => Address; set => Address = value; }
        public string Phone1 { get => Phone; set => Phone = value; }
        public string Note1 { get => Note; set => Note = value; }
        public DateTime DateContact1 { get => DateContact; set => DateContact = value; }
    }
}
