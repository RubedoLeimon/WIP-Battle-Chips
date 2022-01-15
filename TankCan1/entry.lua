nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.tankcan1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","E","G","P","R"})
 
    local props = package:get_card_props()
    props.shortname = "TankCan1"
    props.damage = 120
    props.time_freeze = false
    props.element = Element.None
    props.description = "3sqr blast if hits end row"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."TankCan1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
