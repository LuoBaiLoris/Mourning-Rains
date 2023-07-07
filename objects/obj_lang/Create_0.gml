prefix="{instant true}{scale 2}{font 1}"
choice=global.language
temp=0

title=instance_create_depth(150,100,0,text_typer)
title.text=prefix+"Please Select Your Language&{font 0}请选择你的语言"
english=instance_create_depth(160,220,0,text_typer)
english.text=prefix+"{color `yellow`}English"
schinese=instance_create_depth(370,220,0,text_typer)
schinese.text=prefix+"简体中文"

flag=Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.LANGUAGE,-1)
if(flag!=-1){
choice=flag
alarm[1]=1}