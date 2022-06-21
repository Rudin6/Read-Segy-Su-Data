% Written by zlq, 2022/06/21,Tongji University
clear; close all;
%--------- set parameter ------ %
Ifilename = 'x.sgy';  % the file name
mfmt = 'b'; %The order in which bytes are read from a file
dtype = 0;   % segy-data: 0 
             % su  -data: 1
% ---------    --------- %
fid = fopen(Ifilename,'rb',mfmt);
if dtype == 1
    InitOff = 0;
else
    InitOff = 3600;
end
 % sampling number
fseek(fid,InitOff+114,'bof');
ns = fread(fid,1,'ushort'); 
% sampling time interval
dt = fread(fid,1,'ushort')/10^6;
% Get the total number of tracks of data
fseek(fid,0,'eof');
fsize = ftell(fid);
Ntrace = (fsize - InitOff) / (ns*4+240);

% -------- allocate space for the data and header
dat = zeros(ns,Ntrace);
% -------- read data -------- %
for ii = 1:Ntrace
   H(ii) =  Header(fid,InitOff,ns,ii);
%    tmp(ii) = ftell(fid);
   dat(:,ii) = fread(fid,ns,'float');
end
fclose(fid);

figure; imagesc(dat); colormap(gray);
