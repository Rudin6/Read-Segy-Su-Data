function hd=Header(fid,InitOff,ns,k)
%HEADER: Returns the complete trace header of trace k.
%
%  header = header(FID,ns,k);
%
%  IN   FID:    file identifier number (set by fopen)
%       ns:     number of samples per trace (can be obtained 
%               using extract.m)
%       k:      trace number  
%    
%  OUT  header: a structure containing the header of trace k
%
%
%  Copyright (C) 2008, Signal Analysis and Imaging Group
%  For more information: http://www-geo.phys.ualberta.ca/saig/SeismicLab
%  Author: M.D.Sacchi
%
%  This program is free software: you can redistribute it and/or modify
%  it under the terms of the GNU General Public License as published
%  by the Free Software Foundation, either version 3 of the License, or
%  any later version.
%
%  This program is distributed in the hope that it will be useful,
%  but WITHOUT ANY WARRANTY; without even the implied warranty of
%  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%  GNU General Public License for more details: http://www.gnu.org/licenses/
%

   offset = InitOff + (240 + ns*4)*(k-1);
   status=fseek(fid,offset,'bof');
   hd.tracl=fread(fid,1,'int');    
   hd.tracr=fread(fid,1,'int');     
   hd.fldr=fread(fid,1,'int');     
   hd.tracf=fread(fid,1,'int'); 
   hd.ep=fread(fid,1,'int');       
   hd.cdp=fread(fid,1,'int');     
   hd.cdpt=fread(fid,1,'int');    
   hd.trid=fread(fid,1,'short'); 
   hd.nva=fread(fid,1,'short');    
   hd.nhs=fread(fid,1,'short');   
   hd.duse=fread(fid,1,'short');   
   hd.offset=fread(fid,1,'int');   
   hd.gelev=fread(fid,1,'int');  
   hd.selev=fread(fid,1,'int');    
   hd.sdepth=fread(fid,1,'int');   
   hd.gdel=fread(fid,1,'int');     
   hd.sdel=fread(fid,1,'int');     
   hd.swdep=fread(fid,1,'int');   
   hd.gwdep=fread(fid,1,'int'); 
   hd.scalel=fread(fid,1,'short'); 
   hd.scalco=fread(fid,1,'short'); 
   hd.sx=fread(fid,1,'int');       
   hd.sy=fread(fid,1,'int');       
   hd.gx=fread(fid,1,'int');       
   hd.gy=fread(fid,1,'int');       
   hd.counit=fread(fid,1,'short'); 
   hd.wevel=fread(fid,1,'short');  
   hd.swevel=fread(fid,1,'short'); 
   hd.sut=fread(fid,1,'short');    
   hd.gut=fread(fid,1,'short');    
   hd.sstat=fread(fid,1,'short');  
   hd.gstat=fread(fid,1,'short');  
   hd.tstat=fread(fid,1,'short');  
   hd.laga=fread(fid,1,'short');   
   hd.lagb=fread(fid,1,'short');   
   hd.delrt=fread(fid,1,'short');  
   hd.muts=fread(fid,1,'short');   
   hd.mute=fread(fid,1,'short');   
   hd.ns=fread(fid,1,'ushort');  
   hd.dt=fread(fid,1,'ushort');  
   hd.gain=fread(fid,1,'short');   
   hd.igc=fread(fid,1,'short');    
   hd.igi=fread(fid,1,'short');   
   hd.corr=fread(fid,1,'short');   
   hd.sfs=fread(fid,1,'short');    
   hd.sfe=fread(fid,1,'short');    
   hd.slen=fread(fid,1,'short');  
   hd.styp=fread(fid,1,'short');  
   hd.stas=fread(fid,1,'short');   
   hd.stae=fread(fid,1,'short');  
   hd.tatyp=fread(fid,1,'short');  
   hd.afilf=fread(fid,1,'short');  
   hd.afils=fread(fid,1,'short');  
   hd.nofilf=fread(fid,1,'short'); 
   hd.nofils=fread(fid,1,'short'); 
   hd.lcf=fread(fid,1,'short');    
   hd.hcf=fread(fid,1,'short');   
   hd.lcs=fread(fid,1,'short');   
   hd.hcs=fread(fid,1,'short');   
   hd.year=fread(fid,1,'short');   
   hd.day=fread(fid,1,'short');    
   hd.hour=fread(fid,1,'short');   
   hd.minute=fread(fid,1,'short'); 
   hd.sec=fread(fid,1,'short');    
   hd.timbas=fread(fid,1,'short'); 
   hd.trwf=fread(fid,1,'short');   
   hd.grnors=fread(fid,1,'short'); 
   hd.grnofr=fread(fid,1,'short'); 
   hd.grnlof=fread(fid,1,'short'); 
   hd.gaps=fread(fid,1,'short');   
   hd.otrav=fread(fid,1,'short');  
   hd.d1=fread(fid,1,'float');     
   hd.f1=fread(fid,1,'float');     
   hd.d2=fread(fid,1,'float');     
   hd.f2=fread(fid,1,'float');     
   hd.ungpow=fread(fid,1,'float'); 
   hd.unscale=fread(fid,1,'float');
   hd.ntr=fread(fid,1,'int');     
   hd.mark=fread(fid,1,'short');  
   hd.unass=fread(fid,15,'short');

