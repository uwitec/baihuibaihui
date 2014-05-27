using System;
using System.Collections.Generic;
using System.Text;
using System.Text.RegularExpressions;

 
    public class StingsCheck
    {
        public bool CheckEmail(string str)
        {
            Regex r = new Regex("^\\s*([A-Za-z0-9_-]+(\\.\\w+)*@(\\w+\\.)+\\w{2,5})\\s*$");
            if (r.IsMatch(str))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
 
