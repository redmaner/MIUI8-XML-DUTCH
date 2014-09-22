.class public Lcom/android/camera/ui/V6BottomAnimationImageView;
.super Lcom/android/camera/ui/RotateImageView;
.source "V6BottomAnimationImageView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field private mAnimationIn:Landroid/view/animation/Animation;

.field private mAnimationInCallback:Ljava/lang/Runnable;

.field private mAnimationOut:Landroid/view/animation/Animation;

.field private mAnimationOutCallback:Ljava/lang/Runnable;

.field protected mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method public animateIn(Ljava/lang/Runnable;IZ)V
    .locals 3
    .parameter "callback"
    .parameter "duration"
    .parameter "changeVisiblity"

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 72
    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 76
    if-eqz p3, :cond_1

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setVisibility(I)V

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 81
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->clearAnimation()V

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationIn:Landroid/view/animation/Animation;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 90
    :cond_2
    :goto_0
    return-void

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 87
    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public animateOut(Ljava/lang/Runnable;IZ)V
    .locals 3
    .parameter "callback"
    .parameter "duration"
    .parameter "changeVisiblity"

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 97
    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    .line 100
    :cond_0
    if-eqz p3, :cond_2

    .line 101
    new-instance v0, Lcom/android/camera/ui/V6BottomAnimationImageView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/V6BottomAnimationImageView$1;-><init>(Lcom/android/camera/ui/V6BottomAnimationImageView;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    .line 114
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 115
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->clearAnimation()V

    .line 116
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOut:Landroid/view/animation/Animation;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 117
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 124
    :cond_1
    :goto_1
    return-void

    .line 111
    :cond_2
    iput-object p1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_0

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 121
    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_1
.end method

.method public enableControls(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->setEnabled(Z)V

    .line 163
    return-void
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "what"
    .parameter "sender"
    .parameter "extra1"
    .parameter "extra2"

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationIn:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 175
    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOut:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 180
    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 188
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 168
    return-void
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    .line 31
    invoke-super {p0}, Lcom/android/camera/ui/RotateImageView;->onFinishInflate()V

    .line 32
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const v6, 0x3ecccccd

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationIn:Landroid/view/animation/Animation;

    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationIn:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationIn:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 39
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    const v8, 0x3ecccccd

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOut:Landroid/view/animation/Animation;

    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOut:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOut:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 44
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->clearAnimation()V

    .line 142
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/camera/ui/V6BottomAnimationImageView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 158
    return-void
.end method
