nonce = function() end

BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.assnswrd")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"H","L","Q"})
 
    local props = package:get_card_props()
    props.shortname = "AssnSwrd"
    props.damage = 240
    props.time_freeze = false
    props.element = Element.Sword
    props.secondary_element = Element.None
    props.description = "Cuts stun'd enmy or enmy on grass, ice, or volcano panl"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."AssnSwrd.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
