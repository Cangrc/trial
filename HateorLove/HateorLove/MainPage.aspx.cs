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
        //protected string [] loveNames = new string[5];
        //protected string [] hateNames = new string[5];
        protected string loveNames = "";
        protected string hateNames = "";
        protected string loveScores = "";
        protected string hateScores = "";
        protected int loveScoreSum = 0;
        protected int hateScoreSum = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            Person[] loveList = new Person[5];

            loveList[0] = new Person("Naci A.", 15);
            loveList[1] = new Person("Naci B.", 5);
            loveList[2] = new Person("Naci C.", 10);
            loveList[3] = new Person("Naci D.", 1);
            loveList[4] = new Person("Naci E.", 4);

            Person [] hateList = new Person [5];

            hateList[0] = new Person("Can A.", 15);
            hateList[1] = new Person("Can B:", 5);
            hateList[2] = new Person("Can C.", 10);
            hateList[3] = new Person("Can D.", 1);
            hateList[4] = new Person("Can E.", 4);
            
            Country Greece = new Country("Greece", loveList, hateList);

            loveNames = Greece.toLoveString();
            hateNames = Greece.toHateString();
            loveScores = Greece.toLoveScores();
            hateScores = Greece.toHateScores();
            loveScoreSum = scoreSum(Greece.getLove());
            hateScoreSum = scoreSum(Greece.getHate());

        }

        public int scoreSum(Person [] plist)
        {
            int sum = 0;

            for(int i = 0; i < 5; i++)
            {
                sum += plist[i].getScore();
            }
            
            return sum;
        }

        protected void loveButton_Click(Object sender, EventArgs e)
        {
            lovePlus.Enabled = false;
            


        }

        protected void hateButton_Click(Object sender, EventArgs e)
        {
            hatePlus.Enabled = false;
            

        }






    }
}