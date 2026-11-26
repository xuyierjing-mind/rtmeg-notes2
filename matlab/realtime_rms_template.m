function realtime_rms_template(runSeconds)
% REALTIME_RMS_TEMPLATE  Illustrative rolling RMS from a FieldTrip buffer.
%
% This is a teaching template, not production-ready real-time software.
% It does not guarantee detection of all dropped/overwritten samples and
% does not implement clock synchronization, trigger output, or phase
% estimation. Stop with Ctrl+C. Test with non-participant data first.
%
% Example:
%   realtime_rms_template(60)  % run for up to 60 seconds
%
% Requires a running FieldTrip buffer and FieldTrip on the MATLAB path.

if nargin < 1 || isempty(runSeconds)
    runSeconds = Inf;
end

ft_defaults;
dataset = 'buffer://localhost:1972';  % Change for your buffer host/port.

hdr = ft_read_header(dataset);
fs = hdr.Fs;
nChans = hdr.nChans;

if isempty(fs) || ~isfinite(fs) || fs <= 0 || nChans < 1
    error('The buffer returned an invalid sampling rate or channel count.');
end

windowSeconds = 1;
windowSamples = max(1, round(windowSeconds * fs));
rollingData = zeros(nChans, 0);
lastSample = hdr.nSamples;
startedAt = tic;

fprintf('Connected: %d channels at %.3f Hz. Press Ctrl+C to stop.\n', ...
    nChans, fs);

while toc(startedAt) < runSeconds
    hdr = ft_read_header(dataset);
    newestSample = hdr.nSamples;

    % A decreasing sample counter can indicate a buffer/acquisition reset.
    if newestSample < lastSample
        warning('Buffer sample counter decreased; resetting local window.');
        rollingData = zeros(nChans, 0);
        lastSample = newestSample;
    end

    if newestSample > lastSample
        newData = ft_read_data(dataset, ...
            'begsample', lastSample + 1, ...
            'endsample', newestSample);

        % Basic shape check. Confirm channel order/labels for your system.
        if size(newData, 1) ~= nChans
            error('Read data channel count differs from the current header.');
        end

        lastSample = newestSample;
        rollingData = [rollingData, double(newData)]; %#ok<AGROW>

        % Bound memory to the most recent window.
        if size(rollingData, 2) > windowSamples
            rollingData = rollingData(:, end-windowSamples+1:end);
        end

        if size(rollingData, 2) == windowSamples
            rmsValue = sqrt(mean(rollingData.^2, 2));
            fprintf('Updated RMS at sample %d (first 5 channels): ', ...
                newestSample);
            fprintf('%.4g ', rmsValue(1:min(5, nChans)));
            fprintf('\n');
        end
    else
        pause(0.005);  % Tune only after measuring the actual update cadence.
    end
end

fprintf('RMS template finished.\n');
end
