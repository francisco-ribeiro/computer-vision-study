%% Zoom an image by a factor

function output = zoom( img, factor )
  originalSize = size(img);
  originalHeight = originalSize(1, 1);
  originalWidth = originalSize(1, 2);
  channels = originalSize(1, 3);
  
  zoomed = uint8(zeros([originalHeight*factor originalWidth*factor channels]));
  
  for i=1:originalHeight
    for j=1:originalWidth
      fiBegin = ((i - 1) * factor) + 1;
      fiEnd = fiBegin + factor - 1;
      fjBegin = ((j - 1) * factor) + 1;
      fjEnd = fjBegin + factor - 1;
      
      for fi=fiBegin:fiEnd
        for fj=fjBegin:fjEnd
          for k=1:channels
            zoomed(fi,fj,k) = img(i,j,k);
          end
        end
      end
      
    end
  end
  
  output = zoomed;
end

