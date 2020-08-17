function love.load()
	polys = {}
	p = {}
end

function love.update( dt )
end

function love.draw()
	for _, p in ipairs( polys ) do 
		love.graphics.setColor( p.colour )
		love.graphics.polygon( 'fill', p.shape )
	end
end

local r = math.random

function love.mousepressed( x, y, button )
	print( x, y, button )
	if button == 1 then
		table.insert( p, x )
		table.insert( p, y )
	end
	if button == 2 then
		table.insert( polys, { 
						colour = { 0.5, 0, 0.5 }, 
						shape = p } )
		p = {}
	end
end
