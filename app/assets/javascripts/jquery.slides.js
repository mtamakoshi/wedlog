$(document).ready(function() {
    slideit(imagesArray);
});

var imagesArray = ["/assets/engagement2.jpg", "/assets/engagement3.jpg", "/assets/engagement.jpg", "/assets/wedding.jpg", "/assets/wedding2.jpg"];

function slideit(images) {
    var currentImage = $('#slides img').attr('src');
    var imageIndex = images.indexOf(currentImage);
    console.log(imageIndex);
    if (images.length === (imageIndex + 1)) {
        imageIndex = 0;
    } else {
        imageIndex = imageIndex + 1;
    }
    $('#slides img').attr('src', images[imageIndex]);
    setTimeout(function() {slideit(images);}, 2500);
}