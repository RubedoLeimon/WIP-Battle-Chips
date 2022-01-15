nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.protomansp")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"B","*"})
 
    local props = package:get_card_props()
    props.shortname = "ProtoManSP"
    props.damage = 200
    props.time_freeze = true
    props.element = Element.Sword
    props.secondary_element = Element.None
    props.description = "Rush up to enemy and slice"
    props.card_class = CardClass.Mega
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."ProtoManSP.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
