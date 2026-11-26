% CONNECTION_TEST  Inspect a running FieldTrip buffer.
% Learning template only; does not start the MEGIN acquisition bridge.

ft_defaults;

dataset = 'buffer://localhost:1972';  % Change host/port for your setup.

hdr = ft_read_header(dataset);

fprintf('Sampling rate: %.3f Hz\n', hdr.Fs);
fprintf('Channels:      %d\n', hdr.nChans);
fprintf('Samples:       %d\n', hdr.nSamples);

disp('First channel labels:');
disp(hdr.label(1:min(10, hdr.nChans)));
