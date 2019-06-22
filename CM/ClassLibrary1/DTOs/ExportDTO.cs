using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary1
{
    class ExportDTO
    {
        private int ExportID, ID;
        private string Note, IDCar, Username;
        private DateTime Date;
        private double Price;

        public int ExportID1 { get => ExportID; set => ExportID = value; }
        public int ID1 { get => ID; set => ID = value; }
        public DateTime Date1 { get => Date; set => Date = value; }
        public double Price1 { get => Price; set => Price = value; }
        public string Note1 { get => Note; set => Note = value; }
        public string IDCar1 { get => IDCar; set => IDCar = value; }
        public string Username1 { get => Username; set => Username = value; }
    }
}
