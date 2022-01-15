nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.wrecker")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"O","Q","S","U","W","*"})

    local props = package:get_card_props()
    props.shortname = "Wrecker"
    props.damage = 80
    props.time_freeze = false
    props.element = Element.Break
    props.secondary_element = Element.None
    props.description = "Can break 3rd square ahead"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Wrecker.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
