nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.satelit2")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"H","J","K","P","R","*"})
 
    local props = package:get_card_props()
    props.shortname = "Satelit2"
    props.damage = 80
    props.time_freeze = false
    props.element = Element.Elec
    props.secondary_element = Element.None
    props.description = "A floating & spinning satellite"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Satelit2.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
