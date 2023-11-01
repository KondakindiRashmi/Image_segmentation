file = 1;
while ~isequal(file, 0)
    % Read image using uigetfile
    [file, path] = uigetfile("C:\Users\konre\OneDrive\Desktop\HAP\3rd Sem\HAP 797\Homework\Lab 10\image_seg\image_seg\image4.jpg");
    
    if file == 0
        break;
    end
    
    % Concatenate the path with the file name
    file_path = fullfile(path, file);
    
    % Read the image
    image = imread(file_path);
    
    % Image segmentation using k-means
    numClusters = 3;
    seg_I = imsegkmeans(image, numClusters);
    seg_image = label2rgb(seg_I);
    
    % Display the original image, segmented image, and segmented color image
    subplot(1, 3, 1), imshow(image, []);
    title('Original Image');
    subplot(1, 3, 2), imshow(seg_I, []);
    title('Segmented Image');
    subplot(1, 3, 3), imshow(seg_image);
    title('Segmented Color Image');
end
