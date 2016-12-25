using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HateorLove
{
    public class Country
    {
        private int topSize = 5;
        private string name = "";
        private Person[] love = new Person [5];
        private Person[] hate = new Person [5];

        public Country (String name, Person [] love, Person[] hate)
        {
            this.name = name;

            for(int i = 0; i < topSize; i++) {
                this.love[i] = love[i];
                this.hate[i] = hate[i];
            }
        }

        public string toMyString()
        {
            string result = "['" + name + "', '";

            string lovelist = "";
            string hatelist = "";

            for (int i = 0; i < topSize; i++)
            {
                lovelist = lovelist + love[i].getName();
                hatelist = hatelist + "\n" + hate[i].getName();
            }

            result = result + lovelist + "']";
            //result = result + "'" + lovelist + "', " + "'" + hatelist + "']";

            return result;
        }
    }
}