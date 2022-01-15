nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.bblstar3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"G","R","S"})
 
    local props = package:get_card_props()
    props.shortname = "BblStar3"
    props.damage = 100
    props.time_freeze = false
    props.element = Element.Aqua
    props.secondary_element = Element.None
    props.description = "Seals an enemy in a bubble."
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."BblStar3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
