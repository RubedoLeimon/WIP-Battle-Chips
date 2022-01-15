nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.leafshld")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"A","D","R","S","W","*"})
 
    local props = package:get_card_props()
    props.shortname = "LeafShld"
    props.damage = 0-0
    props.time_freeze = true
    props.element = Element.None
    props.secondary_element = Element.None
    props.description = "Next attack heals you"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."LeafShld.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
