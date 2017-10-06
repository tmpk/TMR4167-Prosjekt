function bs = boyestivhet(nelem, elem, tsdata, ntverrsnitt)
%funksjonen kalkulerer bøyestivheten til elementene utifra tverrsnittstype
%(I-profil/rør). Det antas at det bare er to ulike tverrsnitt.
%bøyestivheten til elem(i) blir bs(i)
for i=1:nelem
    if elem(i,3)==1                                                                    %I-profil
        bs=tsdata(3)*(tsdata(6)^3)/12+(tsdata(4)/12)*((tsdata(5))^3-(tsdata(6))^3);
    elseif elem(i,3)==2                                                                %rørprofil
        bs=elem(3)*(pi/4*(tsdata(j,2)^4-tdata(j,3)^4));
end

end

