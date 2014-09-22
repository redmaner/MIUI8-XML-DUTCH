.class public Lcom/android/camera/ui/V6RecordingTimeView;
.super Lcom/android/camera/ui/RotateTextView;
.source "V6RecordingTimeView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field private mAnimationIn:Landroid/view/animation/Animation;

.field private mAnimationInCallback:Ljava/lang/Runnable;

.field private mAnimationOut:Landroid/view/animation/Animation;

.field private mAnimationOutCallback:Ljava/lang/Runnable;

.field private mPause:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RotateTextView;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
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

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 71
    iput-object v1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 74
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 75
    if-eqz p3, :cond_1

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RecordingTimeView;->setVisibility(I)V

    .line 79
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mPause:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 83
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/V6RecordingTimeView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 84
    invoke-virtual {p0}, Lcom/android/camera/ui/V6RecordingTimeView;->clearAnimation()V

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationIn:Landroid/view/animation/Animation;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RecordingTimeView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 93
    :cond_3
    :goto_0
    return-void

    .line 88
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 90
    iput-object v1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public animateOut(Ljava/lang/Runnable;IZ)V
    .locals 3
    .parameter "callback"
    .parameter "duration"
    .parameter "changeVisiblity"

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 100
    iput-object v1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    .line 103
    :cond_0
    if-eqz p3, :cond_3

    .line 104
    new-instance v0, Lcom/android/camera/ui/V6RecordingTimeView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/V6RecordingTimeView$1;-><init>(Lcom/android/camera/ui/V6RecordingTimeView;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    .line 117
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mPause:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/V6RecordingTimeView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 122
    invoke-virtual {p0}, Lcom/android/camera/ui/V6RecordingTimeView;->clearAnimation()V

    .line 123
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 124
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RecordingTimeView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 131
    :cond_2
    :goto_1
    return-void

    .line 114
    :cond_3
    iput-object p1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_0

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 128
    iput-object v1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_1
.end method

.method public enableControls(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 174
    return-void
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "what"
    .parameter "sender"
    .parameter "extra1"
    .parameter "extra2"

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 183
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationIn:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 186
    iput-object v1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 191
    iput-object v1, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 199
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 179
    return-void
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    .line 30
    invoke-super {p0}, Lcom/android/camera/ui/RotateTextView;->onFinishInflate()V

    .line 31
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, -0x4080

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationIn:Landroid/view/animation/Animation;

    .line 34
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationIn:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationIn:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 38
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x4080

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mAnimationOut:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 44
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mPause:Z

    .line 156
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 148
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RecordingTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/camera/ui/V6RecordingTimeView;->clearAnimation()V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/V6RecordingTimeView;->mPause:Z

    .line 151
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 169
    return-void
.end method
