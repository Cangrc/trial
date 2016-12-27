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

        public Person [] getLove()
        {
            return this.love;
        }

        public Person[] getHate()
        {
            return this.hate;
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

        public string toLoveString()
        {
            string result = "['" ;

            string lovelist = "";
            
            for (int i = 0; i < topSize; i++)
            {
                lovelist = lovelist + love[i].getName() + "', '";
                if (i == topSize - 1)
                    lovelist = lovelist + love[i].getName() + "'] ";
            }

            result = result + lovelist;

            return result;
        }

        public string toHateString()
        {
            string result = "['";

            string hatelist = "";

            for (int i = 0; i < topSize; i++)
            {
                hatelist = hatelist + hate[i].getName() + "', '";
                if (i == topSize - 1)
                    hatelist = hatelist + hate[i].getName() + "'] ";
            }

            result = result + hatelist;

            return result;
        }

        public string toLoveScores()
        {
            string result = "[";

            string loveScores = "";

            for (int i = 0; i < topSize; i++)
            {
                loveScores = loveScores + love[i].getScore() + ", ";
                if (i == topSize - 1)
                    loveScores = loveScores + love[i].getScore() + "] ";
            }

            result = result + loveScores;

            return result;
        }

        public string toHateScores()
        {
            string result = "[";

            string hateScores = "";

            for (int i = 0; i < topSize; i++)
            {
                hateScores = hateScores + hate[i].getScore() + ", ";
                if (i == topSize - 1)
                    hateScores = hateScores + hate[i].getScore() + "] ";
            }

            result = result + hateScores;

            return result;
        }
    }
}