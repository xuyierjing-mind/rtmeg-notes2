# MATLAB learning templates

These files are starting points for learning the FieldTrip buffer workflow. They are **not** validated production scripts.

## Files

- `connection_test.m` — reads and displays basic header information from a FieldTrip buffer.
- `realtime_rms_template.m` — polls for new samples and calculates a rolling, per-channel RMS value.

## Before running

1. Install MATLAB and a compatible FieldTrip release.
2. Configure the FieldTrip path in MATLAB and run `ft_defaults`.
3. Start the correct MEGIN-to-FieldTrip streaming bridge for your local system.
4. Confirm the buffer host and port (the examples use `localhost:1972`).
5. Verify channel labels, sampling rate, units, sample continuity, and data quality.

The bridge executable and startup procedure vary by MEGIN model and DACQ installation. The templates do not start or configure the MEGIN acquisition system.

## Limitations

The polling example detects a simple buffer sample-counter reset (when the reported sample count decreases), but it does not guarantee detection of every dropped or overwritten sample, nor does it solve clock synchronization. It uses a basic rolling-window implementation for clarity, not optimized real-time performance. Stop it with Ctrl+C. Test and adapt it with simulated or non-participant data first.
