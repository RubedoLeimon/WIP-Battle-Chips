nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.fanfare")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"P","S","Z","*"})
 
    local props = package:get_card_props()
    props.shortname = "Fanfare"
    props.damage = 0-0
    props.time_freeze = false
    props.element = Element.Summon
    props.secondary_element = Element.None
    props.description = "Take no damage for a while."
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Fanfare.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
