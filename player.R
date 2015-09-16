library('audio')

queryAudioDevices <- function(){
    #show available audio drivers
    print("The available audio drivers are:")
    print(audio.drivers())

    print("Of which the currently used driver is:")
    print(current.audio.driver())

    #to change the audio driver modify this (where 'name' is a suitable driver
    #set.audio.driver(name)
}

playSignal <- function(signal,
                       sample_rate,
                       bits_per_sample){

    #create audio signal
    x <- audioSample(signal,sample_rate,bits=bits_per_sample)
    play(x)
}
