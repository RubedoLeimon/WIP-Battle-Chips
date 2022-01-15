nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.custswrd")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"B","E","L","P","R","S"})
 
    local props = package:get_card_props()
    props.shortname = "CustSwrd"
    props.damage = 10-256
    props.time_freeze = false
    props.element = Element.Sword
    props.secondary_element = Element.None
    props.description = "Cust Gauge = Atk Power"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."CustSwrd.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
