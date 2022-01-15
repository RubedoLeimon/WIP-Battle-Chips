nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.bassanly")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","B","X"})
 
    local props = package:get_card_props()
    props.shortname = "BassAnly"
    props.damage = 160
    props.time_freeze = true
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "4 rings from hell"
    props.card_class = CardClass.Giga
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."BassAnly.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
