x_data = rand(50, 1);
y_data = x_data .* (rand(1) .* 10) + rand(50, 1) .* (rand(1) .* 1);

figure(1)
scatter(x_data, y_data)

x_data = [ones(50, 1), x_data];

% hold on

% predicting the feature line

w = rand(size(x_data, 2), 1);
x_final = x_data(:, 2:size(x_data, 2));
y_p = x_data * w;

hold on
line(x_final, y_p)

total_reps = 1000;
reps = total_reps;

error_record = 0;
error_change_thresh = 0.01;
error_v = [];
error_v(total_reps - reps + 1, 1) = 100;

while(reps > 0)

    % hold on

    error_v(total_reps - reps + 1, 1) = int64(0.5 .* sum((y_data - x_data * w) .^ 2));

    % if ((error_v(total_reps - reps + 1, 1) - error_record) .^ 2) < error_change_thresh
    %     break;
    % end

    error_record = error_v(total_reps - reps + 1, 1);

    d_error_v = transpose(-x_data) * (y_data - x_data * w);

    learn_rate = 0.001;

    w = w - learn_rate .* d_error_v;

    reps--;

end

hold on

y_p = x_data * w;

x_final = x_data(:, 2:size(x_data, 2));

line(x_final, y_p)
