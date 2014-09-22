.class public Lcom/android/camera/ui/V6BottomControlPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6BottomControlPanel.java"


# instance fields
.field public mCameraBottomControlPanel:Lcom/android/camera/ui/V6CameraBottomControlPanel;

.field public mCaptureControlPanel:Lcom/android/camera/ui/V6CaptureControlPanel;

.field public mVideoBottomControlPanel:Lcom/android/camera/ui/V6VideoBottomControlPanel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method public animationSwitchToCamera(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mVideoBottomControlPanel:Lcom/android/camera/ui/V6VideoBottomControlPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->animateSwitch(Ljava/lang/Runnable;Z)V

    .line 54
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mCameraBottomControlPanel:Lcom/android/camera/ui/V6CameraBottomControlPanel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->animateSwitch(Ljava/lang/Runnable;Z)V

    .line 55
    return-void
.end method

.method public animationSwitchToVideo(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mCameraBottomControlPanel:Lcom/android/camera/ui/V6CameraBottomControlPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->animateSwitch(Ljava/lang/Runnable;Z)V

    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mVideoBottomControlPanel:Lcom/android/camera/ui/V6VideoBottomControlPanel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->animateSwitch(Ljava/lang/Runnable;Z)V

    .line 50
    return-void
.end method

.method public getModulePicker()Lcom/android/camera/ui/V6ModulePicker;
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mVideoBottomControlPanel:Lcom/android/camera/ui/V6VideoBottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->getModulePicker()Lcom/android/camera/ui/V6ModulePicker;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mCameraBottomControlPanel:Lcom/android/camera/ui/V6CameraBottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->getModulePicker()Lcom/android/camera/ui/V6ModulePicker;

    move-result-object v0

    goto :goto_0
.end method

.method public getReviewCancledView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mCaptureControlPanel:Lcom/android/camera/ui/V6CaptureControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CaptureControlPanel;->getReviewCancledView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    return-object v0
.end method

.method public getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mCaptureControlPanel:Lcom/android/camera/ui/V6CaptureControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CaptureControlPanel;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    return-object v0
.end method

.method public getShutterButton()Lcom/android/camera/ui/V6ShutterButton;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mVideoBottomControlPanel:Lcom/android/camera/ui/V6VideoBottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mCameraBottomControlPanel:Lcom/android/camera/ui/V6CameraBottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    goto :goto_0
.end method

.method public getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mVideoBottomControlPanel:Lcom/android/camera/ui/V6VideoBottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mCameraBottomControlPanel:Lcom/android/camera/ui/V6CameraBottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v0

    goto :goto_0
.end method

.method public onCameraOpen()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onCameraOpen()V

    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isScanQRCodeIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomControlPanel;->setVisibility(I)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomControlPanel;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onCreate()V

    .line 35
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    .line 24
    const v0, 0x7f0c0028

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6CameraBottomControlPanel;

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mCameraBottomControlPanel:Lcom/android/camera/ui/V6CameraBottomControlPanel;

    .line 26
    const v0, 0x7f0c005c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6VideoBottomControlPanel;

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mVideoBottomControlPanel:Lcom/android/camera/ui/V6VideoBottomControlPanel;

    .line 28
    const v0, 0x7f0c0035

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6CaptureControlPanel;

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mCaptureControlPanel:Lcom/android/camera/ui/V6CaptureControlPanel;

    .line 30
    return-void
.end method

.method public updateThumbnailView(Lcom/android/camera/Thumbnail;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mVideoBottomControlPanel:Lcom/android/camera/ui/V6VideoBottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6ThumbnailButton;->updateThumbnail(Lcom/android/camera/Thumbnail;)V

    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlPanel;->mCameraBottomControlPanel:Lcom/android/camera/ui/V6CameraBottomControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6ThumbnailButton;->updateThumbnail(Lcom/android/camera/Thumbnail;)V

    .line 66
    return-void
.end method
