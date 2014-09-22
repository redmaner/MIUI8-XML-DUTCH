.class public Lcom/android/camera/ui/V6PauseRecordingButton;
.super Lcom/android/camera/ui/V6BottomAnimationImageView;
.source "V6PauseRecordingButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6PauseRecordingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/V6PauseRecordingButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/V6PauseRecordingButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const v2, 0x7f0c005d

    const/4 v3, 0x3

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->onCreate()V

    .line 33
    invoke-static {}, Lcom/android/camera/Device;->isSupportedVideoPause()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ui/V6PauseRecordingButton;->mVisible:Z

    .line 34
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->onResume()V

    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PauseRecordingButton;->setVisibility(I)V

    .line 22
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/camera/ui/V6PauseRecordingButton;->mVisible:Z

    if-nez v0, :cond_0

    const/16 p1, 0x8

    .line 27
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setVisibility(I)V

    .line 28
    return-void
.end method
