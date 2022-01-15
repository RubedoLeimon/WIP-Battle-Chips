nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.metlger3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"M","G"})
 
    local props = package:get_card_props()
    props.shortname = "MetlGer3"
    props.damage = 160
    props.time_freeze = true
    props.element = Element.Break
    props.secondary_element = Element.None
    props.description = "Gear crushes enmy area"
    props.card_class = CardClass.Mega
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."MetlGer3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
