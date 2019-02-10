TEMPLATE = subdirs

SUBDIRS += \
    cm-ui \
    cm-lib \
    cm-tests
!build_pass:message(cm project dir : $${PWD})
include(../qmake-target-platform.pri)
include(../qmake-destination-path.pri)
DESTDIR = $$PWD/../binaries/$$DESTINATION_PATH
OBJECTS_DIR = $$PWD/build/$$DESTINATION_PATH/.obj
MOC_DIR = $$PWD/build/$$DESTINATION_PATH/.moc
RCC_DIR = $$PWD/build/$$DESTINATION_PATH/.qrc
UI_DIR = $$PWD/build/$$DESTINATION_PATH/.ui
