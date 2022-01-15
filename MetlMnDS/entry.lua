nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.metalmands")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"M"})
 
    local props = package:get_card_props()
    props.shortname = "MetalManDS"
    props.damage = 190
    props.time_freeze = true
    props.element = Element.Break
    props.secondary_element = Element.None
    props.description = "Iron fist smashes 1 square!"
    props.card_class = CardClass.Mega
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."MetalManDS.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
