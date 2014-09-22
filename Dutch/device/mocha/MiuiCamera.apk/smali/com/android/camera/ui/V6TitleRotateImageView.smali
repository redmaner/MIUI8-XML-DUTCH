.class public Lcom/android/camera/ui/V6TitleRotateImageView;
.super Landroid/widget/RelativeLayout;
.source "V6TitleRotateImageView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 24
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 6
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TitleRotateImageView;->getRotation()F

    move-result v3

    float-to-int v2, v3

    .line 29
    .local v2, rotation:I
    if-ltz v2, :cond_0

    rem-int/lit16 v1, v2, 0x168

    .line 30
    .local v1, r:I
    :goto_0
    sub-int v0, p1, v1

    .line 31
    .local v0, deltaR:I
    if-nez v0, :cond_1

    .line 44
    :goto_1
    return-void

    .line 29
    .end local v0           #deltaR:I
    .end local v1           #r:I
    :cond_0
    rem-int/lit16 v3, v2, 0x168

    add-int/lit16 v1, v3, 0x168

    goto :goto_0

    .line 32
    .restart local v0       #deltaR:I
    .restart local v1       #r:I
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xb4

    if-le v3, v4, :cond_2

    .line 33
    if-ltz v0, :cond_3

    .line 34
    add-int/lit16 v0, v0, -0x168

    .line 39
    :cond_2
    :goto_2
    if-eqz p2, :cond_4

    .line 40
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TitleRotateImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    add-int v4, v2, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    div-int/lit16 v4, v4, 0x10e

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 36
    :cond_3
    add-int/lit16 v0, v0, 0x168

    goto :goto_2

    .line 42
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/ui/V6TitleRotateImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    add-int v4, v2, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_1
.end method
