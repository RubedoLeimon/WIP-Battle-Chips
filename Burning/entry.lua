nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.burning")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","F","L","S","Z"})
 
    local props = package:get_card_props()
    props.shortname = "Burning"
    props.damage = 150
    props.time_freeze = false
    props.element = Element.Fire
    props.secondary_element = Element.Wind
    props.description = "Dash through enemies!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Burning.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
