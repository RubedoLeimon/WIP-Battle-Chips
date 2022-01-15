nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.invis1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"I","J","L","O","Q","*"})
 
    local props = package:get_card_props()
    props.shortname = "Invis1"
    props.damage = 0-0
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Temporary Immunity"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Invis1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
