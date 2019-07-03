using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary1.DTOs
{
    public class CarDTO
    {
        private string CarID, Model, Price, Description, BrandID;
        private int ImportID;
        private bool isSold;
        private DateTime Date;

        public string CarID1 { get => CarID; set => CarID = value; }
        public string Model1 { get => Model; set => Model = value; }
        public string Price1 { get => Price; set => Price = value; }
        public string Description1 { get => Description; set => Description = value; }
        public string BrandID1 { get => BrandID; set => BrandID = value; }
        public int ImportID1 { get => ImportID; set => ImportID = value; }
        public bool IsSold { get => isSold; set => isSold = value; }
        public DateTime Date1 { get => Date; set => Date = value; }
    }
}
