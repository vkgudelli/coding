%# create stacked images (I am simply repeating the same image 5 times)
b=imread('7b.png');
c=imread('7c.png');
d=imread('7d.png');

I = b;

% I = double(img);
cmap = b.map;

[X,Y] = meshgrid(1:size(I,2), 1:size(I,1));
Z = ones(size(I,1),size(I,2));

%# plot each slice as a texture-mapped surface (stacked along the Z-dimension)
for k=1:3
    surface('XData',X-0.5, 'YData',Y-0.5, 'ZData',Z.*k, ...
        'CData',I(:,:,k), 'CDataMapping','direct', ...
        'EdgeColor','none', 'FaceColor','texturemap')
end
colormap(cmap)
view(3), box on, axis tight square
set(gca, 'YDir','reverse', 'ZLim',[0 size(I,3)+1])
