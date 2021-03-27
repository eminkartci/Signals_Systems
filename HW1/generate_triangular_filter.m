

function [triangularFilter] = generate_triangular_filter(cutoffFrequency) 

    x = ones(1,cutoffFrequency);
 
    triangularFilter = conv(x,x);
    
    % stem(triangularFilter)
    
end