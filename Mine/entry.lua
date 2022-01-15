nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.mine")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","H","I","H","P","T","Z"})
 
    local props = package:get_card_props()
    props.shortname = "Mine"
    props.damage = 250
    props.time_freeze = true
    props.element = Element.Summon
    props.secondary_element = Element.None
    props.description = "Places a mine in enmy area"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."Mine.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
