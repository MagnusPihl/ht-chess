cachesecs = cache / 1000;
figure();
hold on;
title('Search time per turn, with and without evaluation caching', 'FontSize', 12);
xlabel('Turn Number');
ylabel('Calculation Time (seconds)');
bar(cachesecs, 'group');
legend('With Cache', 'Without Cache');
axis tight;
grid on;
hold off;