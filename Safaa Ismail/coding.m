clc
clear
%%time = '05:57:22 am';
time = input("Please, Enter the time","s");
%% variables
index_1st_colon = find(time == ':', 1) - 1;
flag_am=0;
flag_pm=0;
hours = 0;
%% Convert to 24-hour format
hours = str2double(time(1:index_1st_colon));
if(hours < 12) && (hours >= 0)
flag_am = 1;
elseif (hours < 24) && (hours >= 12)
flag_pm = 1;
end
%% The main code
if(hours >= 24)
        time_conversion = 'Invalid Input';
  if (hours >= 12) %% to convert pm
     period = 'pm';
  else (hours > 12);
      hours = hours - 12;
  end
elseif (hours < 24) && (hours >= 12)
      period = 'am'; %% to convert am
   if hours == 0
      hours = 12;
   end
end

