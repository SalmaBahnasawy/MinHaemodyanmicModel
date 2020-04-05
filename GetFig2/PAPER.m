figure (1);

subplot(5,1,1)
plot(t, MAP,'Color','[0.4940 0.1840 0.5560]','LineWidth',1.5)
% xlabel('Time (hr)')
ylabel('MAP (mmHg)')
ylim([85 110])
% ylim([90 110])
set(gca,'FontSize',9,'FontWeight','bold','xtick',[])

subplot(5, 1,2);
plot(t, A(:,2),'Color','[0.4940 0.1840 0.5560]','LineWidth',1.5)
% plot(T, A(:,2),'Color','[1 0.4 0.6]','LineWidth',1.5)
% xlabel('Time (hr)')
ylabel('HR(beat/min)')
ylim([50 90])
% ylim([72 76])
set(gca,'FontSize',9,'FontWeight','bold','xtick',[])

subplot(5, 1,3);
% plot(T, A(:,3),'Color','[1 0.4 0.6]','LineWidth',1.5)
plot(t, A(:,3),'Color','[0.4940 0.1840 0.5560]','LineWidth',1.5)
% xlabel('Time (hr)')
ylabel('TPR(mmHg.min/ml)')
ylim([0.012 0.025])
% ylim([0.0155 0.0165])
set(gca,'FontSize',9,'FontWeight','bold','xtick',[])

subplot(5, 1,4);
% plot(T, SV,'Color','[0.4940 0.1840 0.5560]','LineWidth',1.5)
plot(t, SV,'Color','[1 0.4 0.6]','LineWidth',1.5)
% xlabel('Time (hr)')
ylabel('SV(ml/beat)')
ylim([40 85])
% ylim([70 90])
set(gca,'FontSize',9,'FontWeight','bold','xtick',[])

subplot(5, 1,5);
plot(t, CO/1000,'Color','[0.4940 0.1840 0.5560]','LineWidth',1.5)
xlabel('Time (hr)')
ylabel('CO(L/min)')
ylim([3.5 7])
% ylim([5.5 6.5])
set(gca,'FontSize',9,'FontWeight','bold')

rez=500; % dpi for final figure - will convert the default dpi (=96) of the MATLAB generated figure to this
name = ['SV' '.pdf']; % name by which the figure will be saved
print(gcf,fullfile(name),'-dpdf',['-r',num2str(rez)],'-opengl') % save figure
