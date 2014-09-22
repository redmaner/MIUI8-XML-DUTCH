.class public Lcom/android/camera/AudioCaptureManager;
.super Ljava/lang/Object;
.source "AudioCaptureManager.java"

# interfaces
.implements Lcom/android/camera/AudioCapture$Callback;


# static fields
.field private static final DELAY_NUMBERS:[I


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mAudioCapture:Lcom/android/camera/AudioCapture;

.field private mCameraModule:Lcom/android/camera/module/CameraModule;

.field private mCaptureDelayView:Lcom/android/camera/ui/RotateImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/AudioCaptureManager;->DELAY_NUMBERS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x53t 0x0t 0x2t 0x7ft
        0x54t 0x0t 0x2t 0x7ft
        0x55t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/ActivityBase;)V
    .locals 2
    .parameter "module"
    .parameter "activity"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    .line 26
    iput-object p2, p0, Lcom/android/camera/AudioCaptureManager;->mActivity:Lcom/android/camera/ActivityBase;

    .line 27
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CameraModule == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getCaptureDelayNumber()Lcom/android/camera/ui/RotateImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCaptureDelayView:Lcom/android/camera/ui/RotateImageView;

    .line 31
    new-instance v0, Lcom/android/camera/AudioCapture;

    invoke-direct {v0, p0}, Lcom/android/camera/AudioCapture;-><init>(Lcom/android/camera/AudioCapture$Callback;)V

    iput-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    .line 32
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->pause()V

    .line 97
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 98
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const v1, 0x7f020188

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setImageResource(I)V

    .line 99
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setAudioCapture(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const/high16 v1, -0x4080

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setAudioProgress(F)V

    .line 102
    :cond_0
    return-void
.end method

.method public getShutterButton()Lcom/android/camera/ui/V6ShutterButton;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    return-object v0
.end method

.method public hideDelayNumber()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCaptureDelayView:Lcom/android/camera/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 66
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->isInCameraApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->close()V

    .line 50
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->close()V

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 126
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->open()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->close()V

    .line 43
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setAudioCapture(Z)V

    .line 45
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAudioCaptureOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/android/camera/AudioCaptureManager;->open()V

    .line 38
    :cond_0
    return-void
.end method

.method public open()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mAudioCapture:Lcom/android/camera/AudioCapture;

    invoke-virtual {v0}, Lcom/android/camera/AudioCapture;->start()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 107
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setAudioCapture(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mActivity:Lcom/android/camera/ActivityBase;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    .line 110
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const v1, 0x7f020185

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setImageResource(I)V

    .line 117
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setAudioCapture(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const v1, 0x7f020188

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setImageResource(I)V

    .line 114
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mActivity:Lcom/android/camera/ActivityBase;

    const v1, 0x7f0d0180

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public readyToAudioCapture()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->readyToAudioCapture()Z

    move-result v0

    return v0
.end method

.method public releaseShutter()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->isInCameraApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCameraModule:Lcom/android/camera/module/CameraModule;

    const/16 v1, 0x2bc

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/CameraModule;->sendDelayedCaptureMessage(II)V

    .line 79
    :cond_0
    return-void
.end method

.method public setDelayStep(I)V
    .locals 2
    .parameter "step"

    .prologue
    .line 56
    if-ltz p1, :cond_1

    sget-object v0, Lcom/android/camera/AudioCaptureManager;->DELAY_NUMBERS:[I

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCaptureDelayView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCaptureDelayView:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/camera/AudioCaptureManager;->mCaptureDelayView:Lcom/android/camera/ui/RotateImageView;

    sget-object v1, Lcom/android/camera/AudioCaptureManager;->DELAY_NUMBERS:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 62
    :cond_1
    return-void
.end method
