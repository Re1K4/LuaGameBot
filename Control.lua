--///////////////////////////////////////////////////////////////////////////
--GLOBAL VALUE
--///////////////////////////////////////////////////////////////////////////
CONTROL=0
PREV=0
CONTROL_AREA=Region(0,0,1919,20)

--///////////////////////////////////////////////////////////////////////////
--FUNCTION
--/////////////////////////////////////////////////////////////////////////// 

function changeCtrl(ctrl)
    PREV=CONTROL
    CONTROL=ctrl
    Logs("CTRL Chenged ("..PREV..")⇒("..CONTROL..")")
    --debug window
    setHighlightTextStyle(0xf8666666,0xf8ff0000,8)
    CONTROL_AREA:highlightOff()
    CONTROL_AREA:highlight("CONTROL:"..CONTROL)
end