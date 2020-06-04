# Reference 

https://www.sentinelone.com/blog/how-malware-bypass-macos-gatekeeper/
https://labs.sentinelone.com/macos-incident-response-part-3-system-manipulation/
https://www.sentinelone.com/blog/malware-hunting-macos-practical-guide/
https://www.sentinelone.com/blog/macos-malware-researchers-how-to-bypass-xprotect-on-catalina/
https://books.google.nl/books?id=jfMqCgAAQBAJ&pg=PA135&lpg=PA135&dq=sqlite+query+for+chrome+
downloads&source=bl&ots=YdwHgHdE_j&sig=ACfU3U3WSPrnsEhPEYYu71m55g1I64qMvg&hl=en&sa=X&ved=2ahUKEwjXm--
D0-bpAhVG4qQKHcApAqQQ6AEwDHoECAoQAQ#v=onepage&q=sqlite%20query%20for%20chrome%20downloads&f=false

echo -e "\n"
/tmp/sqlite3 "/Users/$1/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV2" 'select LSQuarantineEventIdentifier, LSQuarantineAgentName, 
LSQuarantineAgentBundleIdentifier, LSQuarantineDataURLString, LSQuarantineSenderName, LSQuarantineSenderAddress,
LSQuarantineOriginURLString, LSQuarantineTypeNumber, date(LSQuarantineTimeStamp + 978307200, "unixepoch") as downloadedDate
from LSQuarantineEvent order by LSQuarantineTimeStamp' | sort | grep -i $2  | tr "|" "\n" | grep -v "^0$"
