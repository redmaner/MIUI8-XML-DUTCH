.class public Lcom/android/camera/ui/V6VideoBottomControlPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6VideoBottomControlPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private mAnimationSwitchInCallback:Ljava/lang/Runnable;

.field private mAnimationSwitchOutCallback:Ljava/lang/Runnable;

.field public mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

.field private mModulePickerSwichIn:Landroid/view/animation/AnimationSet;

.field public mPauseRecordingButton:Lcom/android/camera/ui/V6PauseRecordingButton;

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
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method private initModulePickerSwitchAnimation(FFFF)V
    .locals 10
    .parameter "thumbnalButtonWidth"
    .parameter "shutterButtonWidth"
    .parameter "modulePickerWidth"
    .parameter "padding"

    .prologue
    .line 119
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePickerSwichIn:Landroid/view/animation/AnimationSet;

    .line 120
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePickerSwichIn:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePickerSwichIn:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 122
    iget-object v9, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePickerSwichIn:Landroid/view/animation/AnimationSet;

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

    .line 132
    iget-object v9, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePickerSwichIn:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v2, p4

    const/high16 v3, 0x4000

    div-float v3, p1, v3

    sub-float/2addr v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 137
    return-void
.end method

.method private initShutterButtonSwitchAnimation(FFFF)V
    .locals 10
    .parameter "thumbnalButtonWidth"
    .parameter "shutterButtonWidth"
    .parameter "modulePickerWidth"
    .parameter "padding"

    .prologue
    .line 70
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButtonSwichIn:Landroid/view/animation/AnimationSet;

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButtonSwichIn:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButtonSwichIn:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 73
    iget-object v9, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButtonSwichIn:Landroid/view/animation/AnimationSet;

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

    .line 83
    iget-object v9, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButtonSwichIn:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v2, p4

    const/high16 v3, 0x4000

    div-float v3, p1, v3

    sub-float/2addr v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 88
    return-void
.end method

.method private initThumbnailButtonSwitchAnimation(FFFF)V
    .locals 10
    .parameter "thumbnalButtonWidth"
    .parameter "shutterButtonWidth"
    .parameter "modulePickerWidth"
    .parameter "padding"

    .prologue
    .line 92
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwichIn:Landroid/view/animation/AnimationSet;

    .line 93
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwichIn:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 94
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwichIn:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 95
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwichIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 96
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwichIn:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 97
    iget-object v9, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwichIn:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move v2, p4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 103
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwichOut:Landroid/view/animation/AnimationSet;

    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwichOut:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 105
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwichOut:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 106
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwichOut:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 107
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwichOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 109
    iget-object v9, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwichOut:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move v4, p4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 114
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

    .line 140
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->setVisibility(I)V

    .line 142
    if-eqz p2, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ShutterButton;->clearAnimation()V

    .line 144
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModulePicker;->clearAnimation()V

    .line 145
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ThumbnailButton;->clearAnimation()V

    .line 146
    iput-object p1, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mAnimationSwitchInCallback:Ljava/lang/Runnable;

    .line 147
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModulePicker;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    iget-object v1, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButtonSwichIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 150
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    iget-object v1, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePickerSwichIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModulePicker;->startAnimation(Landroid/view/animation/Animation;)V

    .line 151
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    iget-object v1, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwichIn:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 159
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ThumbnailButton;->clearAnimation()V

    .line 154
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6ShutterButton;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6ModulePicker;->setVisibility(I)V

    .line 156
    iput-object p1, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mAnimationSwitchOutCallback:Ljava/lang/Runnable;

    .line 157
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    iget-object v1, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwichOut:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public getModulePicker()Lcom/android/camera/ui/V6ModulePicker;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    return-object v0
.end method

.method public getShutterButton()Lcom/android/camera/ui/V6ShutterButton;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    return-object v0
.end method

.method public getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    return-object v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwichIn:Landroid/view/animation/AnimationSet;

    if-ne v0, p1, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mAnimationSwitchInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mAnimationSwitchInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 173
    iput-object v1, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mAnimationSwitchInCallback:Ljava/lang/Runnable;

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButtonSwichOut:Landroid/view/animation/AnimationSet;

    if-ne v0, p1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mAnimationSwitchOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 177
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mAnimationSwitchOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 179
    iput-object v1, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mAnimationSwitchOutCallback:Ljava/lang/Runnable;

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
    .line 166
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 53
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    .line 54
    const v4, 0x7f0c0029

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6ThumbnailButton;

    iput-object v4, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    .line 55
    const v4, 0x7f0c002c

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6ShutterButton;

    iput-object v4, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    .line 56
    const v4, 0x7f0c002f

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6ModulePicker;

    iput-object v4, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    .line 57
    const v4, 0x7f0c005d

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->findChildrenById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/V6PauseRecordingButton;

    iput-object v4, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mPauseRecordingButton:Lcom/android/camera/ui/V6PauseRecordingButton;

    .line 59
    iget-object v4, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    iget-object v4, v4, Lcom/android/camera/ui/V6ThumbnailButton;->mBackground:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v4}, Lcom/android/camera/ui/RotateImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v3, v4

    .line 60
    .local v3, thumbnalButtonWidth:F
    iget-object v4, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v4}, Lcom/android/camera/ui/V6ShutterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v2, v4

    .line 61
    .local v2, shutterButtonWidth:F
    iget-object v4, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v4}, Lcom/android/camera/ui/V6ModulePicker;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v0, v4

    .line 62
    .local v0, modulePickerWidth:F
    iget-object v4, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0043

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v1, v4

    .line 63
    .local v1, padding:F
    invoke-direct {p0, v3, v2, v0, v1}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->initShutterButtonSwitchAnimation(FFFF)V

    .line 64
    invoke-direct {p0, v3, v2, v0, v1}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->initModulePickerSwitchAnimation(FFFF)V

    .line 65
    invoke-direct {p0, v3, v2, v0, v1}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->initThumbnailButtonSwitchAnimation(FFFF)V

    .line 66
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 35
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onResume()V

    .line 36
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mPauseRecordingButton:Lcom/android/camera/ui/V6PauseRecordingButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PauseRecordingButton;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6ThumbnailButton;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6ShutterButton;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6ModulePicker;->setVisibility(I)V

    .line 49
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6VideoBottomControlPanel;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mPauseRecordingButton:Lcom/android/camera/ui/V6PauseRecordingButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PauseRecordingButton;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mThumbnailButton:Lcom/android/camera/ui/V6ThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mShutterButton:Lcom/android/camera/ui/V6ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/V6VideoBottomControlPanel;->mModulePicker:Lcom/android/camera/ui/V6ModulePicker;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModulePicker;->setVisibility(I)V

    goto :goto_0
.end method
