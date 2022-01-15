nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.geyser")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"B","G","L","M","S","V"})
 
    local props = package:get_card_props()
    props.shortname = "Geyser"
    props.damage = 200
    props.time_freeze = false
    props.element = Element.Aqua
    props.secondary_element = Element.None
    props.description = "Geyser 3 squares forward"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Geyser.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
