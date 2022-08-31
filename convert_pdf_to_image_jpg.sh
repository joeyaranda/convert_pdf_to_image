cd /mnt/c/development/convert_pdf_to_image/test

start_time0=`date +%s`
for p in *.PDF	
do
	start_time=`date +%s`
	pdftoppm "$p" "$p" -jpeg
	end_time=`date +%s`
	echo "Finished converting $p to JPG in $(expr $end_time - $start_time)s" 
done
end_time0=`date +%s`
echo "DONE. Total execution time is $(expr $end_time0 - $start_time0)s."


