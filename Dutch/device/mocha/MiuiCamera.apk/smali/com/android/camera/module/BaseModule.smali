.class public abstract Lcom/android/camera/module/BaseModule;
.super Ljava/lang/Object;
.source "BaseModule.java"

# interfaces
.implements Lcom/android/camera/module/Module;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/BaseModule$CameraOpenThread;
    }
.end annotation


# instance fields
.field protected mActivity:Lcom/android/camera/Camera;

.field protected mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field protected mCameraDisabled:Z

.field protected mCameraId:I

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field protected mExposureCompensationStep:F

.field protected mHasPendingSwitching:Z

.field private mIngoreTouchEvent:Z

.field protected mIsScanQRCodeIntent:Z

.field protected mMainThreadId:J

.field protected mMaxExposureCompensation:I

.field protected mMinExposureCompensation:I

.field protected mMutexModePicker:Lcom/android/camera/MutexModeManager;

.field protected mNumberOfCameras:I

.field protected mOpenCameraFail:Z

.field protected mOrientation:I

.field protected mOrientationCompensation:I

.field protected mParameters:Landroid/hardware/Camera$Parameters;

.field protected mPaused:Z

.field protected mPendingSwitchCameraId:I

.field protected mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

.field protected mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

.field protected mShowCameraAppView:Z

.field protected mSwitchingCamera:Z

.field protected mUIStyle:I

.field protected mZoomMax:I

.field private mZoomScaled:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mShowCameraAppView:Z

    .line 59
    iput v1, p0, Lcom/android/camera/module/BaseModule;->mPendingSwitchCameraId:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    .line 63
    iput v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    .line 112
    iput v1, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    return-void
.end method

.method protected static getColorEffectKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    invoke-static {}, Lcom/android/camera/Device;->isSupporteShaderEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_camera_shader_coloreffect_key"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "pref_camera_coloreffect_key"

    goto :goto_0
.end method

.method protected static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 543
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public IsIngoreTouchEvent()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIngoreTouchEvent:Z

    return v0
.end method

.method protected addMuteToParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "parameters"

    .prologue
    .line 506
    const-string v0, "camera-service-mute"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    return-void
.end method

.method protected addZoom(I)V
    .locals 4
    .parameter "add"

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomValue()I

    move-result v0

    .line 424
    .local v0, value:I
    add-int/2addr v0, p1

    .line 425
    if-gez v0, :cond_1

    .line 426
    const/4 v0, 0x0

    .line 430
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 431
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 432
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setZoomValue(I)V

    .line 433
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateZoom()V

    .line 434
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Zoom : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-void

    .line 427
    :cond_1
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    if-le v0, v1, :cond_0

    .line 428
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    goto :goto_0
.end method

.method public animateSwitchCameraAfter()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateSwitchCameraAfter()V

    .line 250
    return-void
.end method

.method protected animateSwitchCameraBefore()V
    .locals 0

    .prologue
    .line 600
    return-void
.end method

.method protected currentIsMainThread()Z
    .locals 4

    .prologue
    .line 220
    iget-wide v0, p0, Lcom/android/camera/module/BaseModule;->mMainThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method protected enableCameraControls(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 451
    return-void
.end method

.method protected enterMutexMode()V
    .locals 0

    .prologue
    .line 455
    return-void
.end method

.method protected exitMutexMode()V
    .locals 0

    .prologue
    .line 453
    return-void
.end method

.method public getActivity()Lcom/android/camera/Camera;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    return-object v0
.end method

.method protected getCameraRotation()I
    .locals 1

    .prologue
    .line 590
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultPreferenceId(I)I
    .locals 1
    .parameter "prefId"

    .prologue
    .line 571
    const v0, 0x7f0d00e0

    if-ne v0, p1, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->isAntibanding60()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    const p1, 0x7f0d00e1

    .line 574
    .end local p1
    :cond_0
    return p1
.end method

.method protected getPreferencesLocalId()I
    .locals 2

    .prologue
    .line 522
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    .line 523
    .local v0, preferencesLocalId:I
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 524
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    add-int/lit8 v0, v1, 0x2

    .line 530
    :cond_0
    :goto_0
    return v0

    .line 525
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 526
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    add-int/lit8 v0, v1, 0x4

    goto :goto_0

    .line 527
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isScanQRCodeIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    add-int/lit8 v0, v1, 0x6

    goto :goto_0
.end method

.method protected getPreferredCameraId()I
    .locals 2

    .prologue
    .line 534
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 535
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 536
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 538
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1, v0}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 539
    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedSettingKeys()Ljava/util/List;
    .locals 1
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
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUIController()Lcom/android/camera/ui/UIController;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    return-object v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method protected getZoomValue()I
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->readZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v0

    return v0
.end method

.method public handleControllerEvent(Ljava/lang/String;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 274
    const-string v0, "com.android.camera.CLOSE_CAMERA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->finish()V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    const-string v0, "com.android.camera.CLICK_SHUTTER_BUTTON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->performShutterClick()V

    goto :goto_0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .parameter "what"
    .parameter "sender"
    .parameter "extra1"
    .parameter "extra2"

    .prologue
    .line 151
    packed-switch p2, :pswitch_data_0

    .line 163
    :cond_0
    const/4 v1, 0x0

    .end local p3
    :goto_0
    return v1

    .line 153
    .restart local p3
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v1, :cond_0

    .line 154
    check-cast p3, Ljava/lang/Integer;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 155
    .local v0, value:I
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 156
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 157
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1, v0}, Lcom/android/camera/CameraSettings;->writeExposure(Lcom/android/camera/preferences/CameraSettingPreferences;I)V

    .line 158
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateEV()V

    .line 159
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EV = : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v1, 0x1

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0048
        :pswitch_0
    .end packed-switch
.end method

.method protected handleVolumeKeyEvent(ZI)Z
    .locals 6
    .parameter "up"
    .parameter "repeatCount"

    .prologue
    const/4 v1, 0x1

    .line 373
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v3, "pref_camera_volumekey_function_key"

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v5, 0x7f0d017a

    invoke-virtual {v4, v5}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mShowCameraAppView:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_1

    .line 402
    :cond_0
    :goto_0
    return v1

    .line 378
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v3, 0x7f0d0177

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 379
    if-nez p2, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->performShutterClick()V

    goto :goto_0

    .line 383
    :cond_2
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isPanoramaModule()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v3, 0x7f0d0178

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 385
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isZoomEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 386
    if-eqz p1, :cond_3

    .line 387
    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->addZoom(I)V

    goto :goto_0

    .line 389
    :cond_3
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/camera/module/BaseModule;->addZoom(I)V

    goto :goto_0

    .line 402
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public ingoreTouchEvent(Z)V
    .locals 0
    .parameter "ignore"

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mIngoreTouchEvent:Z

    .line 230
    return-void
.end method

.method protected initializeExposureCompensation()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mMaxExposureCompensation:I

    .line 418
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mMinExposureCompensation:I

    .line 419
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mExposureCompensationStep:F

    .line 420
    return-void
.end method

.method protected initializeMutexMode()V
    .locals 8

    .prologue
    .line 458
    iget-object v7, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    if-eqz v7, :cond_0

    .line 503
    :goto_0
    return-void

    .line 459
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 461
    .local v6, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;>;"
    new-instance v2, Lcom/android/camera/module/BaseModule$1;

    invoke-direct {v2, p0}, Lcom/android/camera/module/BaseModule$1;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 468
    .local v2, enterHDR:Ljava/lang/Runnable;
    new-instance v4, Lcom/android/camera/module/BaseModule$2;

    invoke-direct {v4, p0}, Lcom/android/camera/module/BaseModule$2;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 475
    .local v4, exitHDR:Ljava/lang/Runnable;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 476
    .local v0, HDRRunnable:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;"
    const-string v7, "enter"

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const-string v7, "exit"

    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const/4 v7, 0x2

    invoke-static {v7}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const/4 v7, 0x5

    invoke-static {v7}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const/4 v7, 0x3

    invoke-static {v7}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    new-instance v3, Lcom/android/camera/module/BaseModule$3;

    invoke-direct {v3, p0}, Lcom/android/camera/module/BaseModule$3;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 491
    .local v3, enterRAW:Ljava/lang/Runnable;
    new-instance v5, Lcom/android/camera/module/BaseModule$4;

    invoke-direct {v5, p0}, Lcom/android/camera/module/BaseModule$4;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 498
    .local v5, exitRAW:Ljava/lang/Runnable;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 499
    .local v1, RAWRunnable:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;"
    const-string v7, "enter"

    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const-string v7, "exit"

    invoke-virtual {v1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const/4 v7, 0x4

    invoke-static {v7}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    new-instance v7, Lcom/android/camera/MutexModeManager;

    invoke-direct {v7, v6}, Lcom/android/camera/MutexModeManager;-><init>(Ljava/util/HashMap;)V

    iput-object v7, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    goto :goto_0
.end method

.method protected initializeZoom()V
    .locals 3

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    .line 409
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->setOrientation(IZ)V

    .line 412
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setZoomValue(I)V

    goto :goto_0
.end method

.method protected isBackCamera()Z
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isFrontCamera()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 547
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoRecording()Z
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method protected isZoomEnabled()Z
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 332
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraPickerClicked(I)Z
    .locals 1
    .parameter "cameraId"

    .prologue
    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Lcom/android/camera/Camera;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 125
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/BaseModule;->mMainThreadId:J

    .line 126
    invoke-virtual {p1}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 127
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mNumberOfCameras:I

    .line 128
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v0, v1}, Lcom/android/camera/CameraErrorCallback;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 129
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 130
    new-instance v0, Lcom/android/camera/preferences/SettingsOverrider;

    invoke-direct {v0}, Lcom/android/camera/preferences/SettingsOverrider;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    .line 131
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeMutexMode()V

    .line 132
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->removeInstance(Landroid/content/Context;)V

    .line 141
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->removeInstance(Landroid/content/Context;)V

    .line 142
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 326
    return-void
.end method

.method protected onOpenCameraException()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 306
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    if-ne v0, v6, :cond_0

    .line 307
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "open_camera_fail_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera/CameraSettings;->updateOpenCameraFailTimes()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    const v0, 0x7f0d0002

    :goto_0
    invoke-static {v1, v0}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 315
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDisabled:Z

    if-ne v0, v6, :cond_1

    .line 316
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v1, 0x7f0d0003

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 319
    :cond_1
    return-void

    .line 309
    :cond_2
    const v0, 0x7f0d0001

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 335
    return-void
.end method

.method public onPauseAfterSuper()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onPause()V

    .line 187
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->cancelHint()V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->resetZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setZoomValue(I)V

    .line 192
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    .line 182
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 0

    .prologue
    .line 329
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 176
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIngoreTouchEvent:Z

    .line 177
    return-void
.end method

.method public onResumeBeforeSuper()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    .line 169
    return-void
.end method

.method public onScale(FFF)Z
    .locals 2
    .parameter "focusX"
    .parameter "focusY"
    .parameter "scale"

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isZoomEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    const/high16 v1, 0x3f80

    sub-float v1, p3, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    .line 262
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->scaleZoomValue(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    .line 266
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(FF)Z
    .locals 1
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    .line 254
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd()V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 0

    .prologue
    .line 343
    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 596
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 338
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 195
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setZoomValue(I)V

    .line 564
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 565
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 566
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateZoom()V

    .line 567
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zoom : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected openCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {v1, v2}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 77
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Lcom/android/camera/CameraHardwareException;
    iput-boolean v3, p0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    .line 80
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onOpenCameraException()V

    goto :goto_0

    .line 81
    .end local v0           #e:Lcom/android/camera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 82
    .local v0, e:Lcom/android/camera/CameraDisabledException;
    iput-boolean v3, p0, Lcom/android/camera/module/BaseModule;->mCameraDisabled:Z

    .line 83
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->onOpenCameraException()V

    goto :goto_0
.end method

.method protected performShutterClick()V
    .locals 0

    .prologue
    .line 593
    return-void
.end method

.method protected playCameraSound(I)V
    .locals 1
    .parameter "soundId"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->playCameraSound(I)V

    .line 518
    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method protected resetFaceBeautyParams(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "parameters"

    .prologue
    .line 510
    const-string v0, "xiaomi-still-beautify-values"

    const v1, 0x7f0d0264

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method public scaleZoomValue(F)Z
    .locals 3
    .parameter "contrast"

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomValue()I

    move-result v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 293
    .local v0, value:I
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 294
    const/4 v1, 0x0

    .line 302
    :goto_0
    return v1

    .line 296
    :cond_0
    if-gez v0, :cond_2

    .line 297
    const/4 v0, 0x0

    .line 301
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->onZoomValueChanged(I)V

    .line 302
    const/4 v1, 0x1

    goto :goto_0

    .line 298
    :cond_2
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    if-le v0, v1, :cond_1

    .line 299
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    goto :goto_1
.end method

.method protected setZoomValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0, p1}, Lcom/android/camera/CameraSettings;->writeZoom(Lcom/android/camera/preferences/CameraSettingPreferences;I)V

    .line 583
    return-void
.end method

.method public tryRemoveCountDownMessage()V
    .locals 0

    .prologue
    .line 594
    return-void
.end method
