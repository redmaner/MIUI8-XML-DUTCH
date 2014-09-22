.class public Lcom/android/camera/ui/V6VideoTopControlPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6VideoTopControlPanel.java"


# instance fields
.field public mCameraPicker:Lcom/android/camera/ui/V6CameraPicker;

.field public mFlashButton:Lcom/android/camera/ui/V6FlashButton;

.field public mSettingButton:Lcom/android/camera/ui/V6SettingButton;

.field public mVideoCaptureButton:Lcom/android/camera/ui/V6VideoCaptureButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method public animateIn(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "callback"

    .prologue
    const/4 v2, 0x0

    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoTopControlPanel;->mFlashButton:Lcom/android/camera/ui/V6FlashButton;

    const/16 v1, 0x96

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/V6FlashButton;->animateIn(Ljava/lang/Runnable;I)V

    .line 33
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoTopControlPanel;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    const/16 v1, 0xc8

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/V6SettingButton;->animateIn(Ljava/lang/Runnable;I)V

    .line 34
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoTopControlPanel;->mCameraPicker:Lcom/android/camera/ui/V6CameraPicker;

    const/16 v1, 0xfa

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/V6CameraPicker;->animateIn(Ljava/lang/Runnable;I)V

    .line 35
    return-void
.end method

.method public animateOut(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "callback"

    .prologue
    const/4 v2, 0x0

    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoTopControlPanel;->mFlashButton:Lcom/android/camera/ui/V6FlashButton;

    const/16 v1, 0xfa

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/V6FlashButton;->animateOut(Ljava/lang/Runnable;I)V

    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoTopControlPanel;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    const/16 v1, 0xc8

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/V6SettingButton;->animateOut(Ljava/lang/Runnable;I)V

    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoTopControlPanel;->mCameraPicker:Lcom/android/camera/ui/V6CameraPicker;

    const/16 v1, 0x96

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/V6CameraPicker;->animateOut(Ljava/lang/Runnable;I)V

    .line 42
    return-void
.end method

.method public getFlashButton()Lcom/android/camera/ui/V6FlashButton;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoTopControlPanel;->mFlashButton:Lcom/android/camera/ui/V6FlashButton;

    return-object v0
.end method

.method public getVideoCaptureButton()Lcom/android/camera/ui/V6VideoCaptureButton;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoTopControlPanel;->mVideoCaptureButton:Lcom/android/camera/ui/V6VideoCaptureButton;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 21
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    .line 22
    const v0, 0x7f0c0031

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6VideoTopControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6FlashButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6VideoTopControlPanel;->mFlashButton:Lcom/android/camera/ui/V6FlashButton;

    .line 23
    const v0, 0x7f0c0033

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6VideoTopControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6SettingButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6VideoTopControlPanel;->mSettingButton:Lcom/android/camera/ui/V6SettingButton;

    .line 24
    const v0, 0x7f0c0034

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6VideoTopControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6CameraPicker;

    iput-object v0, p0, Lcom/android/camera/ui/V6VideoTopControlPanel;->mCameraPicker:Lcom/android/camera/ui/V6CameraPicker;

    .line 25
    const v0, 0x7f0c005f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6VideoTopControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6VideoCaptureButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6VideoTopControlPanel;->mVideoCaptureButton:Lcom/android/camera/ui/V6VideoCaptureButton;

    .line 27
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoTopControlPanel;->mFlashButton:Lcom/android/camera/ui/V6FlashButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6FlashButton;->initializeXml(Z)V

    .line 28
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6VideoTopControlPanel;->setVisibility(I)V

    .line 51
    :goto_0
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onResume()V

    .line 52
    return-void

    .line 49
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6VideoTopControlPanel;->setVisibility(I)V

    goto :goto_0
.end method
