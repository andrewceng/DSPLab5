function fun = periodic_output(b,a,s)
    N = length(s);
    k = 0:N-1;
    w = (2.*pi.*k./N);

    S = fft(s,N);
    H = freqz(b,a,w);
    Sout = H.*S;
    sout = ifft(Sout,N);
    fun = real(sout);
end
