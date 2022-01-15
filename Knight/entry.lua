nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.knight")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","H","M","U","V"})
 
    local props = package:get_card_props()
    props.shortname = "Knight"
    props.damage = 150
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Jumps fwd and attacks"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Knight.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
