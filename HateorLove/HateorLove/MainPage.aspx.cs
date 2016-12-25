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
        private string Germany = "N/A";
        private string Germany = "N/A";

        protected void Page_Load(object sender, EventArgs e)
        {
            Country c = new Country();

            var tuple5 = Tuple.Create("New York", 1990, 7322564, 2000, 8008278);

        }

        protected string MyProperty
        {     
            get
            {
                return "['Country', 'LoveList', 'HateList']," +
                        Germany +
                        "['United States', 300]," +
                        "['Brazil', 400]," +
                        "['Canada', 500]," +
                        "['France', 600]," +
                        "['RU', 700]";
            }
            set
            {
                 Germany = "\"['Germany', 200],\"";
                 US
            }


        }

    }
}