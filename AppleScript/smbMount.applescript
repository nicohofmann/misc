on run
	tell application "Finder"
		activate
		try
			-- Netzlaufwerke auf dem Server verbinden
			mount volume "smb://USERNAME:PASSWORT@server.tld/resource"
		on error
			display dialog "Die Verbindung konnte nicht hergestellt werden!" buttons {"OK"} default button 1
		end try
	end tell
end run