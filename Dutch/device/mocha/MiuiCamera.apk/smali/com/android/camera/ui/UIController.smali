.class public Lcom/android/camera/ui/UIController;
.super Lcom/android/camera/ui/V6ModuleUI;
.source "UIController.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;


# instance fields
.field public mBottomControlPanel:Lcom/android/camera/ui/V6BottomControlPanel;

.field public mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

.field public mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

.field public mSettingPanel:Lcom/android/camera/ui/V6SettingPanel;

.field public mSettingsStatusBar:Lcom/android/camera/ui/V6SettingsStatusBar;

.field public mSmartShutterButton:Lcom/android/camera/ui/V6SmartShutterButton;

.field public mTopControlPanel:Lcom/android/camera/ui/V6TopControlPanel;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6ModuleUI;-><init>(Lcom/android/camera/Camera;)V

    .line 24
    return-void
.end method


# virtual methods
.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "what"
    .parameter "sender"
    .parameter "receiver"
    .parameter "extra1"
    .parameter "extra2"

    .prologue
    .line 82
    packed-switch p3, :pswitch_data_0

    .line 92
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 84
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0, p1, p2, p4, p5}, Lcom/android/camera/module/Module;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 87
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1, p2, p4, p5}, Lcom/android/camera/Camera;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 90
    :pswitch_2
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/camera/ui/UIController;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getBottomControlPanel()Lcom/android/camera/ui/V6BottomControlPanel;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/V6BottomControlPanel;

    return-object v0
.end method

.method public getCaptureDelayNumber()Lcom/android/camera/ui/RotateImageView;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mCaptureDelayNumber:Lcom/android/camera/ui/RotateImageView;

    return-object v0
.end method

.method public getCaptureProgressBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mProgressBar:Landroid/view/View;

    return-object v0
.end method

.method public getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mCropView:Lcom/android/camera/ui/V6EffectCropView;

    return-object v0
.end method

.method public getFaceView()Lcom/android/camera/ui/FaceView;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mFaceView:Lcom/android/camera/ui/FaceView;

    return-object v0
.end method

.method public getFlashButton()Lcom/android/camera/ui/V6FlashButton;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/V6TopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6TopControlPanel;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v0

    return-object v0
.end method

.method public getFocusView()Lcom/android/camera/ui/FocusView;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mFocusView:Lcom/android/camera/ui/FocusView;

    return-object v0
.end method

.method public getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    return-object v0
.end method

.method public getModulePicker()Lcom/android/camera/ui/V6ModulePicker;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/V6BottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomControlPanel;->getModulePicker()Lcom/android/camera/ui/V6ModulePicker;

    move-result-object v0

    return-object v0
.end method

.method public getMultiSnapNum()Lcom/android/camera/ui/RotateTextView;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mMultiSnapNum:Lcom/android/camera/ui/RotateTextView;

    return-object v0
.end method

.method public getPauseRecordingButton()Lcom/android/camera/ui/V6PauseRecordingButton;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/V6BottomControlPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6BottomControlPanel;->mVideoBottomControlPanel:Lcom/android/camera/ui/V6VideoBottomControlPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mPauseRecordingButton:Lcom/android/camera/ui/V6PauseRecordingButton;

    return-object v0
.end method

.method public getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    return-object v0
.end method

.method public getPreviewPanel()Lcom/android/camera/ui/V6PreviewPanel;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    return-object v0
.end method

.method public getReviewCancledView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/V6BottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomControlPanel;->getReviewCancledView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    return-object v0
.end method

.method public getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/V6BottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomControlPanel;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    return-object v0
.end method

.method public getReviewImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getReviewPlayView()Lcom/android/camera/ui/RotateImageView;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Lcom/android/camera/ui/RotateImageView;

    return-object v0
.end method

.method public getSettingPanel()Lcom/android/camera/ui/V6SettingPanel;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingPanel:Lcom/android/camera/ui/V6SettingPanel;

    return-object v0
.end method

.method public getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingsStatusBar:Lcom/android/camera/ui/V6SettingsStatusBar;

    return-object v0
.end method

.method public getShutterButton()Lcom/android/camera/ui/V6ShutterButton;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/V6BottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomControlPanel;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    return-object v0
.end method

.method public getSmartShutterButton()Lcom/android/camera/ui/V6SmartShutterButton;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mSmartShutterButton:Lcom/android/camera/ui/V6SmartShutterButton;

    return-object v0
.end method

.method public getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/V6BottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomControlPanel;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v0

    return-object v0
.end method

.method public getTopControlPanel()Lcom/android/camera/ui/V6TopControlPanel;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/V6TopControlPanel;

    return-object v0
.end method

.method public getVideoCaptureButton()Lcom/android/camera/ui/V6VideoCaptureButton;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/V6TopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6TopControlPanel;->getVideoCaptureButton()Lcom/android/camera/ui/V6VideoCaptureButton;

    move-result-object v0

    return-object v0
.end method

.method public getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    iget-object v0, v0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoRecordingTimeView:Lcom/android/camera/ui/V6RecordingTimeView;

    return-object v0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .parameter "what"
    .parameter "sender"
    .parameter "extra1"
    .parameter "extra2"

    .prologue
    const/4 v0, 0x1

    .line 49
    sparse-switch p2, :sswitch_data_0

    .line 76
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 51
    :sswitch_0
    iget-object v1, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/V6TopControlPanel;

    new-instance v2, Lcom/android/camera/ui/UIController$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/UIController$1;-><init>(Lcom/android/camera/ui/UIController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6TopControlPanel;->animateOut(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 60
    :sswitch_1
    iget-object v1, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/V6TopControlPanel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6TopControlPanel;->animateIn(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 64
    :sswitch_2
    iget-object v1, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/V6TopControlPanel;

    new-instance v2, Lcom/android/camera/ui/UIController$2;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/UIController$2;-><init>(Lcom/android/camera/ui/UIController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6TopControlPanel;->animateOut(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 49
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0032 -> :sswitch_2
        0x7f0c0033 -> :sswitch_0
        0x7f0c0050 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCameraOpen()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/android/camera/ui/V6ModuleUI;->onCameraOpen()V

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 45
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 28
    const v0, 0x7f0c005b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6TopControlPanel;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mTopControlPanel:Lcom/android/camera/ui/V6TopControlPanel;

    .line 29
    const v0, 0x7f0c0040

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6PreviewPanel;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    .line 30
    const v0, 0x7f0c0026

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6BottomControlPanel;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/V6BottomControlPanel;

    .line 31
    const v0, 0x7f0c004c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SettingPanel;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingPanel:Lcom/android/camera/ui/V6SettingPanel;

    .line 32
    const v0, 0x7f0c005a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SmartShutterButton;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSmartShutterButton:Lcom/android/camera/ui/V6SmartShutterButton;

    .line 33
    const v0, 0x7f0c0051

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SettingsStatusBar;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mSettingsStatusBar:Lcom/android/camera/ui/V6SettingsStatusBar;

    .line 34
    const v0, 0x7f0c003e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6CameraGLSurfaceView;

    iput-object v0, p0, Lcom/android/camera/ui/UIController;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    .line 35
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/UIController;->setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 37
    invoke-super {p0}, Lcom/android/camera/ui/V6ModuleUI;->onCreate()V

    .line 38
    return-void
.end method

.method public updateThumbnailView(Lcom/android/camera/Thumbnail;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/V6BottomControlPanel;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6BottomControlPanel;->updateThumbnailView(Lcom/android/camera/Thumbnail;)V

    .line 107
    return-void
.end method
