using BlogDataLibrary.Database; 
using System;
using System.Collections.Generic;

namespace BlogDataLibrary.Data
{
    public class SqlData
    {
        private readonly ISqlDataAccess _db;
        private const string connectionStringName = "SqlDB";

        public SqlData(ISqlDataAccess db)
        {
            _db = db;
        }
    }
}