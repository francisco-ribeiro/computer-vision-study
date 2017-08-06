%%

function index = find_template_1D(template, signal)
    found = -1;
    
    widthSignal = size(signal, 2);
    widthTemplate = size(template, 2);
    
    for i=1:(widthSignal - (widthTemplate - 1))
        signalPart = signal(1, i:i+(widthTemplate - 1));
        if signalPart == template
            found = i;
            break
        end
    end
    
    if found == -1
        normalizedCorrelation = normxcorr2(template, signal);
        [maxValue rawIndex] = max(normalizedCorrelation);
        found = rawIndex - size(template, 2) + 1;
    end
    
    index = found;
end
