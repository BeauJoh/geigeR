
generateSignal <- function (number_of_seconds,
                            sample_rate,
                            frequency,
                            amplitude){
    
    signal <- seq(0,number_of_seconds,by=(1/sample_rate))
    return(sin(2*pi*signal*frequency)*amplitude)
}

