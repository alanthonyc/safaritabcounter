set tabCount to 0
set winCount to 0
tell application "Safari"
	set winlist to every window
	repeat with win in winlist
		set winCount to winCount + 1
		set ok to true
		try
			set tablist to every tab of win
		on error errmsg
			set ok to false
		end try
		if ok then
			repeat with t in tablist
				set tabCount to tabCount + 1
			end repeat
		end if
	end repeat
end tell
display notification (({tabCount} as string) & " tabs in " & winCount as string) & " windows"
