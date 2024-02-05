using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eProjectsOnRealm.Functions;

/// <summary>
/// Calculate the number of business days between 2 dataes
/// </summary>
/// <param name="firstDay">Start Date</param>
/// <param name="lastDay">End Date</param>
/// <param name="bankHolidays"> Option Array of Bank Holidays or days to be omitted from total days </param>
/// <returns>Int total number of days</returns>
/// <exception cref="ArgumentException"></exception>
public static class Calculations
{
    public static int TotalBusinessDays(DateTime firstDay, DateTime lastDay, params DateTime[] bankHolidays)
    {
        firstDay = firstDay.Date;
        lastDay = lastDay.Date;
        if (firstDay > lastDay)
        {
            throw new ArgumentException($"Incorrect last day {lastDay}");

        }

        TimeSpan span = lastDay - firstDay;
        int businessDays = span.Days + 1;
        int fullWeekCount = businessDays / 7;
        if (businessDays > fullWeekCount * 7)
        {
            int firstDayOfWeek = (int)firstDay.DayOfWeek;
            int lastDayOfWeek = (int)lastDay.DayOfWeek;
            if (lastDayOfWeek < firstDayOfWeek)
                lastDayOfWeek += 7;
            if (firstDayOfWeek <= 6)
            {
                if (lastDayOfWeek >= 7)
                    businessDays -= 2;
                else if (lastDayOfWeek >= 6)
                    businessDays -= 1;
            }
            else if (firstDayOfWeek <= 7 && lastDayOfWeek >= 7)
                businessDays -= 1;
        }
        foreach (DateTime bankHoliday in bankHolidays)
        {
            DateTime bh = bankHoliday.Date;
            if (firstDay <= bh && bh <= lastDay)
                --businessDays;
        }
        return businessDays;
    }

    public static int TotalBusinessDays(DateTime firstDay, DateTime lastDay)
    {
        firstDay = firstDay.Date;
        lastDay = lastDay.Date;
        if (firstDay > lastDay)
        {
            throw new ArgumentException($"Incorrect last day {lastDay}");

        }

        TimeSpan span = lastDay - firstDay;
        int businessDays = span.Days + 1;
        int fullWeekCount = businessDays / 7;
        if (businessDays > fullWeekCount * 7)
        {
            int firstDayOfWeek = (int)firstDay.DayOfWeek;
            int lastDayOfWeek = (int)lastDay.DayOfWeek;
            if (lastDayOfWeek < firstDayOfWeek)
                lastDayOfWeek += 7;
            if (firstDayOfWeek <= 6)
            {
                if (lastDayOfWeek >= 7)
                    businessDays -= 2;
                else if (lastDayOfWeek >= 6)
                    businessDays -= 1;
            }
            else if (firstDayOfWeek <= 7 && lastDayOfWeek >= 7)
                businessDays -= 1;
        }
      
        return businessDays;
    }

    /// <summary>
    /// Calculate the total project hours
    /// </summary>
    /// <param name="totalBusinessDays">Number of project days</param>
    /// <param name="dailyHours">Daily Hours for project</param>
    /// <returns>Decimal total hours</returns>
    public static long TotalProjectHours(int totalBusinessDays, int dailyHours)
    {
        return dailyHours * totalBusinessDays;
    }

}
