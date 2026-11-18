
local _ = {name = "air", param1 = 0}
local L = {name = "ethereal:orange_leaves", param1 = 255}
local l = {name = "ethereal:orange_leaves", param1 = 200}
local t = {name = "default:tree", param1 = 255}
local o = {name = "ethereal:orange", param1 = 200}

ethereal.orangetree = {

	size = {x = 5, y = 6, z = 5},

	yslice_prob = {
		{ypos = 2, prob = 127},
	},

	data = {

	_,_,_,_,_,
	_,_,_,_,_,
	_,_,_,_,_,
	_,_,L,_,_,
	_,_,L,_,_,
	_,_,_,_,_,

	_,_,_,_,_,
	_,_,_,_,_,
	_,_,_,_,_,
	_,o,L,o,_,
	_,L,L,L,_,
	_,_,L,_,_,

	_,_,t,_,_,
	_,_,t,_,_,
	_,_,t,_,_,
	L,L,t,L,L,
	L,t,L,t,L,
	_,L,L,L,_,

	_,_,_,_,_,
	_,_,_,_,_,
	_,_,_,_,_,
	_,o,L,o,_,
	_,L,L,L,_,
	_,_,L,_,_,

	_,_,_,_,_,
	_,_,_,_,_,
	_,_,_,_,_,
	_,_,L,_,_,
	_,_,L,_,_,
	_,_,_,_,_,

	}
}
