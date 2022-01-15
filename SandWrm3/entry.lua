nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.sandwrm3")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"H","J","S"})
 
    local props = package:get_card_props()
    props.shortname = "SandWrm3"
    props.damage = 170
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Attk enmy from rear w/snakarm"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."SandWrm3.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
