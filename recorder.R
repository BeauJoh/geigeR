library('audio')

saveSignal <- function(signal,filename,sample_rate,bits_per_sample){
    x <- audioSample(signal,sample_rate,bits=bits_per_sample)
    save.wave(x,filename)
}

