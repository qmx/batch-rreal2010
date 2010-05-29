def converte_video(origem, destino)
	Bj.submit "ffmpeg -i #{origem} #{destino}"
end

