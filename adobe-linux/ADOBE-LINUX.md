# `ADOBE-LINUX`

https://www.if-not-true-then-false.com/2010/install-adobe-acrobat-pdf-reader-on-fedora-centos-red-hat-rhel/

```sh
## Create /etc/ld.so.conf.d/acroread.conf ##
cat > /etc/ld.so.conf.d/acroread.conf << 'EOF'
/usr/lib/gtk-2.0/modules
/usr/lib64/gtk-2.0/modules
/usr/lib/gtk-3.0/modules
/usr/lib64/gtk-3.0/modules
EOF

## Run ldconfig ##
ldconfig
```
