%Douglas Abrams - CS 441
%returns the indexes of the local maxima/minima in vals

function [peakIndexes, troughIndexes] = getPeaksTroughs(vals)
    diffVals = diff(vals);
    cursign = '';
    nextsign = '';
    peakIndexes = [];
    troughIndexes = [];

    for i = 1:length(diffVals)-1;
        if cursign > nextsign;
            peakIndexes(length(peakIndexes)+1) = i;
        end
        if cursign < nextsign;
            troughIndexes(length(troughIndexes)+1) = i;
        end
        if diffVals(i)>0;
            cursign = 1;
        else
            cursign = -1;
        end 

        if diffVals(i+1)>0  
            nextsign = 1;
        else
            nextsign = -1;

        end;
    end;

    peakIndexes = peakIndexes;
    troughIndexes = troughIndexes;
end
