%Douglas Abrams
%CS 441
%generate parameter sets at different levels of perturbation

function [p, cellp] = gen_perturbedParamSets(ncell, params) 
    p = zeros(73, ncell);
    cellp = cell(1, size(p, 1));

    for t = 1:ncell

        %perturb
        for i = 1:size(params,2)
            %dont perturb some parameters
            if i >= 1 && i <= 55
                p(i, t) = abs((params(i)/200).*randn(1,1)+params(i)); 
            else
                p(i, t) = params(i);
            end
        end

        %go through the vectors in p
        for k = 1 : size(p,1),
            cellp{k} = p(k,:)';

        end
    end

end