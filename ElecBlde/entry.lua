nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.elecblde")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"E","F","M","N","R","*"})
 
    local props = package:get_card_props()
    props.shortname = "ElecBlde"
    props.damage = 90
    props.time_freeze = false
    props.element = Element.Elec
    props.secondary_element = Element.Sword
    props.description = "Elec: Cuts 2 horiz."
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."ElecBlde.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
