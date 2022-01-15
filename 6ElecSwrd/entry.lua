nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.elecswrd")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"E","K","N"})
 
    local props = package:get_card_props()
    props.shortname = "ElecSwrd"
    props.damage = 120
    props.time_freeze = false
    props.element = Element.Elec
    props.secondary_element = Element.Sword
    props.description = "Elec: Cuts fwd 3 squares"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."ElecSwrd.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
