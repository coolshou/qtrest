
TARGET            = qtrest
TEMPLATE          = lib
VERSION = 0.4.0

DESTDIR      = lib
INCLUDEPATH    += \
    src \
    src/models

QT += network
QMAKE_CXXFLAGS += -std=c++17

# Use custom variable to decide static or shared
# qmake LIB_TYPE=static
isEmpty(LIB_TYPE): LIB_TYPE = shared  # default to shared

# Choose library type
equals(LIB_TYPE, static) {
    CONFIG += staticlib
    message(Building static library)
} else {
    CONFIG += shared
    message(Building shared library)
}
MOC_DIR           = tmp
OBJECTS_DIR       = tmp


SOURCES +=  \
	src/models/abstractjsonrestlistmodel.cpp \
	src/models/detailsmodel.cpp \
	src/models/requests.cpp \
	src/models/baserestlistmodel.cpp \
	src/models/pagination.cpp \
	src/models/xmlrestlistmodel.cpp \
	src/models/abstractxmlrestlistmodel.cpp \
	src/models/jsonrestlistmodel.cpp \
	src/models/restitem.cpp \
	src/apibase.cpp

HEADERS += \
	src/models/abstractxmlrestlistmodel.h \
	src/models/jsonrestlistmodel.h \
	src/models/restitem.h \
	src/models/abstractjsonrestlistmodel.h \
	src/models/detailsmodel.h \
	src/models/requests.h \
	src/models/baserestlistmodel.h \
	src/models/pagination.h \
	src/models/xmlrestlistmodel.h \
	src/apibase.h
