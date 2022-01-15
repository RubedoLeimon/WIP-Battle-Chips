nonce = function() end
 

BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.grndmanex")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"G","*"})
 
    local props = package:get_card_props()
    props.shortname = "GrndManEX"
    props.damage = 70
    props.time_freeze = true
    props.element = Element.Break
    props.secondary_element = Element.None
    props.description = "Move fwrd then attk w/drill"
    props.card_class = CardClass.Mega
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."GrndManEX.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
