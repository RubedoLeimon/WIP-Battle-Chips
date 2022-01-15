nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.riskyhny1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"B","G","S"})
 
    local props = package:get_card_props()
    props.shortname = "RskyHny1"
    props.damage = 10
    props.time_freeze = false
    props.element = Element.Wood
    props.secondary_element = Element.None
    props.description = "Bees attk whale hive defending"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."RskyHn1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
