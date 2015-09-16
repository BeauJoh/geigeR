
source('generator.R')
source('player.R')
source('recorder.R')

#for instance:
x <- generateSignal(number_of_seconds=1.0,
                    sample_rate=44100,
                    frequency=1.3,
                    amplitude=100) 
#plot(x,type='l')
playSignal(x,sample_rate=44100,bits_per_sample=8)
saveSignal(x,"sample_wave.wav",sample_rate=44100,bits_per_sample=8)

#now onto the real work!
my_number_of_seconds <- 1
my_sample_rate <- 44100
my_bits_per_sample <- 8
my_range_of_frequencies <- runif(20,0.1,5)

for(my_frequency in my_range_of_frequencies){
    #geiger counters have amplitudes that gitter (in this case random numbers
    #generating frequencies from 50-100)
    my_amplitude <- runif(1,50,100) 
    #generate it 
    my_signal <- generateSignal(number_of_seconds=my_number_of_seconds,
                                sample_rate=my_sample_rate,
                                frequency=my_frequency,
                                amplitude=my_amplitude)
   
    #play it 
    playSignal(signal=my_signal,
               sample_rate=my_sample_rate,
               bits_per_sample=my_bits_per_sample)
   
    #save it 
    my_filename <- sprintf("frequency_%1.2f_wave.wav",my_frequency)
    saveSignal(signal=my_signal,
               filename=my_filename,
               sample_rate=my_sample_rate,
               bits_per_sample=my_bits_per_sample)
    
    wait(my_number_of_seconds)
}

