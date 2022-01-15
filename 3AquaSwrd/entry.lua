nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.aquaswrd")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","M","N","O","W","H","R","P","T","*"})
 
    local props = package:get_card_props()
    props.shortname = "AquaSwrd"
    props.damage = 130
    props.time_freeze = false
    props.element = Element.Aqua
    props.secondary_element = Element.Sword
    props.description = "Water: Cuts fwd 3 squares"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."AquaSwrd.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
