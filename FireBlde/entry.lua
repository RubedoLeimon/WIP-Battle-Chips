nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.fireblde")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"F","H","P","R","Z","*"})
 
    local props = package:get_card_props()
    props.shortname = "FireBlde"
    props.damage = 90
    props.time_freeze = false
    props.element = Element.Fire
    props.secondary_element = Element.Sword
    props.description = "Flame: Cuts 2 horiz."
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."FireBlde.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
