nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.holemetr")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","H","J","N","Q"})
 
    local props = package:get_card_props()
    props.shortname = "HoleMetr"
    props.damage = 100
    props.time_freeze = false
    props.element = Element.Fire
    props.secondary_element = Element.None
    props.description = "Meteors smash enemies!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."HoleMetr.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
