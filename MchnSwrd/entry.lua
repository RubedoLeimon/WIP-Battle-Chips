nonce = function() end
 

BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.mchnswrd")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"H","L","Q"})
 
    local props = package:get_card_props()
    props.shortname = "MchnSwrd"
    props.damage = 200
    props.time_freeze = false
    props.element = Element.Sword
    props.secondary_element = Element.None
    props.description = "Search and hit stund enemies."
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."MchnSwrd.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
