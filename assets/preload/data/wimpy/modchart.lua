function start(song) -- do nothing
    spinLength = 0
end

function update(elapsed)

    if curStep > 1016 then
          boyfriend.playAnim('hey', true)
        end

    if curStep > 1020 then
        if spinLength < 32 then
            spinLength = spinLength + 0.2
        end


        local currentBeat = (songPos / 1000)*(bpm/60)
		for i=0,7,1 do
            local receptor = _G['receptor_'..i]
            receptor.angle = (spinLength / 7) * -math.sin((currentBeat + i*0.25) * math.pi)
			receptor.x = receptor.defaultX + spinLength * math.sin((currentBeat + i*0.25) * math.pi)
		end
    end
end

function beatHit(beat) -- do nothing

end

function stepHit(step) -- do nothing

end

function playerTwoTurn()
    camGame.tweenZoom(camGame,1.3,(crochet * 4) / 1000)
end

function playerOneTurn()
    camGame.tweenZoom(camGame,1,(crochet * 4) / 1000)
end