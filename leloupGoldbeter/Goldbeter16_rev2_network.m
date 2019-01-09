%Douglas Abrams - CS 441
% Runs the simulation for ncell cells COUPLED
% This file is similar to Goldbeter16_rev2, but add the CREB signaling
% pathway and entrainment by VIP.
% If sig_fn is supplied, it should be a handle to an external VIP
% signaling function.
function dydt = Goldbeter16_rev2_network(t,y,p,ncell,network, length, strength, sig_fn,regions)

if nargin < 6,
    sig_fn = [];
end;

MP = y(1:ncell);
MC = y(ncell+1:2*ncell);
MB = y((3-1)*ncell+1:3*ncell);
PC = y((4-1)*ncell+1:4*ncell);
CC = y((5-1)*ncell+1:5*ncell);
PCP = y((6-1)*ncell+1:6*ncell);
CCP = y((7-1)*ncell+1:7*ncell);
PCC = y((8-1)*ncell+1:8*ncell);
PCN = y((9-1)*ncell+1:9*ncell);
PCCP = y((10-1)*ncell+1:10*ncell);
PCNP = y((11-1)*ncell+1:11*ncell);
BC = y((12-1)*ncell+1:12*ncell);
BCP = y((13-1)*ncell+1:13*ncell);
BN = y((14-1)*ncell+1:14*ncell);
BNP = y((15-1)*ncell+1:15*ncell);
IN = y((16-1)*ncell+1:16*ncell);
CB = y((17-1)*ncell+1:17*ncell); % new state

k1 = p{1};
k2 = p{2};
k3 = p{3};
k4 = p{4};
k5 = p{5};
k6 = p{6};
k7 = p{7};
k8 = p{8};
KAP = p{9};
KAC = p{10};
KIB = p{11};
kdmb = p{12};
kdmc = p{13};
kdmp = p{14};
kdnc = p{15};
kdn = p{16};
Kd = p{17};
Kdp = p{18};
Kp = p{19};
KmB = p{20};
KmC = p{21};
KmP = p{22};
ksB = p{24};
ksC = p{25};
ksP = p{26};
n = p{27};
m = p{28};
V1B = p{30};
V1C = p{31};
V1P = p{32};
V1PC = p{33};
V2B = p{34};
V2C = p{35};
V2P = p{36};
V2PC = p{37};
V3B = p{38};
V3PC = p{39};
V4B = p{40};
V4PC = p{41};
vdBC = p{42};
vdBN = p{43};
vdCC = p{44};
vdIN = p{45};
vdPC = p{46};
vdPCC = p{47};
vdPCN = p{48};
vmB = p{49};
vmC = p{50};
vmP = p{51};
vsB = p{53};
vsC = p{54};
vsP = p{55}; % no longer used because we use vsP0

% some of these are for signaling
eta = p{59};
CeqM = p{60};
k = p{61};
v0 = p{62};
v1 = p{63};
v2 = v1;
vP = p{64};
VMK = p{65};
Ka = p{66};
K_1 = p{67};
K_2 = p{68};
WT = p{69};
CBT = p{70};
KC = p{71};
a = p{56};
vsP0= p{72};
vmC0= p{73};

scale = 25;
KD = p{58};%*scale;

r = 12*MP./(4+MP);
g = zeros(size(r));

for i = 1:ncell;
    if sum(network(:,i))==0
        g(i)=0;
    else
        g(i) = 1/nnz(network(:,i)) * dot(r,network(:,i));
    end
end

% Increase the receptor saturation if there is a VIP signal
if ~isempty(sig_fn),
    sig = sig_fn(t, length, strength);
else
    sig = 0;
end;
sig = sig*regions;
g = g + sig;
beta = g./(KD+g);

% Compute the algebraic variables for the signaling pathway in each cell
% (using vector operations)
CCa = (v0+v1.*beta)./k;
vK = VMK.*CCa./(Ka+CCa);
vsPc = vsP0+CBT.*CB./(KC+CB);


dydt=zeros(16*ncell,1);
dydt(1:ncell,1) = vsPc.*BN.^n./(KAP.^n+BN.^n)-vmP.*MP./(KmP+MP)-kdmp.*MP;
dydt((2-1)*ncell+1:2*ncell,1) = vsC.*BN.^n./(KAC.^n+BN.^n)-vmC.*MC./(KmC+MC)-kdmc.*MC;
dydt((3-1)*ncell+1:3*ncell,1) = vsB.*KIB.^m./(KIB.^m+BN.^m)-vmB.*MB./(KmB+MB)-kdmb.*MB;

dydt((4-1)*ncell+1:4*ncell,1) = ksP.*MP-V1P.*PC./(Kp+PC)+V2P.*PCP./(Kdp+PCP)+k4.*PCC-k3.*PC.*CC-kdn.*PC;
dydt((5-1)*ncell+1:5*ncell,1) = ksC.*MC-V1C.*CC./(Kp+CC)+V2C.*CCP./(Kdp+CCP)+k4.*PCC-k3.*PC.*CC-kdnc.*CC;
dydt((6-1)*ncell+1:6*ncell,1) = V1P.*PC./(Kp+PC)-V2P.*PCP./(Kdp+PCP)-vdPC.*PCP./(Kd+PCP)-kdn.*PCP;
dydt((7-1)*ncell+1:7*ncell,1) = V1C.*CC./(Kp+CC)-V2C.*CCP./(Kdp+CCP)-vdCC.*CCP./(Kd+CCP)-kdn.*CCP;

dydt((8-1)*ncell+1:8*ncell,1) = -V1PC.*PCC./(Kp+PCC)+V2PC.*PCCP./(Kdp+PCCP)-k4.*PCC+k3.*PC.*CC+k2.*PCN-k1.*PCC-kdn.*PCC;
dydt((9-1)*ncell+1:9*ncell,1) = -V3PC.*PCN./(Kp+PCN)+V4PC.*PCNP./(Kdp+PCNP)-k2.*PCN+k1.*PCC-k7.*BN.*PCN+k8.*IN-kdn.*PCN;
dydt((10-1)*ncell+1:10*ncell,1) = V1PC.*PCC./(Kp+PCC)-V2PC.*PCCP./(Kdp+PCCP)-vdPCC.*PCCP./(Kd+PCCP)-kdn.*PCCP;
dydt((11-1)*ncell+1:11*ncell,1) = V3PC.*PCN./(Kp+PCN)-V4PC.*PCNP./(Kdp+PCNP)-vdPCN.*PCNP./(Kd+PCNP)-kdn.*PCNP;

dydt((12-1)*ncell+1:12*ncell,1) = ksB.*MB-V1B.*BC./(Kp+BC)+V2B.*BCP./(Kdp+BCP)-k5.*BC+k6.*BN-kdn.*BC;
dydt((13-1)*ncell+1:13*ncell,1) = V1B.*BC./(Kp+BC)-V2B.*BCP./(Kdp+BCP)-vdBC.*BCP./(Kd+BCP)-kdn.*BCP;
dydt((14-1)*ncell+1:14*ncell,1) = -V3B.*BN./(Kp+BN)+V4B.*BNP./(Kdp+BNP)+k5.*BC-k6.*BN-k7.*BN.*PCN+k8.*IN-kdn.*BN;
dydt((15-1)*ncell+1:15*ncell,1) = V3B.*BN./(Kp+BN)-V4B.*BNP./(Kdp+BNP)-vdBN.*BNP./(Kd+BNP)-kdn.*BNP;
dydt((16-1)*ncell+1:16*ncell,1) = -k8.*IN+k7.*BN.*PCN-vdIN.*IN./(Kd+IN)-kdn.*IN;
dydt((17-1)*ncell+1:17*ncell,1) = (vP./WT).*(vK./vP.*(1-CB)./(K_1+1-CB)-CB./(K_2+CB));


