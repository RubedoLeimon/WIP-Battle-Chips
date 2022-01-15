nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.wave")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","D","E","I","L","M","S","T"})
 
    local props = package:get_card_props()
    props.shortname = "Wave"
    props.damage = 80
    props.time_freeze = false
    props.element = Element.Aqua
    props.secondary_element = Element.None
    props.description = "3-row wave! [Aqua]"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Wave.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
