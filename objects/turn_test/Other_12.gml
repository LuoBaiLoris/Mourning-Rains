Battle_SetTurnTime(-1)
start = 1

aa = Battle_CreateBoardExtra(320,320)
Battle_AddBoardExtraVertex(aa,-100,-50)
Battle_AddBoardExtraVertex(aa,80,-100)
Battle_AddBoardExtraVertex(aa,50,60)
Battle_AddBoardExtraVertex(aa,0,130)
Battle_AddBoardExtraVertex(aa,-100,100)

Battle_CreateBoardExtraRect(320,320,80,200,0)

bb = Battle_CreateBoardCover(320,320,30,50,10)

instance_create_depth(0,500,0,battle_bg)

//Battle_SetSoul(battle_soul_blue)
//battle_soul.dir = 180

instance_create_depth(0,0,0,battle_bullet_test)

Battle_SetBoardSize(50,50,200,200)