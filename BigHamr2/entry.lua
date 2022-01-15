nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.bighamr2")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"G","J","W"})
 
    local props = package:get_card_props()
    props.shortname = "BigHamr2"
    props.damage = 220
    props.time_freeze = false
    props.element = Element.Break
    props.secondary_element = Element.None
    props.description = "Hammr atk smashes in front!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."BigHamr2.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
