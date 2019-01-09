%Douglas Abrams - CS 441
%passed as sig_fn to model

function pulse = light_dark(t, length, strength)
    if (mod( t, length) > length/2)
        pulse = strength;
    else
        pulse = 0;
    end   
end