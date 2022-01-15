nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.elecdrgn")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","L","V"})
 
    local props = package:get_card_props()
    props.shortname = "ElecDrgn"
    props.damage = 150
    props.time_freeze = false
    props.element = Element.Elec
    props.secondary_element = Element.None
    props.description = "Drgn near clst enmy, Hit 2 rows"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."ElecDrgn.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
