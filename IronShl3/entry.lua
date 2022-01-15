nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.ironshl3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"L","M","N"})
 
    local props = package:get_card_props()
    props.shortname = "IronShl3"
    props.damage = 130
    props.time_freeze = false
    props.element = Element.Break
    props.secondary_element = Element.None
    props.description = "Fire off piercing shell."
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."IronShl3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
