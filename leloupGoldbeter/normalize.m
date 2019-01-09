function U = normalize(M)
top = max(M);
bot = min(M);
scale = (top - bot)*0.5;
U = M;%/scale;