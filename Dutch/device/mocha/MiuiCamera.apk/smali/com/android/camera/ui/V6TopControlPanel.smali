.class public Lcom/android/camera/ui/V6TopControlPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6TopControlPanel.java"


# instance fields
.field public mCameraTopControlPanel:Lcom/android/camera/ui/V6CameraTopControlPanel;

.field public mVideoTopControlPanel:Lcom/android/camera/ui/V6VideoTopControlPanel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method


# virtual methods
.method public animateIn(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopControlPanel;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TopControlPanel;->setVisibility(I)V

    .line 34
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/V6TopControlPanel;->mVideoTopControlPanel:Lcom/android/camera/ui/V6VideoTopControlPanel;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6VideoTopControlPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6TopControlPanel;->mCameraTopControlPanel:Lcom/android/camera/ui/V6CameraTopControlPanel;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6CameraTopControlPanel;->animateIn(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public animateOut(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopControlPanel;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 45
    new-instance v0, Lcom/android/camera/ui/V6TopControlPanel$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/V6TopControlPanel$1;-><init>(Lcom/android/camera/ui/V6TopControlPanel;Ljava/lang/Runnable;)V

    .line 54
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/android/camera/ui/V6TopControlPanel;->mVideoTopControlPanel:Lcom/android/camera/ui/V6VideoTopControlPanel;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/V6VideoTopControlPanel;->animateOut(Ljava/lang/Runnable;)V

    .line 60
    .end local v0           #r:Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-void

    .line 57
    .restart local v0       #r:Ljava/lang/Runnable;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/V6TopControlPanel;->mCameraTopControlPanel:Lcom/android/camera/ui/V6CameraTopControlPanel;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/V6CameraTopControlPanel;->animateOut(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getFlashButton()Lcom/android/camera/ui/V6FlashButton;
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6TopControlPanel;->mVideoTopControlPanel:Lcom/android/camera/ui/V6VideoTopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6VideoTopControlPanel;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6TopControlPanel;->mCameraTopControlPanel:Lcom/android/camera/ui/V6CameraTopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraTopControlPanel;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoCaptureButton()Lcom/android/camera/ui/V6VideoCaptureButton;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/V6TopControlPanel;->mVideoTopControlPanel:Lcom/android/camera/ui/V6VideoTopControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6VideoTopControlPanel;->getVideoCaptureButton()Lcom/android/camera/ui/V6VideoCaptureButton;

    move-result-object v0

    return-object v0
.end method

.method public onCameraOpen()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onCameraOpen()V

    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/V6TopControlPanel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isScanQRCodeIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TopControlPanel;->setVisibility(I)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TopControlPanel;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    .line 26
    const v0, 0x7f0c0030

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TopControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6CameraTopControlPanel;

    iput-object v0, p0, Lcom/android/camera/ui/V6TopControlPanel;->mCameraTopControlPanel:Lcom/android/camera/ui/V6CameraTopControlPanel;

    .line 27
    const v0, 0x7f0c005e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TopControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6VideoTopControlPanel;

    iput-object v0, p0, Lcom/android/camera/ui/V6TopControlPanel;->mVideoTopControlPanel:Lcom/android/camera/ui/V6VideoTopControlPanel;

    .line 28
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/ui/V6TopControlPanel;->mCameraTopControlPanel:Lcom/android/camera/ui/V6CameraTopControlPanel;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6CameraTopControlPanel;->setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V

    .line 20
    iget-object v0, p0, Lcom/android/camera/ui/V6TopControlPanel;->mVideoTopControlPanel:Lcom/android/camera/ui/V6VideoTopControlPanel;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6VideoTopControlPanel;->setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V

    .line 21
    return-void
.end method
