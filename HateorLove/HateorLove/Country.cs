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
                this.love[i] = new Person( love[i].getName(), love[i].getScore());
                this.hate[i] = new Person(hate[i].getName(), hate[i].getScore());
            }
        }

        public string getName()
        {
            return name;
        }

        public Person [] getLove(Person[] love)
        {
            return love;
        }

        public Person[] getHate(Person[] hate)
        {
            return hate;
        }

        public void setName(String name)
        {
            this.name = name;
        }

        public void setLove(Person[] love)
        {
            for (int i = 0; i < topSize; i++)
            {
                this.love[i].setName(love[i].getName());
                this.love[i].setScore(love[i].getScore());
            }
        }

        public void setHate(Person[] hate)
        {
            for (int i = 0; i < topSize; i++)
            {
                this.hate[i].setName(hate[i].getName());
                this.hate[i].setScore(hate[i].getScore());
            }
        }

        public string [] toLoveNameArray()
        {
            string [] name = new string [5];

            for (int i = 0; i < topSize; i++)
                name[i] = love[i].getName();
            
            return name;
        }

        public string[] toHateNameArray()
        {
            string[] name = new string[5];

            for (int i = 0; i < topSize; i++)
                name[i] = hate[i].getName();

            return name;
        }

        /* buna sanırım gerek kalmadı - HTML table formatı çizildi
         * public string toMyString()
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
        }*/
    }
}