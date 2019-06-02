### using packer and ansible to build AMIs


`make packer-build` will create a Ubuntu image with packages installed.

How to install packages in the image?
    
Add the packages need to be installed under ansible roles and add the roles in site.yml and under `role_paths` in template.json

Note: 

Need to improve: Write ansible roles compatible for both Ubuntu and Amazon Linux using register.