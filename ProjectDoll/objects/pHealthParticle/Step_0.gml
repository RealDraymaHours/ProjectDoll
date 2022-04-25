// Fade slowly
image_alpha -= 0.1;

// Destroy after faded
if (image_alpha <= 0)
    instance_destroy();

