nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.woodpwdr")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"F","T","W"})
 
    local props = package:get_card_props()
    props.shortname = "WoodPwdr"
    props.damage = 100
    props.time_freeze = false
    props.element = Element.Wood
    props.description = "Powers Up when over elemental square"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."WoodPwdr.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
