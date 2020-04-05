figure (5);
get_data10
get_data20
subplot(1,2,1)
hold on
plot(output_10.Time, output_10.MAP,'-m', output_20.Time, output_20.MAP,'-b')
X_plot10  = [output_10.Time', fliplr(output_10.Time')];
Y_plot10  = [output_10.lMAP', fliplr(output_10.uMAP')];

fill(X_plot10, Y_plot10 , 1,...
        'facecolor','m', ...
        'edgecolor','none', ...
        'facealpha', 0.3)
X_plot20  = [output_20.Time', fliplr(output_20.Time')];
Y_plot20  = [output_20.lMAP', fliplr(output_20.uMAP')];

fill(X_plot20, Y_plot20 , 1,...
        'facecolor','b', ...
        'edgecolor','none', ...
        'facealpha', 0.3)


yneg =  [];
ypos = [];
errorbar(eTime, eMAP20,sdMAP20,yneg,'.b')
errorbar(eTime, eMAP10,ypos,sdMAP10,'.m')

xlabel('Time (min)')
ylabel('MAP (mmHg)')
ylim([100 145])
legend('MAP 10mg','MAP 20mg')
hold off


subplot(1, 2,2);
hold on
plot(output_10.Time, output_10.HR,'-m',output_20.Time, output_20.HR,'-b')
X_plot50  = [output_10.Time', fliplr(output_10.Time')];
Y_plot10  = [output_10.lHR', fliplr(output_10.uHR')];
fill(X_plot10, Y_plot10 , 1,...
        'facecolor','m', ...
        'edgecolor','none', ...
        'facealpha', 0.3)
X_plot20  = [output_20.Time', fliplr(output_20.Time')];
Y_plot20  = [output_20.lHR', fliplr(output_20.uHR')];

fill(X_plot20, Y_plot20 , 1,...
        'facecolor','b', ...
        'edgecolor','none', ...
        'facealpha', 0.3)

errorbar(eTime, eHR20,sdHR20,ypos,'.b')
errorbar(eTime, eHR10,ypos,sdHR10,'.m')
ylim([55 105])
xlabel('Time (min)')
ylabel('HR(beat/min)')

hold off
legend('HR 10mg','HR 20mg')


rez=500; % dpi for final figure - will convert the default dpi (=96) of the MATLAB generated figure to this
name = ['Figure5' '.pdf']; % name by which the figure will be saved
print(gcf,fullfile(name),'-dpdf',['-r',num2str(rez)],'-opengl') % save figure


