power = linspace(30, 45,14);
power5 = linspace(30, 45,13);
power2 = linspace(30, 55, 25)';
power4 = linspace(30, 55,25);
power3 = linspace(30, 55, 24)';

%_full_precoder_PCS_BER

sc_8_full_precoder_PCS_BER    =[1.0862755129521746 1.5580349769906077 1.6554255206907351 1.7948510416656362 2.090521885145432 2.392807934817923  3.000444499088741 2.9967336836538525 2.99956955126475 2.9982152972738554 2.998835013953413 2.9955084670360574 2.9955084670360574 2.9955084670360574];
ber_8_full_precoder_PCS_BER   =[0.0037995306825008425 0.0037995306825008425 0.0037995306825008425 0.0037995306825008425 0.0037995306825008425 0.0037995306825008425 0.0037995306825008425 0.0034290173306368668 0.002713398649302696 0.00153825702356752 0.0007196539909571732 0.0004033297888218725 2.6612057006502138e-05 3.6612057006502138e-06 ];
sc_16_full_precoder_PCS_BER   =[1.4250315746190796 1.6197437223556324 1.7697437223556324 1.9197437223556324 2.142546367872558 2.497313359853921 2.8654146267049136 3.3654146267049136 3.8654146267049136 3.975387177927016 3.975387177927016 3.975387177927016 3.9909297904283285 3.993442592287326];
% sc_16_full_precoder_PCS_BER   =[0.8309650785247182 1.6197437223556324 1.7697437223556324 1.9197437223556324 2.142546367872558 2.497313359853921 2.8654146267049136 3.3654146267049136 3.8654146267049136 3.975387177927016 3.975387177927016 3.975387177927016 3.9909297904283285 3.993442592287326];
ber_16_full_precoder_PCS_BER  =[0.0037995306825008425 0.003792461388123184 0.0037532025352603254 0.0037532025352603254 0.0037532025352603254 0.0037532025352603254 0.0037984288089369885 0.0037984288089369885 0.0037984288089369885  0.0035863359988271837 0.0030092289162570976 0.0027575154472743732 0.002900867291552173 2.0528996114012232e-05];

%lost first 3
sc_8_uni_BER =[ 0 0 0 0 0 0 3.00040824063793 3.0004308613930775 3.0004169326480716 3.00040824063793 3.00040824063793 3.00040824063793 3.00040824063793 3.00040824063793];%44
ber_8_uni_BER =[1 1 1 1 1 0.003716267575068979 0.0037999175457725707 0.0037946540853919784 0.002431762419740194 0.0016870230115239485 0.0011435480439976498  3.625392561350484e-05 1.625392561350484e-05 6.6336402247504e-16];
sc_16_uni_BER  =[0 0 0 0 0 0 0 0 0.8009089880512432 4.00 4.0 4.0 4. 4. ];%42
ber_16_uni_BER=[ 1 1 1 1 1 1 1 1 0.0033937960276812975  0.0037946540853919784 0.003087235942971496 0.001639429385275525 0.001080075477681931 1.0579517094900727e-05];
% 986e-05 0.00012130597764284432 2.0349805658942916e-08 1.8247157233022165e-05 1.529986540000907e-05 1.529986540000907e-05 9.105779871152948e-07 3.030847410001596e-36];


f = fit(power',sc_8_full_precoder_PCS_BER','smoothingspline','SmoothingParam',0.182242591);
coeffs = coeffvalues(f);
sc_8_full_precoder_PCS_BER2 = coeffs.coefs(:,4);

% f = fit(power2,ber_8_full_precoder_PCS_BER2','smoothingspline','SmoothingParam',0.182242591);
% coeffs = coeffvalues(f);
% ber_8_full_precoder_PCS_BER2= coeffs.coefs(:,4);

f = fit(power',sc_16_full_precoder_PCS_BER','smoothingspline','SmoothingParam',0.182242591);
coeffs = coeffvalues(f);
sc_16_full_precoder_PCS_BER2= coeffs.coefs(:,4);

f = fit(power',ber_16_full_precoder_PCS_BER','smoothingspline','SmoothingParam',0.182242591);
coeffs = coeffvalues(f);
ber_16_full_precoder_PCS_BER2= coeffs.coefs(:,4);

figure1 = figure;
% Change default axes fonts.
set(0,'DefaultAxesFontName', 'Times New Roman')
set(0,'DefaultAxesFontSize', 14)

subplot1 = subplot(1,4,1,'Parent',figure1,'Position',[0.13439466612152 0.11 0.152254270048692 0.701866859623734]);
hold(subplot1,'on');
box on
plot(power,sc_8_full_precoder_PCS_BER,'r-x','LineWidth',1.5);
% plot(power4,sc_8_full_precoder_PCS_NOBER,'b--o');
plot(power,sc_8_uni_BER,'k--*','LineWidth',1.5);
% plot(power4,sc_8_uni_NOBER,'y--o');
title('\rm a, 8PAM ')
% plot(power4,sc_8_Zeroforce_PCS_BER,'k--o');
% legend('Full precode PCS BER','Full precode PCS NOBER','uni BER','uni NOBER','Zeroforce PCS_BER');
legend(' Joint Precoding and PCS Design','Precoding-only design','Orientation', 'Horizontal','Position',[0.298392988763981 0.852175926436466 0.399999990855178 0.0404624267694809]);
hold on
grid on
xlim([30 45])
ylim([0 3])
grid on
xlabel('\it P_t \rm(dBm)');
ylabel('SC (bits/s/Hz)');



% figure;

subplot2 = subplot(1,4,2,'Parent',figure1,'Position',[0.340511687398116 0.11 0.152254270048692 0.696078147612156]);
hold(subplot2,'on');
semilogy(power,ber_8_full_precoder_PCS_BER,'r-x','LineWidth',1.5);
% semilogy(power4,ber_8_full_precoder_PCS_NOBER,'b--o');
semilogy(power,ber_8_uni_BER,'k--*','LineWidth',1.5);
% semilogy(power4,ber_8_uni_NOBER,'y--o');
% semilogy(power4,ber_8_Zeroforce_PCS_BER,'k--o');
set(gca, 'YScale', 'log');
% legend('Full precode PCS BER','Full precode PCS NOBER','uniBER','uniNOBER','ZeroforcePCS_BER');
ylim([10^-6 1])
hold on
box on
grid on
xlim([30 45])

xlabel('\it P_t \rm(dBm)');
ylabel('BER');

subplot3 = subplot(1,4,3,'Parent',figure1,'Position',[0.546628708674712 0.11 0.152254270048692 0.693183791606368]);
hold(subplot3,'on');
plot(power,sc_16_full_precoder_PCS_BER,'r-x','LineWidth',1.5);
% plot(power4,sc_16_full_precoder_PCS_NOBER,'b--o');
plot(power,sc_16_uni_BER,'k--*','LineWidth',1.5);
% plot(power4,sc_16_uni_NOBER,'y--o');
% plot(power4,sc_16_Zeroforce_PCS_BER,'k--o');
title('\rm b, 16PAM ')
% legend('Full precode PCS BER','Full precode PCS NOBER','uniBER','uniNOBER','ZeroforcePCSBER');
hold on
grid on
box on
xlim([30 45])
ylim([0 4])
xlabel('\it P_t \rm(dBm)');
ylabel('SC (bits/s/Hz)');


subplot4 = subplot(1,4,4,'Parent',figure1,'Position',[0.752745729951308 0.11 0.152254270048692 0.690289435600579]);
hold(subplot4,'on');
semilogy(power',ber_16_full_precoder_PCS_BER,'r-x','LineWidth',1.5);
% semilogy(power4,ber_16,'b--o');
% semilogy(power4,ber_16_full_precoder_PCS_NOBER,'b--o');
semilogy(power,ber_16_uni_BER,'k--*','LineWidth',1.5);
% semilogy(power4,ber_16_uni_NOBER,'y--o');
% semilogy(power4,ber_16_Zeroforce_PCS_BER,'k--o');
set(gca, 'YScale', 'log');
% legend('Full precode PCS BER','Full precode PCS NOBER','uniBER','uniNOBER','ZeroforcePCS_BER');
hold on
grid on
box on
xlim([30 45])
ylim([10^-6 1])
xlabel('\it P_t \rm(dBm)');
ylabel('BER');