nonce = function() end
 
BUSTER_TEXTURE = nil
AUDIO = nil
 
function package_init(package)
    package:declare_package_id("rune.legacy.mushy")
    package:set_icon_texture(Engine.load_texture(_modpath.."icon.png"))
    package:set_preview_texture(Engine.load_texture(_modpath.."preview.png"))
    package:set_codes({"C","H","M","S","Y"})
 
    local props = package:get_card_props()
    props.shortname = "Mushy"
    props.damage = 0-0
    props.time_freeze = true
    props.element = Element.Summon
    props.secondary_element = Element.None
    props.description = "Summons a Mushy to fight!"
   
    -- assign the global resources
    BUSTER_TEXTURE = Engine.load_texture(_modpath.."BunMushyny.png")
    AUDIO = Engine.load_audio(_modpath.."sfx.ogg")
end
