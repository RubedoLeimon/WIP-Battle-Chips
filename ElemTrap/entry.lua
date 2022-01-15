nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.elemtrap")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"G","S","U","*"})
 
    local props = package:get_card_props()
    props.shortname = "ElemTrap"
    props.damage = 240
    props.time_freeze = true
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Trap enmy and attk with elem"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."ElemTrap.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
