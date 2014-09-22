.class public Lcom/android/camera/ui/V6CameraBottomControlPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6CameraBottomControlPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private mAnimationSwitchInCallback:Ljava/lang/Runnable;

.field private mAnimationSwitchOutCallback:Ljava/lang/Runnable;

.field public mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

.field private mModulePickerSwichIn:Landroid/view/animation/AnimationSet;

.field public mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

.field private mShutterButtonSwichIn:Landroid/view/animation/AnimationSet;

.field public mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

.field private mThumbnailButtonSwichIn:Landroid/view/animation/AnimationSet;

.field private mThumbnailButtonSwichOut:Landroid/view/animation/AnimationSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method private initModulePickerSwitchAnimation(FFFF)V
    .locals 10
    .parameter "thumbnalButtonWidth"
    .parameter "shutterButtonWidth"
    .parameter "modulePickerWidth"
    .parameter "padding"

    .prologue
    .line 113
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePickerSwichIn:Landroid/view/animation/AnimationSet;

    .line 114
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePickerSwichIn:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 115
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePickerSwichIn:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 116
    iget-object v9, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePickerSwichIn:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    div-float v1, p2, p3

    const/high16 v2, 0x3f80

    div-float v3, p2, p3

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 126
    iget-object v9, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePickerSwichIn:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v2, p4

    const/high16 v3, 0x4000

    div-float v3, p1, v3

    sub-float/2addr v2, v3

    neg-float v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 131
    return-void
.end method

.method private initShutterButtonSwitchAnimation(FFFF)V
    .locals 10
    .parameter "thumbnalButtonWidth"
    .parameter "shutterButtonWidth"
    .parameter "modulePickerWidth"
    .parameter "padding"

    .prologue
    .line 66
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButtonSwichIn:Landroid/view/animation/AnimationSet;

    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButtonSwichIn:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButtonSwichIn:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 69
    iget-object v9, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButtonSwichIn:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    div-float v1, p3, p2

    const/high16 v2, 0x3f80

    div-float v3, p3, p2

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 79
    iget-object v9, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButtonSwichIn:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v2, p4

    const/high16 v3, 0x4000

    div-float v3, p1, v3

    sub-float/2addr v2, v3

    neg-float v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 84
    return-void
.end method

.method private initThumbnailButtonSwitchAnimation(FFFF)V
    .locals 10
    .parameter "thumbnalButtonWidth"
    .parameter "shutterButtonWidth"
    .parameter "modulePickerWidth"
    .parameter "padding"

    .prologue
    .line 88
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwichIn:Landroid/view/animation/AnimationSet;

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwichIn:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwichIn:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwichIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwichIn:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 93
    iget-object v9, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwichIn:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    neg-float v2, p4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 99
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwichOut:Landroid/view/animation/AnimationSet;

    .line 100
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwichOut:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 101
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwichOut:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 102
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwichOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 103
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwichOut:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 104
    iget-object v9, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwichOut:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    neg-float v4, p4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 109
    return-void
.end method


# virtual methods
.method public animateSwitch(Ljava/lang/Runnable;Z)V
    .locals 3
    .parameter "callback"
    .parameter "in"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 134
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->setVisibility(I)V

    .line 136
    if-eqz p2, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ShutterButton;->clearAnimation()V

    .line 138
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModulePicker;->clearAnimation()V

    .line 139
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ThumbnailButton;->clearAnimation()V

    .line 140
    iput-object p1, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mAnimationSwitchInCallback:Ljava/lang/Runnable;

    .line 141
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModulePicker;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButtonSwichIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 144
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePickerSwichIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModulePicker;->startAnimation(Landroid/view/animation/Animation;)V

    .line 145
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwichIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 153
    :goto_0
    return-void

    .line 147
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mAnimationSwitchOutCallback:Ljava/lang/Runnable;

    .line 148
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ThumbnailButton;->clearAnimation()V

    .line 149
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6ShutterButton;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6ModulePicker;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwichOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public getModulePicker()Lcom/android/camera/ui/V6ModulePicker;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    return-object v0
.end method

.method public getShutterButton()Lcom/android/camera/ui/V6ShutterButton;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    return-object v0
.end method

.method public getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    return-object v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 164
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwichIn:Landroid/view/animation/AnimationSet;

    if-ne v0, p1, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mAnimationSwitchInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mAnimationSwitchInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 167
    iput-object v1, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mAnimationSwitchInCallback:Ljava/lang/Runnable;

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButtonSwichOut:Landroid/view/animation/AnimationSet;

    if-ne v0, p1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mAnimationSwitchOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 171
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mAnimationSwitchOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 173
    iput-object v1, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mAnimationSwitchOutCallback:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 181
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 160
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 50
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    .line 51
    const v4, 0x7f0c0029

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6ThumbnailButton;

    iput-object v4, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    .line 52
    const v4, 0x7f0c002c

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6ShutterButton;

    iput-object v4, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    .line 53
    const v4, 0x7f0c002f

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6ModulePicker;

    iput-object v4, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    .line 55
    iget-object v4, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    iget-object v4, v4, Lcom/android/camera/ui/V6ThumbnailButton;->mBackground:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v4}, Lcom/android/camera/ui/RotateImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v3, v4

    .line 56
    .local v3, thumbnalButtonWidth:F
    iget-object v4, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v4}, Lcom/android/camera/ui/V6ShutterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v2, v4

    .line 57
    .local v2, shutterButtonWidth:F
    iget-object v4, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v4}, Lcom/android/camera/ui/V6ModulePicker;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v0, v4

    .line 58
    .local v0, modulePickerWidth:F
    iget-object v4, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0043

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v1, v4

    .line 59
    .local v1, padding:F
    invoke-direct {p0, v3, v2, v0, v1}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->initShutterButtonSwitchAnimation(FFFF)V

    .line 60
    invoke-direct {p0, v3, v2, v0, v1}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->initModulePickerSwitchAnimation(FFFF)V

    .line 61
    invoke-direct {p0, v3, v2, v0, v1}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->initThumbnailButtonSwitchAnimation(FFFF)V

    .line 62
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 34
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onResume()V

    .line 35
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->setVisibility(I)V

    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModulePicker;->setVisibility(I)V

    .line 46
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6CameraBottomControlPanel;->setVisibility(I)V

    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6ThumbnailButton;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6ShutterButton;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6ModulePicker;->setVisibility(I)V

    goto :goto_0
.end method
