nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.gundels1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","C","G","M","S","T","U","*"})
 
    local props = package:get_card_props()
    props.shortname = "GunDelS1"
    props.damage = 0-0
    props.time_freeze = false
    props.element = Element.None
    props.description = "Hits row 2pnl ahd w/sunshne"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."GunDelS1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
