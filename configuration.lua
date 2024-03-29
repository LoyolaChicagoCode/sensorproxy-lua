local device = "/dev/input/event0"

sensors = {
  baumhart = {
    ts42i = {
      nitrogen = {
	no = {
	  current = function() return 500 + read_sensor(device, 7) end,
	  min = function() return 500 end,
	  max = function() return 800 end
	},
	no2 = {
	  current = function() return 700 + read_sensor(device, 5) end,
	  min = function() return 700 end,
	  max = function() return 1000 end
	},
	nox = {
	  current = function() return 1200 + read_sensor(device, 6) end,
	  min = function() return 1200 end,
	  max = function() return 1500 end
	}
      }
    }
  }
}
