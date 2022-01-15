nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.elemrage")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"E","K","W"})
 
    local props = package:get_card_props()
    props.shortname = "ElemRage"
    props.damage = 90
    props.time_freeze = false
    props.element = Element.None
    props.description = "Powers Up when over elemental square"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."ElemRage.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
