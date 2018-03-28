TEMPLATE = lib 
QT += core
TARGET = exiv2

# CONFIG += c++11
#CONFIG += c++14 


CONFIG += staticlib
INCLUDEPATH += ../include/exiv2
INCLUDEPATH += ../include
INCLUDEPATH += config
SOURCES += exiv2.cpp \
           utils.cpp \
           exif.cpp \
           error.cpp \
           version.cpp \
           tags.cpp \
           actions.cpp \
           bmpimage.cpp \
           cr2image.cpp \
           epsimage.cpp \
           crwimage.cpp \
           jp2image.cpp \
           jpgimage.cpp \
           gifimage.cpp \
           mrwimage.cpp \
           pgfimage.cpp \
           psdimage.cpp \
           orfimage.cpp \
           rafimage.cpp \
           tgaimage.cpp \
           tiffimage.cpp \
           webpimage.cpp \
           rw2image.cpp \
           iptc.cpp \
           datasets.cpp \
           metadatum.cpp \
           value.cpp \
           types.cpp \
           image.cpp \
           properties.cpp \
           basicio.cpp \
           futils.cpp \
           xmpsidecar.cpp \
           http.cpp \
           xmp.cpp \
           easyaccess.cpp \
           preview.cpp \ 
           convert.cpp

