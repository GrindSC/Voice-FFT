function converted = convert_samples(types)
N = 1000;
wav_data = {};
for i=1:types(1)
    str = sprintf('%d%s',i,".wav");
    [x]=audioread(str);
    a = abs(fft(x,N));
    b = a(1:(length(a)/2));
    c = size(b);
    if c(1) < 500
       b = b.'; 
    end
    wav_data = [wav_data, b];
end
aif_data = {};
for i=1:types(2)
    str = sprintf('%d%s',i,".aif");
    [x]=audioread(str);
    a = abs(fft(x,N));
    b = a(1:(length(a)/2));
    c = size(b);
    if c(1) < 500
       b = b.'; 
    end
    aif_data = [aif_data, b];
end
converted = {};
converted = [converted,wav_data,aif_data];