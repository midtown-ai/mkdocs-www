#!/usr/bin/env python3

# To run the tests
# python -m doctest myfile.py

def get_image_list(images, images_file):
    """Return the list of docker image to process

    >>> get_image_list(None, None)
    []
    >>> get_image_list('image1,image2', None)
    ['image1', 'image2']
    >>> get_image_list(None, './images.yaml')
    ['ubuntu:16.04', 'fedora:23', 'centos:7']
    >>> get_image_list('image1,image2', './images.yaml')
    ['image1', 'image2', 'ubuntu:16.04', 'fedora:23', 'centos:7']
    >>> get_image_list(None, './image.yaml')
    Traceback (most recent call last):
        ...
    FileNotFoundError: [Errno 2] No such file or directory: './image.yaml'
    """
    image_list = list()
    if images is not None:
        image_list.extend(images.split(','))

    if images_file is not None:
        with open(images_file, 'r') as stram:
            # Image file must be a list of image in YAML format
            content = yaml.load(stram, Loader=yaml.FullLoader)
            assert type(content) == list, 'Yaml file not in correct format'
            image_list.extend(content)
    return(image_list)

print("hello world")
