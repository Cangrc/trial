using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HateorLove
{
    public class Country
    {
        private string name = "";
        private String[] love = new String [5];
        private String[] hate = new String [5];

        public Country (String name, Person [] love, Person[] hate)
        {
            this.name = name;

            for(int i = 0; i < 5; i++) {
                this.love[i] = love[i];
                this.hate[i] = hate[i];
            }
        }

        public string toString()
        {

            return "";
        }
    }
}