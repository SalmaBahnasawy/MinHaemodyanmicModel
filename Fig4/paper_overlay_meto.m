figure (4);
get_data50
get_data80
subplot(1,2,1)
hold on
plot(output_50.Time, output_50.MAP,'-m', output_80.Time, output_80.MAP,'-b')
X_plot50  = [output_50.Time', fliplr(output_50.Time')];
Y_plot50  = [output_50.lMAP', fliplr(output_50.uMAP')];

fill(X_plot50, Y_plot50 , 1,...
        'facecolor','m', ...
        'edgecolor','none', ...
        'facealpha', 0.3)
X_plot80  = [output_80.Time', fliplr(output_80.Time')];
Y_plot80  = [output_80.lMAP', fliplr(output_80.uMAP')];

fill(X_plot80, Y_plot80 , 1,...
        'facecolor','b', ...
        'edgecolor','none', ...
        'facealpha', 0.3)


yneg =  [];
ypos = [];
errorbar(output_50.Time, eMAP50,sdMAP50,yneg,'.m')
errorbar(output_80.Time, eMAP80,ypos,sdMAP80,'.b')

xlabel('Time (hr)')
ylabel('MAP (mmHg)')
ylim([95 135])
legend('MAP 50mg','MAP 80mg')
hold off


subplot(1, 2,2);
hold on
plot(output_50.Time, output_50.HR,'-m',output_80.Time, output_80.HR,'-b')
X_plot50  = [output_50.Time', fliplr(output_50.Time')];
Y_plot50  = [output_50.lHR', fliplr(output_50.uHR')];
fill(X_plot50, Y_plot50 , 1,...
        'facecolor','m', ...
        'edgecolor','none', ...
        'facealpha', 0.3)
X_plot80  = [output_80.Time', fliplr(output_80.Time')];
Y_plot80  = [output_80.lHR', fliplr(output_80.uHR')];

fill(X_plot80, Y_plot80 , 1,...
        'facecolor','b', ...
        'edgecolor','none', ...
        'facealpha', 0.3)

errorbar(output_50.Time, eHR50,sdHR50,ypos,'.m')
errorbar(output_80.Time, eHR80,ypos,sdHR80,'.b')
ylim([45 85])
xlabel('Time (hr)')
ylabel('HR (beat/min)')

hold off
legend('HR 50mg','MAP 80mg')



rez=500; % dpi for final figure - will convert the default dpi (=96) of the MATLAB generated figure to this
name = ['Figure4' '.pdf']; % name by which the figure will be saved
print(gcf,fullfile(name),'-dpdf',['-r',num2str(rez)],'-opengl') % save figure

