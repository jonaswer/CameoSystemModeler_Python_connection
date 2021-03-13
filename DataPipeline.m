function distance = PythonParse(time, speed)
 
    cd '<path>'

    commandStr = ['C:\ProgramData\Anaconda3\python.exe main.py ',num2str(time),' ',num2str(speed)]
    [status, commandOut] = system(commandStr);
    
    command = 'cd';
    [status,cmdout] = dos(command)
    
    if status==0
    fprintf('worked');
    else
        disp("failed")
    end
    
    distance = str2num(commandOut);
 
out = [distance];

end
