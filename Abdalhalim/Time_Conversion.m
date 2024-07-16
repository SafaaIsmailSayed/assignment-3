clc
clear
time = input("please, enter the time","s");
flag_am = 0;
flag_pm = 0;
first_colon = find(time == ':',1)-1;
hours = 0;
%% am || pm
hours = str2double(time(1:first_colon));
if (hours < 12)
    flag_am = 1;
elseif (hours >= 12)
    flag_pm = 1;
end
%% Code
if(flag_am)
    if(hours == 0)
        time_conversion = ['12' time(first_colon+1:length(time)) ' am'];
    else
        time_conversion = [num2str(hours) time(first_colon+1:length(time)) ' am'];
    end
elseif (flag_pm)
    if(hours == 12)
        time_conversion = ['12' time(first_colon+1:length(time)) ' pm'];
    elseif(hours >=24)
        time_conversion = ["Invalid time"];
    else
        hours = hours-12;
        time_conversion = [num2str(hours) time(first_colon+1:length(time)) ' pm'];
    end
end
time_conversion