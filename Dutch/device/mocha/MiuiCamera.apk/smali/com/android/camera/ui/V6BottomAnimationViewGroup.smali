.class public Lcom/android/camera/ui/V6BottomAnimationViewGroup;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6BottomAnimationViewGroup.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private mAnimationIn:Landroid/view/animation/Animation;

.field private mAnimationInCallback:Ljava/lang/Runnable;

.field private mAnimationOut:Landroid/view/animation/Animation;

.field private mAnimationOutCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method


# virtual methods
.method public animateIn(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 46
    const/16 v0, 0xc8

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->animateIn(Ljava/lang/Runnable;I)V

    .line 47
    return-void
.end method

.method public animateIn(Ljava/lang/Runnable;I)V
    .locals 1
    .parameter "callback"
    .parameter "duration"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 57
    return-void
.end method

.method public animateIn(Ljava/lang/Runnable;IZ)V
    .locals 3
    .parameter "callback"
    .parameter "duration"
    .parameter "changeVisiblity"

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 82
    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 85
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 86
    if-eqz p3, :cond_1

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->setVisibility(I)V

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 91
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->clearAnimation()V

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationIn:Landroid/view/animation/Animation;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 93
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 100
    :cond_2
    :goto_0
    return-void

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 97
    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationInCallback:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public animateOut(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 51
    const/16 v0, 0xc8

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->animateOut(Ljava/lang/Runnable;I)V

    .line 52
    return-void
.end method

.method public animateOut(Ljava/lang/Runnable;I)V
    .locals 1
    .parameter "callback"
    .parameter "duration"

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 62
    return-void
.end method

.method public animateOut(Ljava/lang/Runnable;IZ)V
    .locals 3
    .parameter "callback"
    .parameter "duration"
    .parameter "changeVisiblity"

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 107
    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOutCallback:Ljava/lang/Runnable;

    .line 110
    :cond_0
    if-eqz p3, :cond_2

    .line 111
    new-instance v0, Lcom/android/camera/ui/V6BottomAnimationViewGroup$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/V6BottomAnimationViewGroup$1;-><init>(Lcom/android/camera/ui/V6BottomAnimationViewGroup;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOutCallback:Ljava/lang/Runnable;

    .line 124
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 125
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->clearAnimation()V

    .line 126
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOut:Landroid/view/animation/Animation;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 127
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 134
    :cond_1
    :goto_1
    return-void

    .line 121
    :cond_2
    iput-object p1, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_0

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 131
    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_1
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

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationIn:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 146
    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOut:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 151
    iput-object v1, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 159
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 139
    return-void
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    .line 29
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    .line 30
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

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationIn:Landroid/view/animation/Animation;

    .line 33
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationIn:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 34
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationIn:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 37
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

    iput-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOut:Landroid/view/animation/Animation;

    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOut:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOut:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 42
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onResume()V

    .line 68
    invoke-virtual {p0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->clearAnimation()V

    .line 69
    return-void
.end method
