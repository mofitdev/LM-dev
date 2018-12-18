using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LMWebApp.cs
{
    public class LMException : Exception
    {
        public LMException() { }
        public LMException(string message) : base(message) { }
        public LMException(string message, Exception inner) : base(message, inner) { }
    }
}