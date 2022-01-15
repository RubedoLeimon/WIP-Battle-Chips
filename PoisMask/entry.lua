nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.poismask")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"D","S","U","W","Z","*"})
 
    local props = package:get_card_props()
    props.shortname = "PoisMask"
    props.damage = 0-0
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Poison 1 panel with A button!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."PoisMask.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
