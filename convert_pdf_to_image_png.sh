cd /mnt/c/development/convert_pdf_to_image/test

for p in *.PDF
do
	start_time=`date +%s`
	pdftoppm "$p" "$p" -png
	end_time=`date +%s`
	echo "Finished converting $p to PNG in $(expr $end_time - $start_time)s" 
done
echo "DONE"
