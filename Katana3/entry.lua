nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.katana3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","J","Z"})
 
    local props = package:get_card_props()
    props.shortname = "Katana3"
    props.damage = 100
    props.time_freeze = false
    props.element = Element.Sword
    props.secondary_element = Element.None
    props.description = "Cuts twice, once wide once long"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Katana3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
