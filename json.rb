obj = {
    soccer_ball: {weight: 410, colors: [:red, :blue]},
    tennis_ball: {weight: 58, colors: [:yellow, :white]},
    golf_ball: {weight: 45, colors: [:white]}
}

p arr = obj[:tennis_ball][:colors]
puts weight = obj[:golf_ball][:weight]
obj[:tennis_ball][:colors].push(:green)
p obj