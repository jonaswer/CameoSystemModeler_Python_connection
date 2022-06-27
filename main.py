import sys
import json

#matlab variables
function_input_1 = str(sys.argv[1])
function_input_2 = str(sys.argv[2])

#manipulation 
python_output_1 = float(function_input_1) * 2
python_output_2 = float(function_input_2) * 2
   
#structure in dict
data = {}
data['first_value'] = python_output_1
data['second_value'] = python_output_2
 
with open('database.json', 'w') as f:
       json.dump(data ,f, ensure_ascii=False)
