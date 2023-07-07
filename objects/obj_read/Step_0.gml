if(Input_IsPressed(INPUT.CONFIRM)){
if(page=1){
page=2
instance_destroy(dialog1)
dialog1=instance_create_depth(50+(global.language=LANGUAGE.SCHINESE ? 30 : 0),70,0,text_typer)
dialog1.text=Lang_GetString("str_tips2")
}else if(page=2&&!temp){
temp=true
Fader_Fade(0,1,30)
alarm[0]=90}}