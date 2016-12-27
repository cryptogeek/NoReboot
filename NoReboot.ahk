Loop
{
	FormatTime, hour, , H

	start := hour-1
	end := hour+11
	if (end > 23) {
		end := end - 24
	} 
	
	RegWrite, REG_DWORD, HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings ,ActiveHoursStart, %start%
	RegWrite, REG_DWORD, HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings ,ActiveHoursEnd, %end%
	
	sleep 1000*60*60 ;sleep for 1 hour
}