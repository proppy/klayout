
DESTDIR = $$OUT_PWD/../..
TARGET = klayout_edt

include($$PWD/../../lib.pri)

DEFINES += MAKE_EDT_LIBRARY

!equals(HAVE_QT, "0") {

  FORMS = \
    AlignOptionsDialog.ui \
    BoxPropertiesPage.ui \
    CopyModeDialog.ui \
    ChangeLayerOptionsDialog.ui \
    EditablePathPropertiesPage.ui \
    EditorOptionsGeneric.ui \
    EditorOptionsInst.ui \
    EditorOptionsPath.ui \
    EditorOptionsText.ui \
    InstantiationForm.ui \
    InstPropertiesPage.ui \
    MakeArrayOptionsDialog.ui \
    MakeCellOptionsDialog.ui \
    PathPropertiesPage.ui \
    PolygonPropertiesPage.ui \
    RoundCornerOptionsDialog.ui \
    TextPropertiesPage.ui \
    DistributeOptionsDialog.ui \
    EditorOptionsInstPCellParam.ui \
    AreaAndPerimeterDialog.ui

}

# Disabled without Qt:

HEADERS = \
    edtDialogs.h \
    edtEditorOptionsPages.h \
    edtInstPropertiesPage.h \
    edtPCellParametersPage.h \
    edtPropertiesPages.h \
    edtPropertiesPageUtils.h \
    edtRecentConfigurationPage.h

SOURCES = \
    edtDialogs.cc \
    edtEditorOptionsPages.cc \
    edtInstPropertiesPage.cc \
    edtPCellParametersPage.cc \
    edtPropertiesPages.cc \
    edtPropertiesPageUtils.cc \
    edtRecentConfigurationPage.cc

# Enabled without Qt:

HEADERS += \
  edtForceLink.h \
  edtConfig.h \
  edtMainService.h \
  edtPartialService.h \
  edtPlugin.h \
  edtService.h \
  edtServiceImpl.h \
  edtUtils.h \
  edtCommon.h \
  edtDistribute.h \

SOURCES += \
  edtForceLink.cc \
  edtConfig.cc \
  edtMainService.cc \
  edtPartialService.cc \
  edtPlugin.cc \
  edtService.cc \
  edtServiceImpl.cc \
  edtUtils.cc \
  gsiDeclEdt.cc \
  edtDistribute.cc \

INCLUDEPATH += $$TL_INC $$GSI_INC $$LAYBASIC_INC $$LAYVIEW_INC $$DB_INC
DEPENDPATH += $$TL_INC $$GSI_INC $$LAYBASIC_INC $$LAYVIEW_INC $$DB_INC

LIBS += -L$$DESTDIR -lklayout_tl -lklayout_gsi -lklayout_laybasic -lklayout_layview -lklayout_db

!equals(HAVE_QT, "0") {

  INCLUDEPATH += $$LAYUI_INC
  DEPENDPATH += $$LAYUI_INC

  LIBS += -lklayout_layui

}

