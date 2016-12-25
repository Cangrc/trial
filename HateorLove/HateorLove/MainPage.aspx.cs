using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.ComponentModel;
using System.IO;

namespace HateorLove
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected string aaa = "['Country', 'LoveList'],\n";

        //protected string aaa = "['Country', 'LoveList', 'HateList'],";

        protected void Page_Load(object sender, EventArgs e)
        {
            Person [] plist = new Person [5];

            plist[0] = new Person("OB", 15);
            plist[1] = new Person("B", 5);
            plist[2] = new Person("AI", 10);
            plist[3] = new Person("LDR", 1);
            plist[4] = new Person("DA", 4);

            Country c = new Country("Germany", plist, plist );

            Console.WriteLine(c.toMyString());
            Console.WriteLine(aaa);
            aaa = aaa + c.toMyString();
            Console.WriteLine(aaa);

            aaa = "['Country', 'Popularity'], ['Germany', 200], ['United States', 300], ['Brazil', 400], ['Canada', 500], ['France', 600], ['RU', 700]";


    }




        

    }
}