using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eProjectsOnRealm.Functions;

public  class UserStatusConverter : IValueConverter
{
    public object Convert(object value, Type targetType, object parameter,CultureInfo culture) {

        if(value == null) return null;

        string status = (string)value;

        switch(status)
        {
            case "Online":
                return Color.FromArgb("#8fa3ad");
            case "Offline":
                return Color.FromArgb("#e57373");
        }
        return null;
    }

    public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
    {
        throw new NotImplementedException();
    }

}

public class TaskStatusConverter : IValueConverter
{
    public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
    {

        if (value == null) return null;

        string status = (string)value;

        switch (status)
        {
            case "Active":
                return Color.FromArgb("#8AB850");
            case "Planned":
                return Color.FromArgb("#e57373");
            case "Testing":
                return Color.FromArgb("#9d1716");
            case "Completed":
                return Color.FromArgb("#11558b");
        }
        return null;
    }

    public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
    {
        throw new NotImplementedException();
    }

}

