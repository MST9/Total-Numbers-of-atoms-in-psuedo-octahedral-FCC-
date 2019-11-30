

xx=input('Enter number of shells you want to find total atoms and surface atoms: ');
yy=input('Enter the diameter of atom in Angstrom: ');
disp('  Shell Total Surface_Atoms');
for i=1:xx
   x=(10*i*i*i+15*i*i+11*i+3)/3;
   y=(10*i*i+2);
   z=[i x y];
  disp(z);
end

surface=zeros(1,xx);
bulk=zeros(1,xx);
particle_size=zeros(1,xx);
% total atoms=(10*j*j*j+15*j*j+11*j+3)/3
% surface atoms=(10*j*j+2)
% bulk atoms=total atoms-surface atoms=(10*j*j*j-15*j*j+11*j-3)/3
for j=1:1:xx 
   bulk(j)=100*(10*j*j*j-15*j*j+11*j-3)./(10*j*j*j+15*j*j+11*j+3);
   surface(j)=300*(10*j*j+2)./(10*j*j*j+15*j*j+11*j+3);
   particle_size(j)=(2*j+1)*yy;
   
end
%Plot graph of %bulk versus particle size for xx number of shells
%for example graph contains 3 points for 3 shells and 50 points for 50 shells
% and 1 point 1 shell
% for getting good graph use large number of shells at input so to get more
% points

hold on
stem(particle_size,surface,'LineStyle','none');
stem(particle_size,bulk,'LineStyle','none');
xlabel('Size of Particle in Angstrom ');
ylabel('% Atoms in Bulk/Surface');

hold off
legend({'surface','bulk'})