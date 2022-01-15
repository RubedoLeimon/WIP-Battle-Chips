nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.bighamr3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"D","V","Z"})
 
    local props = package:get_card_props()
    props.shortname = "BigHamr3"
    props.damage = 280
    props.time_freeze = false
    props.element = Element.Break
    props.secondary_element = Element.None
    props.description = "Hammr atk smashes in front!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."BigHamr3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
