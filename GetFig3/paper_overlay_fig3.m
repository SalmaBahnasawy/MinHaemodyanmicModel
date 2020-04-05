figure (3);

subplot(5,1,1)
hold on
plot(output_fb.Time, output_fb.MAP,'Color','[0.4940 0.1840 0.5560]','LineWidth',1.5)
plot(output_nofb.Time, output_nofb.MAP,'--','Color','[0.4940 0.1840 0.5560]','LineWidth',1.5)
ylabel('MAP (mmHg)')
ylim([90 110])
set(gca,'FontSize',9,'FontWeight','bold','xtick',[])

subplot(5, 1,2);
hold on
plot(output_fb.Time, output_fb.HR,'Color','[0.4940 0.1840 0.5560]','LineWidth',1.5)
plot(output_nofb.Time, output_nofb.HR,'--','Color','[0.4940 0.1840 0.5560]','LineWidth',1.5)
ylabel('HR(beat/min)')
ylim([72 76])
set(gca,'FontSize',9,'FontWeight','bold','xtick',[])

subplot(5, 1,3);
hold on
plot(output_fb.Time, output_fb.TPR,'Color','[0.4940 0.1840 0.5560]','LineWidth',1.5)
plot(output_nofb.Time, output_nofb.TPR,'--','Color','[0.4940 0.1840 0.5560]','LineWidth',1.5)
ylabel('TPR(mmHg.min/ml)')
ylim([0.0155 0.0165])
set(gca,'FontSize',9,'FontWeight','bold','xtick',[])

subplot(5, 1,4);
hold on
plot(output_fb.Time, output_fb.SV,'Color','[1 0.4 0.6]','LineWidth',1.5)
plot(output_nofb.Time, output_nofb.SV,'--','Color','[1 0.4 0.6]','LineWidth',1.5)
ylabel('SV(ml/beat)')
ylim([70 90])
set(gca,'FontSize',9,'FontWeight','bold','xtick',[])

subplot(5, 1,5);
hold on
plot(output_fb.Time, output_fb.CO/1000,'Color','[0.4940 0.1840 0.5560]','LineWidth',1.5)
plot(output_nofb.Time, output_nofb.CO/1000,'--','Color','[0.4940 0.1840 0.5560]','LineWidth',1.5)
xlabel('Time (hr)')
ylabel('CO(L/min)')
ylim([5.5 6.5])
set(gca,'FontSize',9,'FontWeight','bold')



rez=500; % dpi for final figure - will convert the default dpi (=96) of the MATLAB generated figure to this
name = ['Figure3' '.pdf']; % name by which the figure will be saved
print(gcf,fullfile(name),'-dpdf',['-r',num2str(rez)],'-opengl') % save figure


