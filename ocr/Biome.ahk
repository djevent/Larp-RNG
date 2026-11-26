#Include %A_ScriptDir%\RapidOCR.ahk
#Include %A_ScriptDir%\Lib\ImagePut.ahk

inst := new RapidOCR()

F1::
    Loop {
		biome := inst.ocr([1, 895, 192, 27])
        ToolTip, Current biome: %biome%

        if (InStr(biome, "PUMPKIN MOON") || InStr(biome, "GRAVE")) {
            MoveAndClick(27, 511)
            Sleep, 200	
            MoveAndClick(1272, 338)
            Sleep, 200
            MoveAndClick(1470, 450)
            Sleep, 200
            MoveAndClick(838, 370)
            Sleep, 400
            Clipboard := "Cursed Rune"
            Sleep, 500
            Send, ^v
            Sleep, 300
            MoveAndClick(843, 479)
            Sleep, 500
            MoveAndClick(838, 370)
            Sleep, 500
            MoveAndClick(682, 579) ; use
            Sleep, 100
            Click, 1
            Sleep, 100
            MoveAndClick(27, 511)
        }
        Sleep, 5000
		SingleSpace()
    }
return

f2::ExitApp

MoveAndClick(x, y) {
    MouseMove, %x%, %y%
    Sleep, 200
    Click, 1
    Sleep, 100
}
SingleSpace() {
    Send, {Space down}
    Sleep, 50
    Send, {Space up}
}
