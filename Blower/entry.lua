nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.blower")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"P","R","T","W","Z","*"})
 
    local props = package:get_card_props()
    props.shortname = "Blower"
    props.damage = 20
    props.time_freeze = false
    props.element = Element.Fire
    props.secondary_element = Element.Wind
    props.description = "An 8-hit tornado 2 sq ahead"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Blower.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
