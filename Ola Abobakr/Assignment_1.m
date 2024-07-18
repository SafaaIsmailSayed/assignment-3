clc
clear
%% Time Conversion Code
time=input("Please, Enter the time ","s");
%%Some IMP Variables
flag_am=0;
flag_pm=0;
index_the_colon=find(time==':',1)-1;
%% AM or PM
 hours=str2double(time(1:index_the_colon));
if(hours<12)
     flag_am=1;
elseif(hours>=12)
     flag_pm=1;
end
%% Main Code
if(flag_am)
    if(hours==0)
        time_conversion=['12' time(index_the_colon +1 :length(time)) ' am'];   
    else
        time_conversion=[num2str(hours) time(index_the_colon +1 :length(time)) ' am'];
    end
elseif(flag_pm)
    if(hours==12)
        time_conversion=[num2str(hours) time(index_the_colon+1:length(time)) ' pm'];
    elseif(hours>=24)
        time_conversion=['Invalid Input'];
    else
        hours=hours-12;
        time_conversion=[num2str(hours) time(index_the_colon+1:length(time)) ' pm'];
    end
end
disp(time_conversion)
    
    