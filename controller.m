function [function_output_1, function_output_2] = controller(function_input_1, function_input_2)
   
    commandStr = ['pushd C:\ProgramData\Anaconda3\Scripts & activate.bat <name_of_virtual_environment> & pushd "path_to_python_file" & python main.py ' + function_input_1 + " " + function_input_2]
        [status, commandOut] = system(commandStr);
        if status~=0
                disp("failed to call python script")
        else
			    disp("python script called")
				    
			    %read json input from python
			    fname = 'database.json'; 
			    fid = fopen(fname); 
			    raw = fread(fid,inf); 
			    str = char(raw'); 
			    fclose(fid); 
			    val = jsondecode(str);
			    val = struct2cell(val);

			    python_output_1 = val(1);
			    python_output_1 = python_output_1(1);
			    python_output_1 = string(python_output_1);
			    function_output_1 = str2double(python_output_1);
			    %disp(function_output_1);

			    python_output_2 = val(2);
			    python_output_2 = python_output_2(1);
			    python_output_2 = string(python_output_2);
			    python_output_2 = str2double(python_output_2);
			    %disp(function_output_2);

		    out = [function_output_1, function_output_2];

	    end
    end
