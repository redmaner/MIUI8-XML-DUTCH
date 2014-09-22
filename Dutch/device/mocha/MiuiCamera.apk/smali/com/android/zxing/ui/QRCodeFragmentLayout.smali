.class public Lcom/android/zxing/ui/QRCodeFragmentLayout;
.super Landroid/widget/RelativeLayout;
.source "QRCodeFragmentLayout.java"


# instance fields
.field private mDispatchTouchEvent:Z

.field private mFadeHide:Landroid/view/animation/Animation;

.field private mFadeShow:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mDispatchTouchEvent:Z

    .line 36
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 41
    .local v0, result:Z
    iget-boolean v1, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mDispatchTouchEvent:Z

    if-eqz v1, :cond_0

    .line 45
    .end local v0           #result:Z
    :goto_0
    return v0

    .restart local v0       #result:Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->clearAnimation()V

    .line 60
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mFadeHide:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 61
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->setVisibility(I)V

    .line 62
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 67
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f050005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mFadeShow:Landroid/view/animation/Animation;

    .line 68
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f050004

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mFadeHide:Landroid/view/animation/Animation;

    .line 69
    return-void
.end method

.method public setDispatchTouchEvent(Z)V
    .locals 0
    .parameter "toOther"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mDispatchTouchEvent:Z

    .line 50
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->clearAnimation()V

    .line 54
    iget-object v0, p0, Lcom/android/zxing/ui/QRCodeFragmentLayout;->mFadeShow:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->setVisibility(I)V

    .line 56
    return-void
.end method
