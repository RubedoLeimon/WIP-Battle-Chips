nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.stepswrd")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"B","L","P"})
 
    local props = package:get_card_props()
    props.shortname = "StepSwrd"
    props.damage = 160
    props.time_freeze = false
    props.element = Element.Sword
    props.secondary_element = Element.None
    props.description = "Two steps, then use a wide sword"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."StepSwrd.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
