#Parameters
#specify a working folder.
$dest = "f:\eBooks11"

#Fetch CSV Data and place in local location
$csvOutFile = join-path $dest "ebooks.csv"
if(!(test-path $dest)){New-Item -Path $dest -ItemType directory}

Invoke-WebRequest -Uri "https://raw.githubusercontent.com/dirkslab/eBooks/master/ebooks5.csv" -OutFile $csvOutFile

#import the csv list
$ebooks = import-csv $csvOutFile -Delimiter ";"

#Loop through the list, download files. First check if the file already exist in the dest, otherwise skip.
$ebooks | % {

$filename = $_.Title
$type = $_.format

$outFile = join-path $dest "$filename.$type"
if(!(test-path $outFile)){
                            $URI = $_.URL
                            Write-Verbose "Download $URI" -Verbose
                            Write-Verbose "Save to $outFile" -Verbose

                            Invoke-WebRequest -Uri "$URI"  -OutFile "$outFile" -Verbose
                            Write-Output "`n"
                            Write-Verbose "done downloading $URI"
    }
}