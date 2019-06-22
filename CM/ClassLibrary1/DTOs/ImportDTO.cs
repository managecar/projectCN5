using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary1
{
    class ImportDTO
    {
        private int ImportID, Quantity;
        private DateTime Date;
        private string Note;

        public int ImportID1 { get => ImportID; set => ImportID = value; }
        public int Quantity1 { get => Quantity; set => Quantity = value; }
        public DateTime Date1 { get => Date; set => Date = value; }
        public string Note1 { get => Note; set => Note = value; }
    }
}
