nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.mokorus3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"O","T","Y"})
 
    local props = package:get_card_props()
    props.shortname = "MokoRus3"
    props.damage = 120
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "3 Molokos charge the enemy"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."MokoRus3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
