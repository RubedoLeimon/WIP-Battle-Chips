nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.iceball")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"F","I","M","Q","S","*"})
 
    local props = package:get_card_props()
    props.shortname = "IceBall"
    props.damage = 120
    props.time_freeze = false
    props.element = Element.Aqua
    props.description = "Freezes 3rd panel ahead"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."IceBall.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
