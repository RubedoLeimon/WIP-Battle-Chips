nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.propbom1")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"P","B"})
 
    local props = package:get_card_props()
    props.shortname = "PropBom1"
    props.damage = 120
    props.time_freeze = true
    props.element = Element.Wind
    props.secondary_element = Element.Cursor
    props.description = "Rushing causes an explosion"
    props.card_class = CardClass.Mega
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."PropBom1.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
