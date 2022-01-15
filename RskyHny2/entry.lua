nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.riskyhny2")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","R","V"})
 
    local props = package:get_card_props()
    props.shortname = "RskyHny2"
    props.damage = 15
    props.time_freeze = false
    props.element = Element.Wood
    props.secondary_element = Element.None
    props.description = "Bees attk whale hive defending"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."RskyHn2.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
