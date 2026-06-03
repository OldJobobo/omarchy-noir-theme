-- Noir Hyprland theme include.
local activeBorderColor = {
	colors = { "rgb(4a4036)", "rgb(a67a43)", "rgb(c29b67)", "rgb(4a4036)" },
	angle = 42,
}
local inactiveBorderColor = {
	colors = { "rgba(47413dcc)", "rgba(4a403699)", "rgba(47413dcc)" },
	angle = 42,
}
local activeShadowColor = "rgba(00000099)"
local inactiveShadowColor = "rgba(00000055)"

hl.config({
	general = {
		col = {
			active_border = activeBorderColor,
			inactive_border = inactiveBorderColor,
		},
		border_size = 2,
		gaps_in = 6,
		gaps_out = 12,
	},
	group = {
		col = {
			border_active = activeBorderColor,
			border_inactive = inactiveBorderColor,
		},
	},
	decoration = {
		rounding = 0,
		dim_inactive = true,
		dim_strength = 0.14,
		active_opacity = 1.0,
		inactive_opacity = 0.96,
		blur = {
			enabled = true,
			size = 3,
			passes = 2,
			noise = 0.05,
			contrast = 0.1,
			vibrancy = 0.1,
			vibrancy_darkness = 0.1,
		},
		shadow = {
			enabled = true,
			range = 14,
			render_power = 3,
			offset = "2 3",
			color = activeShadowColor,
			color_inactive = inactiveShadowColor,
		},
	},
	animations = {
		enabled = true,
	},
})

hl.curve("noirEase", { type = "bezier", points = { { 0.24, 0.9 }, { 0.2, 1.0 } } })

local function noirAnimation(leaf, speed, style)
	local animation = {
		leaf = leaf,
		enabled = true,
		speed = speed,
		bezier = "noirEase",
	}

	if style then
		animation.style = style
	end

	hl.animation(animation)
end

noirAnimation("windows", 4)
noirAnimation("windowsIn", 5, "popin 20%")
noirAnimation("windowsOut", 4, "popin 75%")
noirAnimation("border", 5)
noirAnimation("fade", 4)
noirAnimation("fadeIn", 4)
noirAnimation("fadeOut", 3)
noirAnimation("layers", 4)
noirAnimation("layersIn", 4, "fade")
noirAnimation("layersOut", 3, "fade")
noirAnimation("fadeLayersIn", 4)
noirAnimation("fadeLayersOut", 3)
noirAnimation("workspaces", 4)
noirAnimation("specialWorkspace", 4, "slidevert")
