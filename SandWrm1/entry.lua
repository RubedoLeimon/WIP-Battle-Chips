nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.sandwrm1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","G","L"})
 
    local props = package:get_card_props()
    props.shortname = "SandWrm1"
    props.damage = 130
    props.time_freeze = false
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Attk enmy from rear w/snakarm"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."SandWrm1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
