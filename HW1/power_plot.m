function power_plot(filter)

    power = [];
    frequencies = 0.1:0.1:100;
    
    for f = frequencies
        power = [power filter_power(filter, f)];
    end
    
    plot(frequencies, power); 

end