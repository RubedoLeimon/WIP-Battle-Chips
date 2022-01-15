nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.machgun2")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"E","G","S"})
 
    local props = package:get_card_props()
    props.shortname = "MachGun2"
    props.damage = 50
    props.time_freeze = false
    props.element = Element.Cursor
    props.secondary_element = Element.None
    props.description = "Fire 9sts at row w/clst enmy"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."MachGun2.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
