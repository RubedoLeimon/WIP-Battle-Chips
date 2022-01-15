nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.rockarm1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"D","H","J","O","P","*"})
 
    local props = package:get_card_props()
    props.shortname = "RockArm1"
    props.damage = 100
    props.time_freeze = false
    props.element = Element.Break
    props.secondary_element = Element.None
    props.description = "Paralyzes enemy w/erthquake"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."RockArm1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
