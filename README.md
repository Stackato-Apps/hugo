Hugo
====
A simple demo website generated using [Hugo](http://gohugo.io/) and deployed on Stackato via the [staticfile-buildpack](https://github.com/cloudfoundry-incubator/staticfile-buildpack). The demo website uses the [hyde](https://github.com/spf13/hyde) theme.

Deploying on Stackato
=====================
To deploy the application, run these commands:

    git clone https://github.com/Stackato-Apps/hugo.git
    cd hugo
    stackato push -n
