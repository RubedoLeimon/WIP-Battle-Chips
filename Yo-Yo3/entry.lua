nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.yo-yo3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"D","I","M","N","O","P","Q","S","*"})
 
    local props = package:get_card_props()
    props.shortname = "Yo-Yo3"
    props.damage = 60
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.Sword
    props.description = "3-square yo-yo attack!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Yo-Yo3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
