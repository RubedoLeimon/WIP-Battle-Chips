nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.metagel2")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"E","F","G","P","S"})
 
    local props = package:get_card_props()
    props.shortname = "MetaGel2"
    props.damage = 130
    props.time_freeze = true
    props.element = Element.Aqua
    props.secondary_element = Element.None
    props.description = "Gel atk steals a panel!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."MetaGel2.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
