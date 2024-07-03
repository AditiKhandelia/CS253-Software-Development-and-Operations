#!/bin/bash
<<comm
	The following lines of code are used to check if the number of arguments passed to the script is 2.
	If the number of arguments is not 2, then a usage message is displayed and the script is exited.
comm
num_filenames="$#"
if [[ num_filenames -ne 2 ]];
then
	echo "Two filenames are required."
	echo "Usage: $0 <filename_1> <filename_2>"
	exit
fi

<<comm
	The following lines of code are used to check if the first argument passed to the script is a file.
	If the file does not exist in the current directory, then an error message is displayed and the script is exited.
comm
filename_1=$1
if ! test -f ./$filename_1; then
	echo "Error: File" $1 "does not exist in $PWD"
	exit
fi

<<comm 
	Error handling for empty input file.
comm
if [ ! -s "$1" ]; then
	echo "Error: File" $1 "is empty"
	exit
fi

<<comm
	The following lines of code are used to print the unique cities in the input file in alphabetical order.
	The first echo command uses > to create a new file, and overwrite the existing file, if it exists.
	The rest of the echo commands uses >> to append the output to the existing file.
	awk is used to extract the city names from the input file and store them in an associative array.
	-F ', ' is used to specify the field separator as ', '.
	NR>1 is used to skip the first line of the input file which contains the column names.
	{city_name[$3]++} is used to store the city names in the associative array city_name.
	END is used to execute the block of code after all the lines in the input file have been processed.
	"$1" is used to specify the input file.
	sort is used to sort the city names in alphabetical order.
	"$2" is used to specify the output file.
comm
echo "------------------" > "$2"
echo "Unique cities in the given data file: " >> "$2"
awk -F ', ' 'NR>1 { city_name[$3]++ } END { for (city in city_name) { print city } }' "$1" | sort >> "$2"

<<comm
	The following lines of code are used to print the details of the top 3 individuals with the highest salary in the input file.
	The details are printed in the output file in the order of decreasing salary.
	In case of tie, the details are printed in alphabetical order of the names.
	print $0 is used to pass the entire line to the sort command.
	-nk4,4r is used to sort the lines based on the 4th column in reverse order.
	-k1,1 is used to sort the lines based on the 1st column.
	head -3 is used to print the top 3 lines.
comm
echo "------------------" >> "$2"
echo "Details of top 3 individuals with the highest salary: " >> "$2"
awk 'NR>1 {print $0 | "sort -t','  -nk4,4r -k1,1 "}' "$1" | head -3 >> "$2"

<<comm
	The following lines of code are used to print the average salaries of different cities.
	The details are printed in the output file in the order of the cities.
comm
echo "------------------" >> "$2"
echo "Details of average salary of each city: " >> "$2"
awk -F ', ' 'NR>1 { city_count[$3]++; city_salary[$3]+=$4 } END { for (city in city_count) { avg_salary=city_salary[city]/city_count[city]; print "City: " city ", Salary: " avg_salary } }' "$1" >> "$2"

<<comm
	The following lines of code are used to print the details of individuals with a salary above the overall average salary.
	The details are printed in the output file in the order of the individuals.
	First the average salary is calculated using awk.
	Then the details of individuals with a salary above the average salary are printed.
comm
echo "------------------" >> "$2"
echo "Details of individuals with a salary above the overall average salary: " >> "$2"
average_salary=$(awk -F , 'NR>1 { sum+=$4; count++ } END { print sum/count }' "$1")
awk -F , -v avg=$average_salary 'NR>1 { if ($4 > avg) { print $0 } }' "$1" | sed "s/,/ /g" >> "$2"

echo "------------------" >> "$2"