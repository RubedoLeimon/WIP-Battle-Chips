nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.wooddrgn")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"G","T","V"})
 
    local props = package:get_card_props()
    props.shortname = "WoodDrgn"
    props.damage = 130
    props.time_freeze = false
    props.element = Element.Wood
    props.secondary_element = Element.None
    props.description = "Drgn near clst enmy, Hit 2 rows"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."WoodDrgn.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
