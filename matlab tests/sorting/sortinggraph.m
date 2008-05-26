time = sorting / 1000;
figure();
hold on;
title('Search time comparison with/without move sorting', 'FontSize', 12);
xlabel('Turn Number');
ylabel('Calculation Time (seconds)');
bar(time, 'group');
legend('With Sorting', 'Without Sorting');
axis tight;
grid on;
hold off;