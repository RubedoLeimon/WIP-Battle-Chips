nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.timebom1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"F","G","H"})
 
    local props = package:get_card_props()
    props.shortname = "TimeBom1"
    props.damage = 150
    props.time_freeze = true
    props.element = Element.Summon
    props.secondary_element = Element.None
    props.description = "An area-wide time bomb"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."TimeBom1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
