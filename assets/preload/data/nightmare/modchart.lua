function start(song)
    spinLength = 9
end


function update(elapsed)

    if curStep == 1 then
        if spinLength < 32 then
            spinLength = spinLength + 6
        end


        local currentBeat = (songPos / 1000)*(bpm/60)
	for i=0,7,1 do
            local receptor = _G['receptor_'..i]
            receptor.angle = (spinLength / 7) * -math.sin((currentBeat + i*9) * math.pi)
	    receptor.x = receptor.defaultX + spinLength * math.sin((currentBeat + i*7) * math.pi)
	    receptor.y = receptor.defaultY + spinLength * math.cos((currentBeat + i*4) * math.pi)
        end
    end
end

function playerTwoTurn()
    camGame:tweenZoom(0.7,(crochet * 4) / 1000)
end

function playerOneTurn()
    camGame:tweenZoom(0.7,(crochet * 4) / 1000)
end