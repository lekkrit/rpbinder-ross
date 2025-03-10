Filedelete, %A_ScriptDir%\RPBinder_Ross.ahk
IfnotExist, %A_ScriptDir%\RPBinder_Ross.ahk
{
	URLDownloadToFile, https://raw.githubusercontent.com/my0kul/RPHUB/main/RPHUB.ahk, %A_ScriptDir%\RPBinder_Ross.ahk
	Run,%A_ScriptDir%\RPBinder_Ross.ahk
	ExitApp
	return
}