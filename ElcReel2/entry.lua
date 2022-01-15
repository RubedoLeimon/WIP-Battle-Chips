nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.elcreel2")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"B","Q","Y"})
 
    local props = package:get_card_props()
    props.shortname = "ElcReel2"
    props.damage = 100
    props.time_freeze = false
    props.element = Element.Elec
    props.description = "Elec wire shocks enemies"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."ElcReel2.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
