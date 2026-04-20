extends AudioStreamPlayer

func play_track(stream: AudioStream):
	self.stream = stream
	play()
