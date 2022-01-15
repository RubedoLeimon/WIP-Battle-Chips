nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.cornsht1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"J","K","L"})
 
    local props = package:get_card_props()
    props.shortname = "CornSht1"
    props.damage = 50
    props.time_freeze = false
    props.element = Element.Wood
    props.secondary_element = Element.None
    props.description = "Damages enemies w/corn"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."CornSht1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
