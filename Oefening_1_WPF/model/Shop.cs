using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;


namespace Oefening_1_WPF.model
{
     public class Shop : BaseModel
    {
        private string _name;

        public string Name
        {
            get { return _name; }
            set {
                _name = value;
                OnPropertyChanged(_name);
                 }
        }


        private string _address;

        public string Adress
        {
            get { return _address; }
            set {
                _address = value;
                OnPropertyChanged(_address);
                }
        }


        private string _zipcode;

        public string Zipcode
        {
            get { return _zipcode; }
            set { 
                _zipcode = value;
                OnPropertyChanged(_zipcode);
                }
        }


        private string _city;

        public string City
        {
            get { return _city; }
            set { 
                _city = value;
                OnPropertyChanged(_city);
                }
        }

        private ObservableCollection<Shop> _shops;

        public ObservableCollection<Shop> Shops
        {
            get {
                if(_shops == null)
                {
                    //xml werd nog niet ingelezen
                    _shops = GetShops();
                }


                return _shops;           
                }
            set { _shops = value; }
        }
        



     

         public ObservableCollection<Shop> GetShops ()
        {
            ObservableCollection<Shop> _shops = new ObservableCollection<Shop>();

            XmlDocument doc = new XmlDocument();
            doc.Load(AppDomain.CurrentDomain.BaseDirectory + "Shops.xml");

            XmlNodeList elemlist = doc.GetElementsByTagName("company");

             for(int i =0; i<elemlist.Count ; i++)
             {
                 XmlNode elem = elemlist[i];

                 Shop shop = new Shop()
                 {
                     Name = elem.ChildNodes[1].InnerText,
                     Adress = elem.ChildNodes[2].InnerText,
                     Zipcode = elem.ChildNodes[5].InnerText,
                     City = elem.ChildNodes[6].InnerText
                 };

                 _shops.Add(shop);
             }
             return _shops;
        }

         public override string ToString()
         {
             return Name + " " +  Adress + " " +  Zipcode + " " + City;
         }

         public void PrintShops()
         {
             foreach(Shop sh in _shops)
             {
                 Console.WriteLine(sh);
             }
         }
        
    }
}
