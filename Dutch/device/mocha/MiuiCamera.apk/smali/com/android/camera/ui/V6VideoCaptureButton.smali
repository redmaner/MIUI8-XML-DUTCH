.class public Lcom/android/camera/ui/V6VideoCaptureButton;
.super Lcom/android/camera/ui/RotateImageView;
.source "V6VideoCaptureButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method


# virtual methods
.method public enableControls(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6VideoCaptureButton;->setEnabled(Z)V

    .line 55
    return-void
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "what"
    .parameter "sender"
    .parameter "extra1"
    .parameter "extra2"

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraOpen()V
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6VideoCaptureButton;->setVisibility(I)V

    .line 50
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoCaptureButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoCaptureButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const v2, 0x7f0c005f

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lcom/android/camera/ui/RotateImageView;->onFinishInflate()V

    .line 25
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6VideoCaptureButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/camera/ui/V6VideoCaptureButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 44
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 30
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6VideoCaptureButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isVideoCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoCapturVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    :cond_0
    const/16 p1, 0x8

    .line 35
    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 36
    return-void
.end method
