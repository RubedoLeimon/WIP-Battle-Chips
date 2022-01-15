nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.drain2")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","C","H","N","T"})
 
    local props = package:get_card_props()
    props.shortname = "Drain2"
    props.damage = 70
    props.time_freeze = true
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Charge to drain HP from enemy"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Drain2.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
