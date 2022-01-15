nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.dblsnsr")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"E","J","P","W","Y","*"})
 
    local props = package:get_card_props()
    props.shortname = "DblSnsr"
    props.damage = 100
    props.time_freeze = false
    props.element = Element.Cursor
    props.secondary_element = Element.None
    props.description = "Diagonal dynamite device"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."DblSnsr.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
