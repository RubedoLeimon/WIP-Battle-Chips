nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.magbomb3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"H","K","O","Q","S","*"})
 
    local props = package:get_card_props()
    props.shortname = "MagBomb3"
    props.damage = 120
    props.time_freeze = false
    props.element = Element.Elec
    props.secondary_element = Element.None
    props.description = "Stops the enemy in its tracks"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."MagBomb3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
