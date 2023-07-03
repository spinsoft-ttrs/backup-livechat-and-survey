year=$(date +%Y)
month=$(date +%m)
tar_file_name_database="ttrs_survey_database_"$month"_"$year 

tar -czvf $tar_file_name_database --absolute-names /data/ttrs-survey/ttrs_survey_database
aws s3 cp $tar_file_name_database s3://ttrs-text/survey/database/$month/$year
