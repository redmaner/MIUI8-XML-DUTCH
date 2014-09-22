.class public Lcom/android/camera/ui/V6SingleSettingButton;
.super Lcom/android/camera/ui/V6TopAnimationImageView;
.source "V6SingleSettingButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6TopAnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method private update()V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v0

    .line 48
    .local v0, isFrontCamera:Z
    if-eqz v0, :cond_1

    .line 49
    const v1, 0x7f02018c

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6SingleSettingButton;->setImageResource(I)V

    .line 53
    :goto_0
    sget-boolean v1, Lcom/android/camera/Device;->IS_PAD1:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6SingleSettingButton;->setVisibility(I)V

    .line 59
    :goto_1
    return-void

    .line 51
    :cond_1
    const v1, 0x7f020189

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6SingleSettingButton;->setImageResource(I)V

    goto :goto_0

    .line 57
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6SingleSettingButton;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Lcom/android/camera/ui/V6TopAnimationImageView;->onCameraOpen()V

    .line 37
    invoke-direct {p0}, Lcom/android/camera/ui/V6SingleSettingButton;->update()V

    .line 38
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/V6SingleSettingButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/V6SingleSettingButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const v2, 0x7f0c0032

    const/4 v3, 0x3

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Lcom/android/camera/ui/V6TopAnimationImageView;->onCreate()V

    .line 31
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-super {p0}, Lcom/android/camera/ui/V6TopAnimationImageView;->onFinishInflate()V

    .line 23
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6SingleSettingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/ui/V6SingleSettingButton;->setOrientation(IZ)V

    .line 25
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Lcom/android/camera/ui/V6TopAnimationImageView;->onResume()V

    .line 43
    invoke-direct {p0}, Lcom/android/camera/ui/V6SingleSettingButton;->update()V

    .line 44
    return-void
.end method
