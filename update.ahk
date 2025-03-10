Filedelete, %A_ScriptDir%\RPBinder_Ross.ahk
IfnotExist, %A_ScriptDir%\RPBinder_Ross.ahk
{
	URLDownloadToFile, https://github.com/lekkrit/rpbinder-ross/blob/main/RPBinder_Ross.ahk, %A_ScriptDir%\RPBinder_Ross.ahk
	Run,%A_ScriptDir%\RPBinder_Ross.ahk
	ExitApp
	return
}
