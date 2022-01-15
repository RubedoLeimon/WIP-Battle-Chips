nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.parabom")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"H","N","P"})
 
    local props = package:get_card_props()
    props.shortname = "ParaBom"
    props.damage = 90
    props.time_freeze = false
    props.element = Element.None
    props.description = "Bomb paralyzes 3 squares ahead"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."ParaBom.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
