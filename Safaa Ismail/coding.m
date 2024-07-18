clc
clear
%%time = '05:57:22 am';
time = input("Please, Enter the time","s");
flag_pm = 0;
flag_am = 0;
index_pm = 0;
index_am = 0;
index_1st_colon = find(time == ':', 1) - 1;
hours = 0;
for i = 1 : length(time) 
    if (time(i) == 'A' || time(i) == 'a') %% am
        flag_am = 1; 
        index_am = i - 1;
    elseif (time(i) == 'P' || time(i) == 'p') %% pm
        flag_pm = 1;
        index_pm = i - 1;
    end
end 
if(flag_am)%% to convert am time
    if(time(1:index_1st_colon) == '12') %% If hour == 12 
        time_conversion = ['00' time(index_1st_colon + 1:index_am)];
    else    
        time_conversion = time(1:index_am); 
    end
elseif(flag_pm) %% to convert pm
    if(time(1:index_1st_colon) == '12')% If hour == 12 
        time_conversion = time(1:index_pm);
    else
        hours = str2double(time(1:index_1st_colon)) + 12 ;
        time_conversion = [num2str(hours) time(index_1st_colon + 1:index_pm)];
    end
end    
