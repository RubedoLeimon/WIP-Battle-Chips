nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.bubbler")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","B","C","D","E","H","K","L","P","R","S","*"})
 
    local props = package:get_card_props()
    props.shortname = "Bubbler"
    props.damage = 60
    props.time_freeze = false
    props.element = Element.Aqua
    props.description = "Explodes 1 square behind"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Bubbler.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
