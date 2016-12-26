using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HateorLove
{
    public class Person
    {
        private string name = "";
        private int score = 0;

        public Person() { }

        public Person(string name, int score)
        {
            this.name = name;
            this.score = score;
        }

        public string getName()
        {
            return name;
        }

        public int getScore()
        {
            return score;
        }

        public void setName(String name)
        {
            this.name = name;
        }

        public void setScore(int score)
        {
            this.score = score;
        }
    }
}