data:extend({
	{
		type = "damage-type",
		name = "corrosion"
	},
	{
		type = "explosion",
		name = "wisp-flash",
		flags = {"not-on-map", "placeable-off-grid"},
		animations =
		{
			{
				filename = "__Will-o-the-Wisps_updated__/graphics/null.png",
				priority = "high",
				width = 0,
				height = 0,
				frame_count = 1,
				animation_speed = 0.03,
				shift = {0, 0}
			}
		},
		rotate = false,
		light = {intensity = 0.7, size = 4},
	},
	{
		type = "explosion",
		name = "wisp-flash-attack",
		flags = {"not-on-map", "placeable-off-grid"},
		animations =
		{
			{
				filename = "__Will-o-the-Wisps_updated__/graphics/null.png",
				priority = "high",
				width = 0,
				height = 0,
				frame_count = 1,
				animation_speed = 0.4,
				shift = {0, 0}
			}
		},
		rotate = false,
		light = {intensity = 0.6, size = 2, color = {r=0.2, g=0.9, b=0.4, a=0.1}}
	},
	{
		type = "beam",
		name = "wisp-orange-beam",
		flags = {"not-on-map"},
		width = 0.5,
		damage_interval = 20,
		working_sound =
		{
			{
				filename = "__base__/sound/fight/electric-beam.ogg",
				volume = 0.7
			}
		},
		action =
		{
			type = "direct",
			action_delivery =
			{
				type = "instant",
				target_effects =
				{
					{
						type = "damage",
						damage = { amount = 6, type = "electric"}
					}
				}
			}
		},
		start =
		{
			filename = "__Will-o-the-Wisps_updated__/graphics/entity/wisp-orange-beam/beam-start.png",
			line_length = 4,
			width = 52,
			height = 40,
			frame_count = 16,
			axially_symmetrical = false,
			direction_count = 1,
			shift = {-0.03125, 0},
		},
		ending =
		{
			filename = "__Will-o-the-Wisps_updated__/graphics/entity/wisp-orange-beam/beam-end.png",
			line_length = 4,
			width = 49,
			height = 54,
			frame_count = 16,
			axially_symmetrical = false,
			direction_count = 1,
			shift = {-0.046875, 0},
		},
		head =
		{
			filename = "__Will-o-the-Wisps_updated__/graphics/entity/wisp-orange-beam/beam-head.png",
			line_length = 16,
			width = 45,
			height = 39,
			frame_count = 16,
			animation_speed = 0.5,
			blend_mode = beam_blend_mode,
		},
		tail =
		{
			filename = "__Will-o-the-Wisps_updated__/graphics/entity/wisp-orange-beam/beam-tail.png",
			line_length = 16,
			width = 45,
			height = 39,
			frame_count = 16,
			blend_mode = beam_blend_mode,
		},
		body =
		{
			{
				filename = "__Will-o-the-Wisps_updated__/graphics/entity/wisp-orange-beam/beam-body-1.png",
				line_length = 16,
				width = 45,
				height = 39,
				frame_count = 16,
				blend_mode = beam_blend_mode,
			},
			{
				filename = "__Will-o-the-Wisps_updated__/graphics/entity/wisp-orange-beam/beam-body-2.png",
				line_length = 16,
				width = 45,
				height = 39,
				frame_count = 16,
				blend_mode = beam_blend_mode,
			},
			{
				filename = "__Will-o-the-Wisps_updated__/graphics/entity/wisp-orange-beam/beam-body-3.png",
				line_length = 16,
				width = 45,
				height = 39,
				frame_count = 16,
				blend_mode = beam_blend_mode,
			},
			{
				filename = "__Will-o-the-Wisps_updated__/graphics/entity/wisp-orange-beam/beam-body-4.png",
				line_length = 16,
				width = 45,
				height = 39,
				frame_count = 16,
				blend_mode = beam_blend_mode,
			},
			{
				filename = "__Will-o-the-Wisps_updated__/graphics/entity/wisp-orange-beam/beam-body-5.png",
				line_length = 16,
				width = 45,
				height = 39,
				frame_count = 16,
				blend_mode = beam_blend_mode,
			},
			{
				filename = "__Will-o-the-Wisps_updated__/graphics/entity/wisp-orange-beam/beam-body-6.png",
				line_length = 16,
				width = 45,
				height = 39,
				frame_count = 16,
				blend_mode = beam_blend_mode,
			}
		}
	}
})
