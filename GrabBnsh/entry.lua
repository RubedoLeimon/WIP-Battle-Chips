nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.grabbnsh")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"B","M","S"})
 
    local props = package:get_card_props()
    props.shortname = "GrabBnsh"
    props.damage = 0-0
    props.time_freeze = true
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "20 dmg for every stolen sq"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."GrabBnsh.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
