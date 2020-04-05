figure (2);

subplot(5,1,1)
plot(T, MAP)
ylabel('MAP (mmHg)')
ylim([85 110])
set(gca,'FontSize',10,'FontWeight','bold','xtick',[])

subplot(5, 1,2);
plot(T, Y(:,2))
ylabel('HR(beat/min)')
ylim([50 90])
set(gca,'FontSize',9,'FontWeight','bold','xtick',[])

subplot(5, 1,3);
plot(T, Y(:,3))
ylabel('TPR(mmHg.min/ml)')
ylim([0.012 0.025])
set(gca,'FontSize',9,'FontWeight','bold','xtick',[])

subplot(5, 1,4);
plot(T, SV)
ylabel('SV(ml/beat)')
ylim([40 85])
set(gca,'FontSize',9,'FontWeight','bold','xtick',[])

subplot(5, 1,5);
plot(T, CO/1000)
xlabel('Time (hr)')
ylabel('CO(L/min)')
ylim([3.5 7])
set(gca,'FontSize',9,'FontWeight','bold')


