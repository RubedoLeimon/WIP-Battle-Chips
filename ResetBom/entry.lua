nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.resetbom")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"D","I","O"})
 
    local props = package:get_card_props()
    props.shortname = "ResetBom"
    props.damage = 100
    props.time_freeze = false
    props.element = Element.None
    props.description = "Reduces power 3 squares ahead"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."ResetBom.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
