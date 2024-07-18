%% _*Time Conversion*_

clc
clear
time= input ("Please, enter a specific time: ","s");
%% Variables

index_colon= find(time== ':' , 1)-1;
hours=0;
%% Main Code

if (str2double(time(1:index_colon))< 12)
    if (str2double(time(index_colon))==0)
        time_after_conversion= ['12' time(index_colon+1:length(time)) ' ' 'AM']
    else
        time_after_conversion= [time ' ' 'AM']
    end
elseif (str2double(time(1:index_colon))==12)
    time_after_conversion= [time ' ' 'PM']
else
    hours=str2double(time(1:index_colon))-12;
    time_after_conversion= [num2str(hours) time(index_colon+1:length(time)) ' ' 'PM']
end