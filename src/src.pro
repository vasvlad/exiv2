TEMPLATE = lib
QT += core
TARGET = exiv2

# CONFIG += c++11
#CONFIG += c++14 


#LIBS += -ldl
CONFIG += staticlib
INCLUDEPATH += ../include/exiv2
INCLUDEPATH += ../include
INCLUDEPATH += config
android {
    QT += androidextras
    INCLUDEPATH += ../include_android
}

linux:!android {
    INCLUDEPATH += /usr/include
}
SOURCES += exiv2.cpp \
           utils.cpp \
           exif.cpp \
           error.cpp \
           version.cpp \
           tags.cpp \
           ini.cpp \
           actions.cpp \
           bmpimage.cpp \
           cr2image.cpp \
           cr2image_int.cpp \
           epsimage.cpp \
           crwimage.cpp \
           crwimage_int.cpp \
           jp2image.cpp \
           jpgimage.cpp \
           gifimage.cpp \
           mrwimage.cpp \
           pgfimage.cpp \
           psdimage.cpp \
           orfimage.cpp \
           orfimage_int.cpp \
           pngimage.cpp \
           rafimage.cpp \
           tgaimage.cpp \
           bigtiffimage.cpp \
           tiffimage.cpp \
           tiffimage_int.cpp \
           webpimage.cpp \
           rw2image.cpp \
           rw2image_int.cpp \
           sigmamn_int.cpp \
           iptc.cpp \
           datasets.cpp \
           metadatum.cpp \
           value.cpp \
           types.cpp \
           image.cpp \
           pentaxmn_int.cpp \
           makernote_int.cpp \
           tiffcomposite_int.cpp \
           tiffvisitor_int.cpp \
           properties.cpp \
           basicio.cpp \
           futils.cpp \
           xmpsidecar.cpp \
           http.cpp \
           nikonmn_int.cpp \
           canonmn_int.cpp \
           casiomn_int.cpp \
           minoltamn_int.cpp \
           olympusmn_int.cpp \
           panasonicmn_int.cpp \
           samsungmn_int.cpp \
           sonymn_int.cpp \
           fujimn_int.cpp \
           xmp.cpp \
           easyaccess.cpp \
           preview.cpp \ 
           convert.cpp

