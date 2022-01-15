nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.static")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"G","S","V"})
 
    local props = package:get_card_props()
    props.shortname = "Static"
    props.damage = 20
    props.time_freeze = true
    props.element = Element.None
    props.description = "A static blast 2sq ahead"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Static.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
