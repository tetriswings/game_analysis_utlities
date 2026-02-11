1. Download Google Sheets as CSV (gear sheet) and copy path and filename as a single string.
2. Run "$gear = Import-CSV -Path 'path_and_filename_string.csv'"
3. Run Get-MaxStats.ps1
4. Run "Get-MaxStats -class "ClassName" -attribute "AttributeName" -csv_object $gear | FT" to run the query and format as a list.

