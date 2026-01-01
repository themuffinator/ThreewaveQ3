// DHTML icon placement (JavaScript + the HTML for images and forms)
// version 1.7
// by Joel "Johnny Law" Baxter


// Initially no gametypes are active; that will change after the page
// loads though.  (body onLoad sets the gametype to CTF.)

gametypesEnabled = 0


// There seem to be three ways that browsers find stuff in the object
// hierarchy.

// document.getElementById should be supported by all modern standards-
// compliant browsers and is the "wave of the future".  I will use it if
// it is available.

// document.all is an IE-ism.  I will use it if it is available but
// getElementById is not.

// If neither of those are available, I assume that we're in Old Netscape
// Land and should use document.layers.

useget = (document.getElementById)?true:false
useall = (document.all)?true:false

// Some older browsers use "show" and "hide" for visibility specification,
// while modern browsers use "visible" and "hidden".

// First set up a guess that should be correct in all cases as far as I
// know... just in case the user starts clicking stuff before the page is
// loaded.  (Actually the current version of the generated HTML doesn't
// un-hide the form until the page is completely loaded, but I might as
// well keep this; can't hurt.)

if (useget || useall) {
  visibleSyntax = "visible"
  hiddenSyntax = "hidden"
}
else {
  visibleSyntax = "show"
  hiddenSyntax = "hide"
}

// Now, just to make sure, do a test to see what the values really are.
// This should be called by body onLoad BEFORE it calls setGametype.

function getVisSyntax() {
  if (useget) {
    visibleSyntax = document.getElementById("mapview").style.visibility
    hiddenSyntax = document.getElementById("testhidden").style.visibility
  }
  else {
    if (useall) {
      visibleSyntax = document.all["mapview"].style.visibility
      hiddenSyntax = document.all["testhidden"].style.visibility
    }
    else {
      visibleSyntax = document.layers["mapview"].visibility
      hiddenSyntax = document.layers["testhidden"].visibility
    }
  }
}

// Make sure the browser window isn't wider than necessary.

// Once upon a time I had some very complicated support in here for browsers
// that use the Netscape/Mozilla DOM.  I eventually ripped it out because it
// is so hacky and brittle... it offends me to have to guess how many pixels
// wide a scrollbar is, for example.  So rather than risk breaking some
// browser that uses the Netscape/Mozilla DOM in slightly unorthodox way, or
// does something different with its scrollbars... screw it.  If that DOM
// can't properly support measuring window elements, I'm not going to try to
// use it to do so.

function enforceMaxWidth() {
  if (document.body && document.body.clientWidth) {
    // Ah, it's the IE DOM.  Hallelujah.
    if (document.body.clientWidth > 800) {
      window.resizeBy(800 - document.body.clientWidth, 0)
    }
    // Set this function to be called if the window gets resized.
    window.onresize = enforceMaxWidth
  }
}

// Check to see if an icon exists.
function isIcon(iconName) {
  if (useget) {
    return document.getElementById(iconName)
  }
  else {
    if (useall) {
      return document.all[iconName]
    }
    else {
      return document.layers[iconName]
    }
  }
}

// Get the bitflags for gametypes in which the icon appears.
// I store gametypes in the images' names to get around a Netscape-ism
// that doesn't allow the creation of custom object properties in the
// HTML declaration of an object.  So I have to use an already-existing
// property.  Fortunately it's possible to avoid using the name property
// of these images for other purposes.
function getGametypes(iconName) {
  if (useget) {
    return document.getElementById(iconName+"Img").name
  }
  else {
    if (useall) {
      return document.all[iconName+"Img"].name
    }
    else {
      return document.layers[iconName].document.images[0].name
    }
  }
}

// Make an icon visible.
function show(id) {
  if (useget) {
    document.getElementById(id).style.visibility = visibleSyntax
  }
  else {
    if (useall) {
      document.all[id].style.visibility = visibleSyntax
    }
    else {
      document.layers[id].visibility = visibleSyntax
    }
  }
}

// Make an icon invisible.
function hide(id) {
  if (useget) {
    document.getElementById(id).style.visibility = hiddenSyntax
  }
  else {
    if (useall) {
      document.all[id].style.visibility = hiddenSyntax
    }
    else {
      document.layers[id].visibility = hiddenSyntax
    }
  }
}

// Check the visibility of an icon.
function isVisible(id) {
  if (useget) {
    return (document.getElementById(id).style.visibility == visibleSyntax)
  }
  else {
    if (useall) {
      return (document.all[id].style.visibility == visibleSyntax)
    }
    else {
      return (document.layers[id].visibility == visibleSyntax)
    }
  }
}

// Check if armors should be displayed.
function isArmorSelected() {
  if (useget) {
    return document.getElementById("armorCheck").checked
  }
  else {
    if (useall) {
      return document.all["armorCheck"].checked
    }
    else {
      return document.layers["iconSel"].document.forms[0].armor.checked
    }
  }
}

// Check if weapons should be displayed.
function isWeaponsSelected() {
  if (useget) {
    return document.getElementById("weaponsCheck").checked
  }
  else {
    if (useall) {
      return document.all["weaponsCheck"].checked
    }
    else {
      return document.layers["iconSel"].document.forms[0].weapons.checked
    }
  }
}

// Check if powerups should be displayed.
function isPowerupsSelected() {
  if (useget) {
    return document.getElementById("powerupsCheck").checked
  }
  else {
    if (useall) {
      return document.all["powerupsCheck"].checked
    }
    else {
      return document.layers["iconSel"].document.forms[0].powerups.checked
    }
  }
}

// Check if spawnpoints should be displayed.
function isSpawnsSelected() {
  if (useget) {
    return document.getElementById("spawnsCheck").checked
  }
  else {
    if (useall) {
      return document.all["spawnsCheck"].checked
    }
    else {
      return document.layers["iconSel"].document.forms[0].spawns.checked
    }
  }
}

// Check if respawnpoints should be displayed.
function isRespawnsSelected() {
  if (useget) {
    return document.getElementById("respawnsCheck").checked
  }
  else {
    if (useall) {
      return document.all["respawnsCheck"].checked
    }
    else {
      return document.layers["iconSel"].document.forms[0].respawns.checked
    }
  }
}

// Turn the mapview on or off.
function toggleMap() {
  if (isVisible("mapview")) {
    hide("mapview")
  }
  else {
    show("mapview")
  }
}

// Return the form to its initial state... easiest way to make the
// display stay consistent if the page is refreshed.
function initForm() {
  if (useget) {
    document.getElementById("mapCheck").checked = true
    document.getElementById("armorCheck").checked = false
    document.getElementById("weaponsCheck").checked = false
    document.getElementById("powerupsCheck").checked = false
    document.getElementById("spawnsCheck").checked = false
    document.getElementById("respawnsCheck").checked = false
    document.getElementById("setGametypesRadio0").checked = true
    document.getElementById("setGametypesRadio1").checked = false
    document.getElementById("setGametypesRadio2").checked = false
    document.getElementById("setGametypesRadio3").checked = false
    document.getElementById("setGametypesRadio4").checked = false
    document.getElementById("setGametypesRadio5").checked = false
  }
  else {
    if (useall) {
      document.all["mapCheck"].checked = true
      document.all["armorCheck"].checked = false
      document.all["weaponsCheck"].checked = false
      document.all["powerupsCheck"].checked = false
      document.all["spawnsCheck"].checked = false
      document.all["respawnsCheck"].checked = false
      document.all["setGametypesRadio0"].checked = true
      document.all["setGametypesRadio1"].checked = true
      document.all["setGametypesRadio2"].checked = true
      document.all["setGametypesRadio3"].checked = true
      document.all["setGametypesRadio4"].checked = true
      document.all["setGametypesRadio5"].checked = true
    }
    else {
      document.layers["iconSel"].document.forms[0].map.checked = true
      document.layers["iconSel"].document.forms[0].armor.checked = false
      document.layers["iconSel"].document.forms[0].weapons.checked = false
      document.layers["iconSel"].document.forms[0].powerups.checked = false
      document.layers["iconSel"].document.forms[0].spawns.checked = false
      document.layers["iconSel"].document.forms[0].respawns.checked = false
      document.layers["iconSel"].document.forms[0].setGametypes[0].checked = true
      document.layers["iconSel"].document.forms[0].setGametypes[1].checked = false
      document.layers["iconSel"].document.forms[0].setGametypes[2].checked = false
      document.layers["iconSel"].document.forms[0].setGametypes[3].checked = false
      document.layers["iconSel"].document.forms[0].setGametypes[4].checked = false
      document.layers["iconSel"].document.forms[0].setGametypes[5].checked = false
    }
  }
}

// Change the kinds of visible icons... this is triggered by clicking
// on the armor, weapons, or powerups checkbox in the form.
function toggleType(prefix) {
  var iconIndex = 0
  var iconName = prefix + iconIndex
  while (isIcon(iconName)) {
    if (isVisible(iconName)) {
      hide(iconName)
    }
    else {
      var bitfield = getGametypes(iconName)
      if (bitfield & gametypesEnabled) {
        show(iconName)
      }
    }
    iconIndex++
    iconName = prefix + iconIndex
  }
}

// Show all the icons of a particular kind for the current gametype.
function showGametypeIcons(prefix) {
  var iconIndex = 0
  var iconName = prefix + iconIndex
  while (isIcon(iconName)) {
    var bitfield = getGametypes(iconName)
    if (bitfield & gametypesEnabled) {
      show(iconName)
    }
    else {
      hide(iconName)
    }
    iconIndex++
    iconName = prefix + iconIndex
  }
}

// Change the gametype and then display the correct icons... this is
// triggered by clicking on a gametype radiobutton in the form.
// body onLoad should call setGametype(0) AFTER calling getVisSyntax.
function setGametype(bitpos) {
  gametypesEnabled = 1 << bitpos
  if (isArmorSelected()) {
    showGametypeIcons("a")
  }
  if (isWeaponsSelected()) {
    showGametypeIcons("w")
  }
  if (isPowerupsSelected()) {
    showGametypeIcons("p")
  }
  if (isSpawnsSelected()) {
    showGametypeIcons("s")
  }
  if (isRespawnsSelected()) {
    showGametypeIcons("r")
  }
  showGametypeIcons("m")
  showGametypeIcons("f")
}
