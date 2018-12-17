
I = imread('pout.tif');
checkHistogram(I)
I2 = randi(100, 100, 100, 100);
checkHistogram(I2)
I3 = imread('example.tif');
checkHistogram(I3)


function checkHistogram(I)

	%Check if the same image rotated has the same histogram
	if imhist(I) == imhist(rot90(I, 1))
		disp("The histogram of the same transposed remains the same")
	else 
		disp("The histogram of the same transposed image is different")
	end

	%Check if a random rearranged image (within the same row) has the same histogram
	if imhist(I) == imhist(I(randperm(size(I, 1)), :))
		disp("The histogram of the a randomized image remains the same")
	else 
		disp("The histogram of the same randomized image is different")
	end
end