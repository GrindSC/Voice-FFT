function y = count_type()
w = dir('*.wav');
num_wav = numel(w);
a = dir('*.aif');
num_aif = numel(a);
y = [num_wav,num_aif];
end

