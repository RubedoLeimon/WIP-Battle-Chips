nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.bugrswrd")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"V"})
 
    local props = package:get_card_props()
    props.shortname = "BugRSwrd"
    props.damage = 0-0
    props.time_freeze = true
    props.element = Element.Sword
    props.secondary_element = Element.None
    props.description = "Use Bug Frag with DrkSword!"
    props.card_class = CardClass.Giga
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."BugRSwrd.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
