.class public Lcom/android/camera/ui/V6CaptureControlPanel;
.super Landroid/widget/RelativeLayout;
.source "V6CaptureControlPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/Rotatable;
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field public mCancle:Lcom/android/camera/ui/V6BottomAnimationImageView;

.field public mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6CaptureControlPanel;->mVisible:Z

    .line 28
    return-void
.end method


# virtual methods
.method public enableControls(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 94
    return-void
.end method

.method public getReviewCancledView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/ui/V6CaptureControlPanel;->mCancle:Lcom/android/camera/ui/V6BottomAnimationImageView;

    return-object v0
.end method

.method public getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/camera/ui/V6CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    return-object v0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "what"
    .parameter "sender"
    .parameter "extra1"
    .parameter "extra2"

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const v2, 0x7f0c0035

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/V6CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    if-ne v0, p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/V6CaptureControlPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6CaptureControlPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x1

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 33
    const v0, 0x7f0c0036

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6CaptureControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6BottomAnimationImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    .line 34
    const v0, 0x7f0c0037

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6CaptureControlPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6BottomAnimationImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6CaptureControlPanel;->mCancle:Lcom/android/camera/ui/V6BottomAnimationImageView;

    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/V6CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/V6CaptureControlPanel;->mCancle:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/android/camera/ui/V6CaptureControlPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    .line 75
    .local v0, activity:Lcom/android/camera/ActivityBase;
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isVideoCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/ui/V6CaptureControlPanel;->mVisible:Z

    .line 76
    iget-boolean v1, p0, Lcom/android/camera/ui/V6CaptureControlPanel;->mVisible:Z

    if-eqz v1, :cond_2

    .line 77
    iget-object v1, p0, Lcom/android/camera/ui/V6CaptureControlPanel;->mCancle:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setVisibility(I)V

    .line 81
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/V6CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setVisibility(I)V

    .line 82
    return-void

    :cond_1
    move v1, v2

    .line 75
    goto :goto_0

    .line 79
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/V6CaptureControlPanel;->mCancle:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/camera/ui/V6CaptureControlPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 24
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/android/camera/ui/V6CaptureControlPanel;->mVisible:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/camera/ui/V6CaptureControlPanel;->mDone:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setOrientation(IZ)V

    .line 107
    iget-object v0, p0, Lcom/android/camera/ui/V6CaptureControlPanel;->mCancle:Lcom/android/camera/ui/V6BottomAnimationImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setOrientation(IZ)V

    .line 109
    :cond_0
    return-void
.end method
