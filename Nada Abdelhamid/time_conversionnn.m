%% time conversion
clc
clear
time = input("please enter the time" , "s");
%% important variables
index_1st_colon = find( time == ':' , 1) - 1;
flag_am = 0;
flag_pm = 0;

%% main code
for i = 1: length (time)
        hours = str2double(time(1:index_1st_colon));
        if hours == 12
            answer = time + "pm";
            disp(answer);
        end
        if hours == 00
            hours = str2double(time(1:index_1st_colon))+12;
            time_conversion = [num2str(hours),  time(index_1st_colon+1 : i)];
            answer = time_conversion + "am"
            disp(answer)
        end
        if hours < 12  %% for converting to am
           answer = time + "am";
           disp(answer)
        elseif hours > 12 %% for converting to pm
            hours = str2double(time(1:index_1st_colon))-12;
            time_conversion = [num2str(hours),  time(index_1st_colon+1 : i)];
            answer = time_conversion + "pm";
            disp(answer)
        end
end 





