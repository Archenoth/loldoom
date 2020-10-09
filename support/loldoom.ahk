#IfWinActive, ahk_exe gzdoom.exe

^F12::
Loop {
        if(!WinActive("ahk_exe gzdoom.exe")){
                break
        }
        Send {F13}
        Sleep, 100
        file := FileOpen("<path to your file in config.yaml>","w")
        file.WriteLine("echo")
        file.Close()
        Sleep, 1000
}