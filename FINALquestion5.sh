for file in /dir/*
do
	sed -i 'ls/^/#Developed in cisc220\n/' $file
done
