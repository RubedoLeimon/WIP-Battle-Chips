nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.drain3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","E","F","L","Q"})
 
    local props = package:get_card_props()
    props.shortname = "Drain3"
    props.damage = 90
    props.time_freeze = true
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Charge to drain HP from enemy"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Drain3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
