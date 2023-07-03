year=$(date +%Y)
month=$(date +%m)
tar_file_name_database="ttrs_livechat_database_"$month"_"$year 
tar_file_name_upload="ttrs_livechat_upload_"$month"_"$year 

tar -czvf $tar_file_name_database --absolute-names /data/livechat/ttrs_livechat_database
aws s3 cp $tar_file_name_database s3://ttrs-text/live-chat/database/$month/$year


tar -czvf $tar_file_name --absolute-names /data/livechat//data/livechat/uploads
aws s3 cp $tar_file_name_upload s3://ttrs-text/live-chat/data-storage/images/$month/$year