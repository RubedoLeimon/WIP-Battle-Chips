nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.timebom2")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","D","E"})
 
    local props = package:get_card_props()
    props.shortname = "TimeBom2"
    props.damage = 190
    props.time_freeze = true
    props.element = Element.Summon
    props.secondary_element = Element.None
    props.description = "An area-wide time bomb"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."TimeBom2.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
