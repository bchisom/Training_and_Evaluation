$source_files = Get-ChildItem .\source

foreach ($file in $source_files)
{
  $file_data = Get-Content ".\source\$file"
  foreach ($line in $file_data)
  {
    if ($line -match "Log4NETEventLogAppender")
    {
      Copy-Item $file_data .\destination
     }
  }
}
