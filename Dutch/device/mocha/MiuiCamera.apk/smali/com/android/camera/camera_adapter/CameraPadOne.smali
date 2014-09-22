.class public Lcom/android/camera/camera_adapter/CameraPadOne;
.super Lcom/android/camera/module/CameraModule;
.source "CameraPadOne.java"


# instance fields
.field private final KEY_AUTO_ROTATE:Ljava/lang/String;

.field private final KEY_FLIP:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;-><init>()V

    .line 15
    const-string v0, "Camera"

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->TAG:Ljava/lang/String;

    .line 16
    const-string v0, "jpeg-auto-rotate"

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->KEY_AUTO_ROTATE:Ljava/lang/String;

    .line 17
    const-string v0, "jpeg-flip"

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->KEY_FLIP:Ljava/lang/String;

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
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v0, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 76
    if-nez p2, :cond_0

    .line 79
    :cond_0
    const-string v1, "pref_camera_face_beauty_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraPadOne;->getColorEffectKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    const-string v1, "pref_audio_capture"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :goto_0
    return-object v0

    .line 84
    :cond_1
    const-string v1, "pref_camera_face_beauty_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraPadOne;->getColorEffectKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    const-string v1, "pref_audio_capture"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateCameraParametersPreference(Lcom/android/camera/hardware/CameraHardware$HardwareParameters;)V
    .locals 6
    .parameter "parameters"

    .prologue
    .line 20
    const-string v3, "jpeg-auto-rotate"

    const-string v4, "true"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isWaterMarkOpen(Landroid/content/SharedPreferences;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 23
    const-string v3, "on"

    invoke-virtual {p1, v3}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->setTimeWatermark(Ljava/lang/String;)V

    .line 27
    :goto_0
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetTimeWatermark ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->getTimeWatermark()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v4, "pref_camera_face_beauty_key"

    const v5, 0x7f0d0264

    invoke-virtual {p0, v5}, Lcom/android/camera/camera_adapter/CameraPadOne;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, faceBeauty:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->setStillBeautify(Ljava/lang/String;)V

    .line 32
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetStillBeautify ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v4, "pref_camera_show_gender_age_key"

    const v5, 0x7f0d024e

    invoke-virtual {p0, v5}, Lcom/android/camera/camera_adapter/CameraPadOne;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, showGenderAndAge:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraPadOne;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/FaceView;->setShowGenderAndAge(Ljava/lang/String;)V

    .line 37
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetShowGenderAndAge ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v4, "pref_camera_multiple_face_beauty_key"

    const v5, 0x7f0d0265

    invoke-virtual {p0, v5}, Lcom/android/camera/camera_adapter/CameraPadOne;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, mulityFaceBeauty:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->setMultiFaceBeautify(Ljava/lang/String;)V

    .line 43
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetMultiFaceBeautify ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v3, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isFrontMirror(Landroid/content/SharedPreferences;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraPadOne;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 46
    const-string v3, "jpeg-flip"

    const-string v4, "true"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_1
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set JPEG horizontal flip = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "jpeg-flip"

    invoke-virtual {p1, v5}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void

    .line 25
    .end local v0           #faceBeauty:Ljava/lang/String;
    .end local v1           #mulityFaceBeauty:Ljava/lang/String;
    .end local v2           #showGenderAndAge:Ljava/lang/String;
    :cond_0
    const-string v3, "off"

    invoke-virtual {p1, v3}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->setTimeWatermark(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 48
    .restart local v0       #faceBeauty:Ljava/lang/String;
    .restart local v1       #mulityFaceBeauty:Ljava/lang/String;
    .restart local v2       #showGenderAndAge:Ljava/lang/String;
    :cond_1
    const-string v3, "jpeg-flip"

    const-string v4, "false"

    invoke-virtual {p1, v3, v4}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
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
    .line 63
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraPadOne;->isBackCamera()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->mIsImageCaptureIntent:Z

    invoke-static {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraPadOne;->getProfessionalLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected isZeroShotMode()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method protected updateCameraParametersPreference()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    .line 56
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->mParameters:Landroid/hardware/Camera$Parameters;

    instance-of v0, v0, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraPadOne;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraPadOne;->updateCameraParametersPreference(Lcom/android/camera/hardware/CameraHardware$HardwareParameters;)V

    .line 59
    :cond_0
    return-void
.end method
