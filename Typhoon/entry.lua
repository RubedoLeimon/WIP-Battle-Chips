nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.typhoon")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","B","D","E","G"})
 
    local props = package:get_card_props()
    props.shortname = "Typhoon"
    props.damage = 30
    props.time_freeze = false
    props.element = Element.Wind
    props.secondary_element = Element.None
    props.description = "Creates a twister w/3 hits"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Typhoon.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
