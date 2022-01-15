nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.magbomb1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"F","G","J","M","N","*"})
 
    local props = package:get_card_props()
    props.shortname = "MagBomb1"
    props.damage = 80
    props.time_freeze = false
    props.element = Element.Elec
    props.secondary_element = Element.None
    props.description = "Stops the enemy in its tracks"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."MagBomb1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
