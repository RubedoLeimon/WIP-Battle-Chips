nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.varswrd")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"B","E","K","L","P","R","S","V","W"})
 
    local props = package:get_card_props()
    props.shortname = "VarSwrd"
    props.damage = 160
    props.time_freeze = false
    props.element = Element.Sword
    props.secondary_element = Element.None
    props.description = "A magical, shifting sword"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."VarSwrd.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
