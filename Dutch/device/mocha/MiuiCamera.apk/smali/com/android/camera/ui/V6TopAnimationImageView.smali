.class public Lcom/android/camera/ui/V6TopAnimationImageView;
.super Lcom/android/camera/ui/RotateImageView;
.source "V6TopAnimationImageView.java"

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
    .line 20
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method


# virtual methods
.method public animateIn(Ljava/lang/Runnable;I)V
    .locals 1
    .parameter "callback"
    .parameter "duration"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/ui/V6TopAnimationImageView;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 57
    return-void
.end method

.method public animateIn(Ljava/lang/Runnable;IZ)V
    .locals 4
    .parameter "callback"
    .parameter "duration"
    .parameter "changeVisiblity"

    .prologue
    const/4 v3, 0x0

    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TopAnimationImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 70
    iput-object v3, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 74
    if-eqz p3, :cond_1

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TopAnimationImageView;->setVisibility(I)V

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopAnimationImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 79
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopAnimationImageView;->clearAnimation()V

    .line 80
    iget-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationIn:Landroid/view/animation/Animation;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TopAnimationImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    int-to-long v1, p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/ui/V6TopAnimationImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    iput-object v3, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public animateOut(Ljava/lang/Runnable;I)V
    .locals 1
    .parameter "callback"
    .parameter "duration"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/ui/V6TopAnimationImageView;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 62
    return-void
.end method

.method public animateOut(Ljava/lang/Runnable;IZ)V
    .locals 4
    .parameter "callback"
    .parameter "duration"
    .parameter "changeVisiblity"

    .prologue
    const/4 v3, 0x0

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TopAnimationImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 93
    iget-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 94
    iput-object v3, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    .line 96
    :cond_0
    if-eqz p3, :cond_1

    .line 97
    new-instance v0, Lcom/android/camera/ui/V6TopAnimationImageView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/V6TopAnimationImageView$1;-><init>(Lcom/android/camera/ui/V6TopAnimationImageView;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    .line 110
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopAnimationImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopAnimationImageView;->clearAnimation()V

    .line 112
    iget-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationOut:Landroid/view/animation/Animation;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 113
    iget-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TopAnimationImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 118
    :goto_1
    return-void

    .line 107
    :cond_1
    iput-object p1, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_0

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    int-to-long v1, p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/ui/V6TopAnimationImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    iput-object v3, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_1
.end method

.method public enableControls(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6TopAnimationImageView;->setEnabled(Z)V

    .line 162
    return-void
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "what"
    .parameter "sender"
    .parameter "extra1"
    .parameter "extra2"

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationIn:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 174
    iput-object v1, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationOut:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 179
    iput-object v1, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 187
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 167
    return-void
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    .line 29
    invoke-super {p0}, Lcom/android/camera/ui/RotateImageView;->onFinishInflate()V

    .line 30
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const v6, -0x40b33333

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationIn:Landroid/view/animation/Animation;

    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationIn:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 33
    iget-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationIn:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 34
    iget-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 36
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    const v8, -0x40b33333

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationOut:Landroid/view/animation/Animation;

    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationOut:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationOut:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationOut:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 42
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TopAnimationImageView;->clearAnimation()V

    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TopAnimationImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6TopAnimationImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 135
    :cond_1
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/camera/ui/V6TopAnimationImageView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 152
    return-void
.end method
