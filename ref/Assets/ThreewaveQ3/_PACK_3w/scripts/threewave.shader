//
// console
//
console
{
	nopicmip
	nomipmaps
        {
		map gfx/console/bg2.tga
                blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
                tcMod turb 0 0 0 .2
                tcmod scale 3 1.5
                tcmod scroll 0  0.3
	}   
}

//
// frags/death medal
//
medal_frags
{
	nopicmip
	{
		clampmap menu/medals/medal_frags.tga
		blendFunc blend
	}
}

//
//flagtrail
//
effects/flagtrail_r
{
	cull none
	nopicmip
	//entityMergable		// allow all the sprites to be merged together
	{
		map textures/effects/flagtrail_r.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		//rgbGen		vertex
		//alphaGen	vertex
		tcMod rotate 300
	}
}
effects/flagtrail_b
{
	cull none
	nopicmip
	//entityMergable		// allow all the sprites to be merged together
	{
		map textures/effects/flagtrail_b.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		//rgbGen		vertex
		//alphaGen	vertex
		tcMod rotate 300
	}
}

//
//whiteflag
//
models/flags/white_flag
{
      
	deformVertexes wave 100 sin 4 3 0 0.3
        deformVertexes wave 30 sin 0 3 0 .8
        deformVertexes normal .3 .2
        cull none
        
        {
		map models/flags/white_flag.tga
		 rgbGen identity
	}
        {
		map textures/effects/tinfx2d.tga
                tcGen environment
                blendFunc GL_ONE GL_ONE
                rgbGen identity
	}
        {
		map models/flags/white_flag.tga
                blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	        rgbGen identity
	}
        {
		map textures/sfx/shadow.tga
                tcGen environment 
                //blendFunc GL_ONE GL_ONE            
                blendFunc GL_DST_COLOR GL_ZERO
                rgbGen identity
	}
}

//
//threewave logo
//
3wlogo/red
{
	{
		map models/menu/envmapred.tga
		blendfunc GL_ONE GL_ZERO
		tcGen environment
                rgbGen identity
	}
}
3wlogo/green
{
	{
		map models/menu/envmapgreen.tga
		blendfunc GL_ONE GL_ZERO
		tcGen environment
                rgbGen identity
	}
}
3wlogo/blue
{
	{
		map models/menu/envmapblue.tga
		blendfunc GL_ONE GL_ZERO
		tcGen environment
                rgbGen identity
	}
}
3wlogo/ring
{
	{
		map models/menu/envmapring.tga
		blendfunc GL_ONE GL_ZERO
		tcGen environment
                rgbGen identity
	}
}
//
//main menu
//
mainmenu/ring1
{
	nopicmip
	nomipmaps
	{
		clampmap gfx/mainmenu/ring1.tga
		blendfunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		tcMod rotate 20
	}
}
mainmenu/ring2
{
	nopicmip
	nomipmaps
	{
		clampmap gfx/mainmenu/ring2.tga
		blendfunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		tcMod rotate -30
	}
}
mainmenu/ring3
{
	nopicmip
	nomipmaps
	{
		clampmap gfx/mainmenu/ring3.tga
		blendfunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		tcMod rotate 40
	}
}

//RED quad weapon map
powerups/quadRedWeapon
{
	deformVertexes wave 100 sin 0.5 0 0 0
	{
		map textures/effects/blueflagmap.tga
		blendfunc GL_ONE GL_ONE
		tcGen environment
		tcMod turb 0 0.2 0 1
	}
}

//
// loading screen gfx
//
loadingmenu/levelshotoverlay
{
	nopicmip
	{
		map gfx/loadingmenu/levelshotoverlay.tga
        	blendFunc GL_DST_COLOR GL_SRC_COLOR
		rgbgen identity
	}
}
loadingmenu/bg
{
	nopicmip
	{
		map gfx/loadingmenu/load_bg.tga
	}
}
loadingmenu/spincircle
{
	nopicmip
	nomipmaps
	{
		clampmap gfx/loadingmenu/load_circle.tga
		blendfunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		tcMod rotate 20
	}
}
loadingmenu/threewaveLogo
{
	nopicmip
	{
		map gfx/loadingmenu/threewavelogo.tga
		blendfunc add
	}
}

loadingmenu/gt_0
{
	nopicmip
	{
		map gfx/loadingmenu/gametype0.tga
	}
}
loadingmenu/gt_1
{
	nopicmip
	{
		map gfx/loadingmenu/gametype1.tga
	}
}
loadingmenu/gt_3
{
	nopicmip
	{
		map gfx/loadingmenu/gametype3.tga
	}
}
loadingmenu/gt_4
{
	nopicmip
	{
		map gfx/loadingmenu/gametype4.tga
	}
}
loadingmenu/gt_5
{
	nopicmip
	{
		map gfx/loadingmenu/gametype5.tga
	}
}
loadingmenu/gt_8
{
	nopicmip
	{
		map gfx/loadingmenu/gametype8.tga
	}
}
loadingmenu/gt_9
{
	nopicmip
	{
		map gfx/loadingmenu/gametype9.tga
	}
}
loadingmenu/gt_10
{
	nopicmip
	{
		map gfx/loadingmenu/gametype10.tga
	}
}
loadingmenu/gt_11
{
	nopicmip
	{
		map gfx/loadingmenu/gametype11.tga
	}
}
//
//scoreboard
//
scoreboard/redBg
{
	{
		map gfx/scoreboard/redbg.tga
		blendfunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}
scoreboard/blueBg
{
	{
		map gfx/scoreboard/bluebg.tga
		blendfunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}
scoreboard/whiteBg
{
	{
		map gfx/scoreboard/whitebg.tga
		blendfunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}
scoreboard/redTop
{
	nopicmip
	{
		map gfx/scoreboard/redtop.tga
		blendfunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}
scoreboard/blueTop
{
	nopicmip
	{
		map gfx/scoreboard/bluetop.tga
		blendfunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}
scoreboard/whiteTop
{
	nopicmip
	{
		map gfx/scoreboard/whitetop.tga
		blendfunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}
scoreboard/skull
{
	nopicmip
	{
		map gfx/scoreboard/skull.tga
		blendfunc add
	}
}
scoreboard/readypic
{
	nopicmip
	{
		map gfx/scoreboard/readypic.tga
		blendfunc add
	}
}

// For red quad, "qua2 series of models"
models/powerups/instant/qua2
{
	{
		map textures/effects/envmaplightred.tga
		blendfunc GL_ONE GL_ZERO
		tcGen environment
                rgbGen identity
	}
}

//
// railgun trail
//

railgun/cork
{
	sort nearest
	{
		map models/weapons2/railgun/cork.tga
		blendFunc GL_ONE GL_ONE
		rgbGen entity
		tcMod scroll -1 0
	}
}

railgun/newcore
{
	sort nearest
	cull none
	{
		map models/weapons2/railgun/railcore.tga
		blendFunc GL_ONE GL_ONE
		rgbGen vertex
		tcMod scroll -1 0
	}
}

icons/sillyquadicon
{
	nopicmip
	{
		map icons/qua2.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
	
}

//
// team grens
//
grenade/team
{
	{
		animMap 4 models/weapons2/grenadel/team1.tga models/weapons2/grenadel/team2.tga
		blendfunc GL_ONE GL_ZERO
		rgbGen entity
	}
	{
		map models/weapons2/grenadel/teamgren.tga
		blendfunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen lightingdiffuse
	}
}

//
// Lock for locked teams
//
gfx/locked
{
	nopicmip
	{
		map gfx/scoreboard/locked.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
	
}
gfx/unlocked
{
	nopicmip
	{
		map gfx/scoreboard/unlocked.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
	
}
gfx/nocoaching
{
	nopicmip
	{
		map gfx/scoreboard/nocoaching.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
	
}
gfx/coaching
{
	nopicmip
	{
		map gfx/scoreboard/coaching.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
	
}
//
// Radio
//
radioSprite
{
	nopicmip
	{
		clampmap gfx/radio/radioSprite.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA	
		tcMod stretch sin 0.80 0.20 0 2
	}
}

//
//crosshairs
//
crosshaira
{
	nopicmip
	{
		map gfx/2d/crosshaira2.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA	
		rgbgen vertex
	}
}
crosshairb
{
	nopicmip
	{
		map gfx/2d/crosshairb2.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA	
		rgbgen vertex
	}
}
crosshairc
{
	nopicmip
	{
		map gfx/2d/crosshairc2.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA	
		rgbgen vertex
	}
}
crosshaird
{
	nopicmip
	{
		map gfx/2d/crosshaird2.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA	
		rgbgen vertex
	}
}
crosshaire
{
	nopicmip
	{
		map gfx/2d/crosshaire2.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA	
		rgbgen vertex
	}
}
crosshairf
{
	nopicmip
	{
		map gfx/2d/crosshairf2.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA	
		rgbgen vertex
	}
}
crosshairg
{
	nopicmip
	{
		map gfx/2d/crosshairg2.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA	
		rgbgen vertex
	}
}
crosshairh
{
	nopicmip
	{
		map gfx/2d/crosshairh2.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA	
		rgbgen vertex
	}
}
crosshairi
{
	nopicmip
	{
		map gfx/2d/crosshairi2.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA	
		rgbgen vertex
	}
}
crosshairj
{
	nopicmip
	{
		map gfx/2d/crosshairj2.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA	
		rgbgen vertex
	}
}

//flag icons
icons/icon_redflag
{
	nopicmip
	{
		map icons/iconf_redflag.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}
icons/icon_blueflag
{
	nopicmip
	{
		map icons/iconf_blueflag.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}
icons/icon_whiteflag
{
	nopicmip
	{
		map icons/icon_whiteflag.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}

//rune trails
effects/runetrail
{
	cull none
	nopicmip
	{
		map textures/effects/runetrail.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen entity
		tcMod rotate 300
	}
}

//team rockets
models/ammo/rocket/teamflare
{
	cull disable
	{
		map models/ammo/rocket/teamflare.tga
		blendfunc GL_ONE GL_ONE
		rgbgen entity
	}
}

models/ammo/rocket/teamrocket
{
	cull disable
	{
		map models/ammo/rocket/teamrocket.tga
		blendfunc GL_ONE GL_ZERO
	}
}
models/ammo/rocket/teamfin
{
	cull disable
	{
		map models/ammo/rocket/teamfin.tga
		blendfunc GL_ONE GL_ZERO
		rgbgen identity
	}
}
models/ammo/rocket/teamflash
{
	cull disable
	{
		map models/ammo/rocket/teamflash.tga
		blendfunc GL_ONE GL_ONE
		rgbgen entity
	}
}

//team lightning
teamLightningBolt
{
	cull none
	{
		map gfx/misc/teamlightning.tga
		blendFunc GL_ONE GL_ONE
                rgbgen wave sin 1 0.5 0 7.1
                tcmod scale  2 1
		tcMod scroll -5 0
		rgbgen entity
	}
    	{
		map gfx/misc/teamlightning.tga
		blendFunc GL_ONE GL_ONE
                rgbgen wave sin 1 0.8 0 8.1
                tcmod scale  -1.3 -1
		tcMod scroll -7.2 0
		rgbgen entity
	}
}
teamLightningBoltNew
{
	cull none
	{
		map gfx/misc/teamlightningnew.tga
		blendFunc GL_ONE GL_ONE
		rgbgen wave sin 1 0.5 0 7.1
		tcmod scale  2 1
		tcMod scroll -5 0
		rgbgen entity
	}
	{
		map gfx/misc/teamlightningnew.tga
		blendFunc GL_ONE GL_ONE
		rgbgen wave sin 1 0.8 0 8.1
		tcmod scale  -1.3 -1
		tcMod scroll -7.2 0
		rgbgen entity
	}
}
models/weapons2/lightning/f_lightning_team
{
	sort additive
	cull disable
	{
		map models/weapons2/lightning/f_lightning.tga
		blendfunc GL_ONE GL_ONE
		rgbgen entity
	}
}
models/weaphits/electric_team
{
	cull none
	
	{
		clampmap models/weaphits/electric.tga
		blendFunc GL_ONE GL_ONE
                rgbgen wave triangle .8 2 0 9
                tcMod rotate 360
                rgbgen entity
	}	
        {
		clampmap models/weaphits/electric.tga
		blendFunc GL_ONE GL_ONE
                rgbgen wave triangle 1 1.4 0 9.5
                tcMod rotate -202
                rgbgen entity
	}		
}

//team plasma
models/weapons2/plasma/f_plasma_team
{
	cull disable
	sort additive
	{
		map models/weapons2/plasma/f_plasma_team.tga
		blendfunc GL_ONE GL_ONE
		rgbGen entity
	}
}
models/weapons2/plasma/plasma_glo_team
{
    
	{
		map models/weapons2/plasma/plasma_glo_team.tga
                tcmod rotate 33
                tcMod scroll .7 1
                rgbGen identity
                rgbGen entity
	}
        {
		map textures/effects/tinfxb.tga
		tcGen environment
                tcMod scroll .01 .02
		blendfunc GL_ONE GL_ONE
		rgbGen lightingDiffuse
		rgbGen entity
	}
}
sprites/plasma_team
{
	cull disable
	{
		clampmap sprites/plasma_team.tga
		blendfunc GL_ONE GL_ONE
                tcMod rotate 931
                rgbgen entity
	}
}
plasmaExplosion_team
{
	cull disable
	{
		clampmap models/weaphits/plasmaboom_team.tga
		blendfunc add
                tcMod stretch triangle .6 0.1 0 8
                tcmod rotate 999
                rgbGen wave inversesawtooth 0 1 0 1.5
                rgbGen entity
	}
}

//coin flare
models/special/gold_flare
{
	deformVertexes autoSprite
	cull disable
	nopicmip
	{
		clampmap models/powerups/special/gold_flare.tga
		blendFunc GL_ONE GL_ONE
		tcMod rotate 200
		tcMod stretch sin 0.7 0.3 0 0.5
	}
}

models/special/gold_coin
{
	{
		map models/powerups/special/gold_coin.tga
		blendfunc GL_ONE GL_ZERO
		tcGen environment
                rgbGen identity
	}
}
icons/coin_icon
{
	sort nearest
	nopicmip
	{
		map icons/coin_icon.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}
