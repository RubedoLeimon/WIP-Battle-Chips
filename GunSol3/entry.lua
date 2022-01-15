nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.gundels3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","D","G","M","N","O","T"})
 
    local props = package:get_card_props()
    props.shortname = "GunDelS3"
    props.damage = 0-0
    props.time_freeze = false
    props.element = Element.None
    props.description = "Hits row 2pnl ahd w/sunshne"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."GunDelS3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
