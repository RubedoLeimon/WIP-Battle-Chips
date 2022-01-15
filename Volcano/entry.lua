nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.volcano")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","G","J","Y","Z"})
 
    local props = package:get_card_props()
    props.shortname = "Volcano"
    props.damage = 150
    props.time_freeze = false
    props.element = Element.Fire
    props.description = "Fire lava from your area"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Volcano.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
