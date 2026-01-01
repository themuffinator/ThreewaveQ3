///
/// Rune models
///
models/powerups/runes/regen
{
	{
		map models/powerups/runes/envmapred.tga
		blendfunc GL_ONE GL_ZERO
		tcGen environment
                rgbGen identity
	}
}
models/powerups/runes/resist
{
	{
		map models/powerups/runes/envmapgreen.tga
		blendfunc GL_ONE GL_ZERO
		tcGen environment
                rgbGen identity
	}
}
models/powerups/runes/haste
{
	{
		map models/powerups/runes/envmapyel.tga
		blendfunc GL_ONE GL_ZERO
		tcGen environment
                rgbGen identity
	}
}
models/powerups/runes/strength
{
	{
		map models/powerups/runes/envmappurp.tga
		blendfunc GL_ONE GL_ZERO
		tcGen environment
                rgbGen identity
	}
}
models/powerups/runes/vampire
{
	{
		map models/powerups/runes/envmapvmp.tga
		blendfunc GL_ONE GL_ZERO
		tcGen environment
                rgbGen identity
	}
}
models/powerups/runes/grapple
{
	{
		map models/powerups/runes/envmapgrp.tga
		blendfunc GL_ONE GL_ZERO
		tcGen environment
                rgbGen identity
	}
}
//
//Rune icons
//

icons/str_icon
{
	nopicmip
	{
		map icons/cctf/str_icon.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
	
}

icons/res_icon
{
	nopicmip
	{
		map icons/cctf/res_icon.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}
icons/hst_icon
{
	nopicmip
	{
		map icons/cctf/hst_icon.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}
icons/reg_icon
{
	nopicmip
	{
		map icons/cctf/reg_icon.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}
icons/vmp_icon
{
	nopicmip
	{
		map icons/cctf/vmp_icon.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}
icons/grp_icon
{
	nopicmip
	{
		map icons/cctf/grp_icon.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}
//
// Rune effects on players
//
runes/str
{
	deformVertexes wave 100 sin 2 0 0 0
	{
		map textures/cctf/effects/str.tga
		tcGen environment
                tcmod rotate 30
                tcmod scroll 1 .1
		blendfunc GL_ONE GL_ONE
	}
}
runes/reg
{
	deformVertexes wave 100 sin 2 0 0 0
	{
		map textures/cctf/effects/reg.tga
		tcGen environment
                tcmod rotate 30
                tcmod scroll 1 .1
		blendfunc GL_ONE GL_ONE
	}
}
runes/res
{
	deformVertexes wave 100 sin 2 0 0 0
	{
		map textures/cctf/effects/res.tga
		tcGen environment
		tcMod turb 0 0.15 0 0.3
                tcmod rotate 333
                tcmod scroll .3 .3
		blendfunc GL_ONE GL_ONE
	}
}
runes/hst
{
	deformVertexes wave 100 sin 2 0 0 0
	{
		map textures/cctf/effects/hst.tga
		tcGen environment
		tcMod turb 0 0.15 0 0.3
                tcmod rotate 333
                tcmod scroll .3 .3
		blendfunc GL_ONE GL_ONE
	}
}
runes/vmp
{
	deformVertexes wave 100 sin 2 0 0 0
	{
		map textures/cctf/effects/vmp.tga
		tcGen environment
		tcMod turb 0 0.15 0 0.3
                tcmod rotate 333
                tcmod scroll .3 .3
		blendfunc GL_ONE GL_ONE
	}
}
runes/grp
{
	deformVertexes wave 100 sin 2 0 0 0
	{
		map textures/cctf/effects/grp.tga
		tcGen environment
		tcMod turb 0 0.15 0 0.3
                tcmod rotate 333
                tcmod scroll .3 .3
		blendfunc GL_ONE GL_ONE
	}
}
//
// Rune effects on weapons
//
runes/strW
{
	deformVertexes wave 100 sin 0.3 0 0 0
	{
		map textures/cctf/effects/str.tga
		tcGen environment
                tcmod rotate 30
                tcmod scroll 1 .1
		blendfunc GL_ONE GL_ONE
	}
}
runes/regW
{
	deformVertexes wave 100 sin 0.3 0 0 0
	{
		map textures/cctf/effects/reg.tga
		tcGen environment
                tcmod rotate 30
                tcmod scroll 1 .1
		blendfunc GL_ONE GL_ONE
	}
}
runes/resW
{
	deformVertexes wave 100 sin 0.3 0 0 0
	{
		map textures/cctf/effects/res.tga
		tcGen environment
		tcMod turb 0 0.15 0 0.3
                tcmod rotate 333
                tcmod scroll .3 .3
		blendfunc GL_ONE GL_ONE
	}
}
runes/hstW
{
	deformVertexes wave 100 sin 0.3 0 0 0
	{
		map textures/cctf/effects/hst.tga
		tcGen environment
		tcMod turb 0 0.15 0 0.3
                tcmod rotate 333
                tcmod scroll .3 .3
		blendfunc GL_ONE GL_ONE
	}
}
runes/vmpW
{
	deformVertexes wave 100 sin 0.3 0 0 0
	{
		map textures/cctf/effects/vmp.tga
		tcGen environment
		tcMod turb 0 0.15 0 0.3
                tcmod rotate 333
                tcmod scroll .3 .3
		blendfunc GL_ONE GL_ONE
	}
}
runes/grpW
{
	deformVertexes wave 100 sin 0.3 0 0 0
	{
		map textures/cctf/effects/grp.tga
		tcGen environment
		tcMod turb 0 0.15 0 0.3
                tcmod rotate 333
                tcmod scroll .3 .3
		blendfunc GL_ONE GL_ONE
	}
}
//
// Shaders for the 3 grapple cords
//
grapple/cord_pull
{
	nopicmip
	{
		map models/weapons2/grapple/c_grapple.tga
		tcmod scroll 0 -8
		blendfunc GL_ONE GL_ZERO
		//rgbGen lightingdiffuse
		rgbGen entity 
	}
}
grapple/cord_shoot
{
	nopicmip
	{
		map models/weapons2/grapple/c_grapple.tga
		tcmod scroll 0 5
		blendfunc GL_ONE GL_ZERO
		//rgbGen lightingdiffuse
		rgbGen entity 
	}
}
grapple/cord_fixed
{
	nopicmip
	{
		map models/weapons2/grapple/c_grapple.tga
		blendfunc GL_ONE GL_ZERO
		//rgbGen lightingdiffuse
		rgbGen entity 
	}
}

// ****************************************
// Super Nailgun
// ****************************************
models/weapons2/nailgun/nail
{
	{
		map models/powerups/runes/envmapyel.tga
		blendfunc GL_ONE GL_ZERO
		tcGen environment
                rgbGen identity
	}
	{
		map models/weapons2/nailgun/nail.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
}
models/weapons2/nailgun/f_nailgun
{
	sort additive
	cull disable
	{
		map	models/weapons2/nailgun/f_nailgun.tga
		blendfunc GL_ONE GL_ONE
	}
}

models/powerups/ammo/nailgunammo
{
       {
	        map textures/effects/tinfx2d.tga
		tcGen environment
		blendfunc GL_ONE GL_ZERO
                rgbGen identity
       }
       {
	        map models/powerups/ammo/nailgunammo.tga
		blendfunc blend
                rgbGen lightingDiffuse
       }
}
models/powerups/ammo/nailgunammo1
{
       {
	        map textures/effects/envmapmach.tga
		tcGen environment
		blendfunc GL_ONE GL_ZERO
                rgbGen lightingDiffuse
       }
}
models/powerups/ammo/nailgunammo2
{
	{
		map models/powerups/ammo/nailgunammo2.tga
		rgbGen identity
	}
	
}
nailExplosion
{
	cull disable
	{
		animmap 5 models/weaphits/nail1.tga  models/weaphits/nail2.tga models/weaphits/nail3.tga gfx/colors/black.tga
		rgbGen wave inversesawtooth 0 1 0 5
		blendfunc add
	}
	{
		animmap 5 models/weaphits/nail2.tga  models/weaphits/nail3.tga gfx/colors/black.tga gfx/colors/black.tga
		rgbGen wave sawtooth 0 1 0 5
		blendfunc add
	}
}
icons/iconw_nailgun
{
	nopicmip
	{
		map icons/cctf/iconw_nailgun.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen identity
		rgbgen vertex
	}
}
icons/icona_nailgun
{
	nopicmip
	{
		map icons/cctf/icona_nailgun.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen identity
		rgbgen vertex
	}
}

//
// Green Armor
//
models/powerups/armor/energy_green
{

	{
		map models/powerups/armor/energy_green.tga 
		blendFunc GL_ONE GL_ONE
		tcMod scroll 7.4 1.3
	}

}

models/powerups/armor/green
{      
        {
                map textures/sfx/specular.tga          
                tcGen environment
                rgbGen identity
	}  
        {
		map models/powerups/armor/green.tga
                blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen identity
	}
       
         
}

icons/greenarmoricon
{
	nopicmip
	{
		map icons/cctf/iconr_green.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
	
}

//
// Custom grapple 2
//

grapple2/rope
{
{
  map models/weapons2/grapple/grapple2_rope.tga
  blendFunc GL_ONE GL_ZERO
  rgbGen lightingDiffuse
}
}

grapple2/barrel
{
{
  map models/weapons2/grapple/grapple2_barrel.tga
  blendFunc GL_ONE GL_ZERO
  rgbGen lightingDiffuse
}
}

grapple2/grapple
{
{
	map models/weapons2/grapple/grap_glow.tga
        //tcGen environment
        tcmod scale 9 9
        tcmod scroll 5 .6
        blendFunc GL_ONE GL_ZERO
        rgbGen identity
} 
 {
  map models/weapons2/grapple/grapple2.tga
  blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
  rgbGen lightingDiffuse
 }
}

grapple2/bolt
{
 {
  map textures/effects/tinfx2d.tga
  blendFunc GL_ONE GL_ZERO
  tcmod scroll .01 .01
  tcGen environment
  rgbGen lightingDiffuse
 }
}

grapple2/box
{   
 {
  map textures/effects/tinfx2d.tga
  blendFunc GL_ONE GL_ZERO
  tcmod scroll .01 .01
  tcGen environment
  rgbGen lightingDiffuse
 }
}

//
// Custom grapple 3
//

grapple3/grapple
{
{
        map textures/effects/tinfx2d.tga
	tcGen environment
	blendfunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
}
{
	map models/weapons2/grapple/grapple3.tga
        //blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        blendFunc blend
	rgbGen lightingDiffuse
} 
}

grapple3/ring
{
 {
  map models/weapons2/grapple/grapple3_ring.tga
  blendFunc GL_ONE GL_ZERO
  rgbGen lightingDiffuse
 }
}

grapple3/ball
{
 {
  map models/weapons2/grapple/grapple3_ball.tga
  blendFunc GL_ONE GL_ZERO
  rgbGen lightingDiffuse
 }
}

grapple3/cord
{
 {
  map models/weapons2/grapple/grapple3_ring.tga
  blendFunc GL_ONE GL_ZERO
  rgbGen entity
 }
}