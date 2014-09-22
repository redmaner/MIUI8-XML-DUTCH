.class public Lcom/android/camera/camera_adapter/CameraQcom;
.super Lcom/android/camera/module/CameraModule;
.source "CameraQcom.java"


# instance fields
.field private mIsLongShotMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    return-void
.end method

.method public static getProfessionalLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;
    .locals 2
    .parameter "activity"
    .parameter "isBackCamera"
    .parameter "isImageCaptureIntent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/Camera;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v0, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 219
    if-nez p2, :cond_0

    .line 222
    :cond_0
    const-string v1, "pref_camera_face_beauty_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraQcom;->getColorEffectKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    const-string v1, "pref_audio_capture"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    const-string v1, "pref_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :goto_0
    return-object v0

    .line 228
    :cond_1
    const-string v1, "pref_camera_face_beauty_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraQcom;->getColorEffectKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    const-string v1, "pref_audio_capture"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    const-string v1, "pref_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getZSL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    const-string v0, "off"

    .line 207
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "on"

    goto :goto_0
.end method

.method private qcomUpdateCameraParametersPreference(Lcom/android/camera/hardware/QcomCamera$QcomParameters;)V
    .locals 18
    .parameter "parameters"

    .prologue
    .line 21
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v15}, Lcom/android/camera/CameraSettings;->isWaterMarkOpen(Landroid/content/SharedPreferences;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 22
    const-string v15, "on"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setTimeWatermark(Ljava/lang/String;)V

    .line 26
    :goto_0
    const-string v15, "Camera"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SetTimeWatermark ="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getTimeWatermark()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v16, "pref_camera_face_beauty_key"

    const v17, 0x7f0d0264

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 30
    .local v5, faceBeauty:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setStillBeautify(Ljava/lang/String;)V

    .line 31
    const-string v15, "Camera"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SetStillBeautify ="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v16, "pref_camera_show_gender_age_key"

    const v17, 0x7f0d024e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 35
    .local v12, showGenderAndAge:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraQcom;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v15

    invoke-virtual {v15, v12}, Lcom/android/camera/ui/FaceView;->setShowGenderAndAge(Ljava/lang/String;)V

    .line 36
    const-string v15, "Camera"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SetShowGenderAndAge ="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v16, "pref_camera_multiple_face_beauty_key"

    const v17, 0x7f0d0265

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 41
    .local v7, mulityFaceBeauty:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setMultiFaceBeautify(Ljava/lang/String;)V

    .line 42
    const-string v15, "Camera"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SetMultiFaceBeautify ="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getSupportedDenoiseModes()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 47
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMultiSnapStatus:Z

    if-eqz v15, :cond_a

    const-string v2, "denoise-off"

    .line 49
    .local v2, Denoise:Ljava/lang/String;
    :goto_1
    const-string v15, "Camera"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Denoise value = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setDenoise(Ljava/lang/String;)V

    .line 53
    .end local v2           #Denoise:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v16, "pref_qc_camera_iso_key"

    const v17, 0x7f0d00ce

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, iso:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getSupportedIsoValues()Ljava/util/List;

    move-result-object v15

    invoke-static {v6, v15}, Lcom/android/camera/camera_adapter/CameraQcom;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 57
    const-string v15, "Camera"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ISO value = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setISOValue(Ljava/lang/String;)V

    .line 62
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v16, "pref_qc_camera_saturation_key"

    const v17, 0x7f0d00b2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 65
    .local v9, saturationStr:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getMaxSaturation()I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 66
    .local v8, saturation:I
    if-ltz v8, :cond_2

    .line 67
    const-string v15, "Camera"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Saturation value = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setSaturation(I)V

    .line 72
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v16, "pref_qc_camera_contrast_key"

    const v17, 0x7f0d00af

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, contrastStr:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getMaxContrast()I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 76
    .local v3, contrast:I
    if-ltz v3, :cond_3

    .line 77
    const-string v15, "Camera"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Contrast value = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setContrast(I)V

    .line 82
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v16, "pref_qc_camera_sharpness_key"

    const v17, 0x7f0d00b5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 85
    .local v11, sharpnessStr:Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getMaxSharpness()I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 86
    .local v10, sharpness:I
    if-ltz v10, :cond_4

    .line 87
    const-string v15, "Camera"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Sharpness value = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setSharpness(I)V

    .line 91
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v16, "pref_camera_touchafaec_key"

    const v17, 0x7f0d00a2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 94
    .local v13, touchAfAec:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getSupportedTouchAfAec()Ljava/util/List;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/android/camera/camera_adapter/CameraQcom;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 95
    const-string v15, "Camera"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "TouchAfAec value = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setTouchAfAec(Ljava/lang/String;)V

    .line 99
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/camera_adapter/CameraQcom;->setPictureFlipIfNeed(Lcom/android/camera/hardware/QcomCamera$QcomParameters;)V

    .line 101
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mFaceDetectionEnabled:Z

    if-eqz v15, :cond_b

    .line 102
    const-string v15, "on"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setFaceDetectionMode(Ljava/lang/String;)V

    .line 108
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v15}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v15

    if-nez v15, :cond_e

    .line 109
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v15}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 110
    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setHandNight(Z)V

    .line 111
    const-string v15, "Camera"

    const-string v16, "Hand Nigh = true"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_6
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraQcom;->getZSL()Ljava/lang/String;

    move-result-object v14

    .line 124
    .local v14, zsl:Ljava/lang/String;
    const-string v15, "Camera"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ZSL value = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v15, "on"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 126
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsZSLMode:Z

    .line 127
    const-string v15, "on"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setZSLMode(Ljava/lang/String;)V

    .line 133
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsZSLMode:Z

    if-eqz v15, :cond_10

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMultiSnapStatus:Z

    if-eqz v15, :cond_10

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    if-nez v15, :cond_10

    .line 134
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    .line 135
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/CameraManager$CameraProxy;->setLongshotMode(Z)V

    .line 140
    :cond_8
    :goto_5
    const-string v15, "Camera"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Long Shot mode value = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isLongShotMode()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void

    .line 24
    .end local v3           #contrast:I
    .end local v4           #contrastStr:Ljava/lang/String;
    .end local v5           #faceBeauty:Ljava/lang/String;
    .end local v6           #iso:Ljava/lang/String;
    .end local v7           #mulityFaceBeauty:Ljava/lang/String;
    .end local v8           #saturation:I
    .end local v9           #saturationStr:Ljava/lang/String;
    .end local v10           #sharpness:I
    .end local v11           #sharpnessStr:Ljava/lang/String;
    .end local v12           #showGenderAndAge:Ljava/lang/String;
    .end local v13           #touchAfAec:Ljava/lang/String;
    .end local v14           #zsl:Ljava/lang/String;
    :cond_9
    const-string v15, "off"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setTimeWatermark(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 47
    .restart local v5       #faceBeauty:Ljava/lang/String;
    .restart local v7       #mulityFaceBeauty:Ljava/lang/String;
    .restart local v12       #showGenderAndAge:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v16, "pref_camera_denoise_key"

    const v17, 0x7f0d00cd

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/CameraQcom;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 104
    .restart local v3       #contrast:I
    .restart local v4       #contrastStr:Ljava/lang/String;
    .restart local v6       #iso:Ljava/lang/String;
    .restart local v8       #saturation:I
    .restart local v9       #saturationStr:Ljava/lang/String;
    .restart local v10       #sharpness:I
    .restart local v11       #sharpnessStr:Ljava/lang/String;
    .restart local v13       #touchAfAec:Ljava/lang/String;
    :cond_b
    const-string v15, "off"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setFaceDetectionMode(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 112
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v15}, Lcom/android/camera/MutexModeManager;->isRAW()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 113
    const-string v15, "Camera"

    const-string v16, "Raw Data = true"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 114
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v15}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 115
    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setMorphoHDR(Z)V

    .line 116
    const-string v15, "Camera"

    const-string v16, "Morpho HDR = true"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 119
    :cond_e
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setHandNight(Z)V

    .line 120
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setMorphoHDR(Z)V

    goto/16 :goto_3

    .line 128
    .restart local v14       #zsl:Ljava/lang/String;
    :cond_f
    const-string v15, "off"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 129
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsZSLMode:Z

    .line 130
    const-string v15, "off"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setZSLMode(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 136
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    if-eqz v15, :cond_8

    .line 137
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    .line 138
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/CameraManager$CameraProxy;->setLongshotMode(Z)V

    goto/16 :goto_5
.end method

.method private setPictureFlipIfNeed(Lcom/android/camera/hardware/QcomCamera$QcomParameters;)V
    .locals 3
    .parameter "parameters"

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isFrontMirror(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    .line 188
    const-string v0, "flip-h"

    invoke-virtual {p1, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setPictureFlip(Ljava/lang/String;)V

    .line 195
    :goto_0
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Picture flip value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getPictureFlip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void

    .line 190
    :cond_0
    const-string v0, "flip-v"

    invoke-virtual {p1, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setPictureFlip(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_1
    const-string v0, "off"

    invoke-virtual {p1, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setPictureFlip(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getSupportedSettingKeys()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->isBackCamera()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsImageCaptureIntent:Z

    invoke-static {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraQcom;->getProfessionalLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected isLongShotMode()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsLongShotMode:Z

    return v0
.end method

.method protected isSupportSceneMode()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method protected isZeroShotMode()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsZSLMode:Z

    return v0
.end method

.method protected needAutoFocusBeforeCapture()Z
    .locals 4

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, flashMode:Ljava/lang/String;
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "true"

    iget-object v2, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "flash-on"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected needSetupPreview()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mIsZSLMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mMutliSnapStopRequest:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected prepareCapture()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraQcom;->setPictureFlipIfNeed(Lcom/android/camera/hardware/QcomCamera$QcomParameters;)V

    .line 201
    return-void
.end method

.method protected setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0
    .parameter "parameters"
    .parameter "value"

    .prologue
    .line 160
    check-cast p1, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setAutoExposure(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method protected updateCameraParametersPreference()V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    .line 171
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    instance-of v0, v0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraQcom;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraQcom;->qcomUpdateCameraParametersPreference(Lcom/android/camera/hardware/QcomCamera$QcomParameters;)V

    .line 174
    :cond_0
    return-void
.end method
