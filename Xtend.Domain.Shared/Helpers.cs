using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;

namespace Xtend.Domain.Shared
{
    public static class Helpers
    {
        public static DateTime GetDate()
        {
            return TimeZoneInfo.ConvertTime(DateTime.Now, TimeZoneInfo.FindSystemTimeZoneById("Eastern Standard Time"));
        }

        public static SqlConnection GetConnection()
        {
            return new SqlConnection(ConfigurationManager.ConnectionStrings["XtendV1ConnectionString"].ConnectionString);
        }

        public static T ParseEnum<T>(string value)
        {
            return (T)Enum.Parse(typeof(T), value, true);
        }

        public static void Each<T>(this IEnumerable<T> ie, Action<T, int> action)
        {
            var i = 0;
            foreach (var e in ie) action(e, i++);
        }

    }

}
