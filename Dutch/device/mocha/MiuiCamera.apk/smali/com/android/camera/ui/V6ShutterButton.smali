.class public Lcom/android/camera/ui/V6ShutterButton;
.super Lcom/android/camera/ui/V6BottomAnimationViewGroup;
.source "V6ShutterButton.java"


# instance fields
.field private mAudioSound:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

.field private mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public isCancled()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->isCancled()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 58
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 21
    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->onFinishInflate()V

    .line 22
    const v0, 0x7f0c002e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ShutterButton;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6ShutterButtonInternal;

    iput-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;

    .line 23
    const v0, 0x7f0c002d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ShutterButton;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    iput-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mAudioSound:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    .line 24
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mAudioSound:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    iget-object v1, p0, Lcom/android/camera/ui/V6ShutterButton;->mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6ShutterButtonInternal;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/camera/ui/V6ShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->setRadius(II)V

    .line 26
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->onResume()V

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ShutterButton;->setVisibility(I)V

    .line 32
    return-void
.end method

.method public setAudioProgress(F)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mAudioSound:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->setAudioProgress(F)V

    .line 36
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6ShutterButtonInternal;->setEnabled(Z)V

    .line 41
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButton;->mShutterButton:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6ShutterButtonInternal;->setImageResource(I)V

    .line 49
    return-void
.end method
