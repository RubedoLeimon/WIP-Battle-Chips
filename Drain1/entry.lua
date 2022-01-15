nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.drain1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","B","D","K","O"})
 
    local props = package:get_card_props()
    props.shortname = "Drain1"
    props.damage = 50
    props.time_freeze = true
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Charge to drain HP from enemy"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Drain1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end