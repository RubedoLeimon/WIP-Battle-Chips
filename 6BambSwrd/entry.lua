nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.bambswrd")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"H","S","W"})
 
    local props = package:get_card_props()
    props.shortname = "BambSwrd"
    props.damage = 150
    props.time_freeze = false
    props.element = Element.Wood
    props.secondary_element = Element.Sword
    props.description = "Wood: Cuts fwd 3 squares"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."BambSwrd.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
