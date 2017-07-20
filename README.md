# eBooks
download free Microsoft eBooks 2017 FreeDump

Created a CSV file by copying and pasting the table from the site https://blogs.msdn.microsoft.com/mssmallbiz/2017/07/11/largest-free-microsoft-ebook-giveaway-im-giving-away-millions-of-free-microsoft-ebooks-again-including-windows-10-office-365-office-2016-power-bi-azure-windows-8-1-office-2013-sharepo/?utm_content=educational&utm_campaign=2017-07-16&utm_source=email-sendgrid&utm_term=58935&utm_medium=802578
There are scripts on the site to download all files. Problem I had was that the names of the downloaded files where sometimes unrecognizable.

I had to manipulate the names by removing certain characters "/,:" as well as replaced all spaces with _. 
This was a very manual process and thus could be error-prone.

Just use powershell script in Powershell ISE. Adjust Parameter per your use.
Script will download CSV file, import and use information to download the free eBooks.
The downloaded files will be named after the Title, making it easier to recognize downloaded files.

Only created script for PDF and DOC files. Script checks if the file exist in destination foler and skips or download.
No error checking or logs at this stage. 
If file download failed on some files due to timeouts, you can just rerun.


