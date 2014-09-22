.class public Lcom/android/camera/ui/V6SettingsStatusBar;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6SettingsStatusBar.java"


# instance fields
.field private mAudioCapture:Lcom/android/camera/ui/RotateImageView;

.field private mColorEffect:Lcom/android/camera/ui/RotateImageView;

.field private mEvTextView:Lcom/android/camera/ui/RotateTextView;

.field private mFaceBeauty:Lcom/android/camera/ui/RotateImageView;

.field private mZoomTextView:Lcom/android/camera/ui/RotateTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method private updateAudioCapture()V
    .locals 3

    .prologue
    .line 53
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAudioCaptureOpen()Z

    move-result v0

    .line 54
    .local v0, visible:Z
    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mAudioCapture:Lcom/android/camera/ui/RotateImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mAudioCapture:Lcom/android/camera/ui/RotateImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateColorEffect()V
    .locals 7

    .prologue
    const v6, 0x7f0d008b

    const/4 v2, 0x0

    .line 73
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    const-string v4, "pref_camera_coloreffect_key"

    invoke-virtual {p0, v6}, Lcom/android/camera/ui/V6SettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, colorEffect:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/V6SettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 78
    .local v1, showColorEffect:Z
    :goto_0
    if-nez v1, :cond_2

    .line 79
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mColorEffect:Lcom/android/camera/ui/RotateImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 83
    :goto_1
    return-void

    .end local v1           #showColorEffect:Z
    :cond_1
    move v1, v2

    .line 76
    goto :goto_0

    .line 81
    .restart local v1       #showColorEffect:Z
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mColorEffect:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateFaceBeauty()V
    .locals 4

    .prologue
    .line 62
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    const-string v2, "pref_camera_face_beauty_key"

    const v3, 0x7f0d0264

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/V6SettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, faceBeauty:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mFaceBeauty:Lcom/android/camera/ui/RotateImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mFaceBeauty:Lcom/android/camera/ui/RotateImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getString(I)Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 111
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->setVisibility(I)V

    .line 42
    return-void
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 117
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    .line 29
    const v0, 0x7f0c0053

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mFaceBeauty:Lcom/android/camera/ui/RotateImageView;

    .line 30
    const v0, 0x7f0c0054

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mColorEffect:Lcom/android/camera/ui/RotateImageView;

    .line 31
    const v0, 0x7f0c0055

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mAudioCapture:Lcom/android/camera/ui/RotateImageView;

    .line 32
    const v0, 0x7f0c0057

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateTextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mEvTextView:Lcom/android/camera/ui/RotateTextView;

    .line 33
    const v0, 0x7f0c0058

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateTextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Lcom/android/camera/ui/RotateTextView;

    .line 34
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->setVisibility(I)V

    .line 122
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->setVisibility(I)V

    .line 38
    return-void
.end method

.method public updateEV()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 86
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3dcccccd

    mul-float v0, v2, v3

    .line 87
    .local v0, ev:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3d4ccccd

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 88
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    const-string v1, "-"

    .line 89
    .local v1, symbol:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mEvTextView:Lcom/android/camera/ui/RotateTextView;

    const-string v3, "%s %.1f"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/RotateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mEvTextView:Lcom/android/camera/ui/RotateTextView;

    invoke-virtual {v2, v7}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    .line 94
    .end local v1           #symbol:Ljava/lang/String;
    :goto_1
    return-void

    .line 88
    :cond_0
    const-string v1, "+"

    goto :goto_0

    .line 92
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mEvTextView:Lcom/android/camera/ui/RotateTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateStatus()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateAudioCapture()V

    .line 46
    invoke-direct {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateFaceBeauty()V

    .line 47
    invoke-direct {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateColorEffect()V

    .line 48
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateEV()V

    .line 49
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateZoom()V

    .line 50
    return-void
.end method

.method public updateZoom()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 97
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 98
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->readZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v1

    .line 100
    .local v1, valueIndex:I
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c8

    div-float v2, v3, v4

    .line 101
    .local v2, zoomScale:F
    const v3, 0x3f8147ae

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Lcom/android/camera/ui/RotateTextView;

    const-string v4, "x %.1f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RotateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Lcom/android/camera/ui/RotateTextView;

    invoke-virtual {v3, v7}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    .line 108
    .end local v1           #valueIndex:I
    .end local v2           #zoomScale:F
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingsStatusBar;->mZoomTextView:Lcom/android/camera/ui/RotateTextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    goto :goto_0
.end method
