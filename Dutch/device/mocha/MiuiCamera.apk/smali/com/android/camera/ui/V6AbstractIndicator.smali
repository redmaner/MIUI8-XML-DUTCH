.class public abstract Lcom/android/camera/ui/V6AbstractIndicator;
.super Landroid/widget/RelativeLayout;
.source "V6AbstractIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field private mChangeTextColor:I

.field private mDefaultTextColor:I

.field protected mImage:Lcom/android/camera/ui/RotateImageView;

.field protected mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field protected mOrientation:I

.field protected mPopupRoot:Landroid/view/ViewGroup;

.field protected mPreference:Lcom/android/camera/preferences/IconListPreference;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const v0, 0x66ffffff

    iput v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mDefaultTextColor:I

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mChangeTextColor:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const v0, 0x66ffffff

    iput v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mDefaultTextColor:I

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mChangeTextColor:I

    .line 35
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;Landroid/view/ViewGroup;II)V
    .locals 1
    .parameter "preference"
    .parameter "p"
    .parameter "popupRoot"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 40
    iput-object p2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 41
    iput-object p3, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopupRoot:Landroid/view/ViewGroup;

    .line 43
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 44
    .local v0, selfParams:Landroid/view/ViewGroup$LayoutParams;
    iput p4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 45
    iput p5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6AbstractIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->updateImage()V

    .line 51
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->updateTitle()V

    .line 52
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->requestLayout()V

    .line 53
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 111
    const v0, 0x7f0c0038

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6AbstractIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/RotateImageView;

    .line 112
    const v0, 0x7f0c003f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6AbstractIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->enableFilter(Z)V

    .line 114
    return-void
.end method

.method public setActivated(Z)V
    .locals 1
    .parameter "activated"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setActivated(Z)V

    .line 106
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 6
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 126
    iput p1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mOrientation:I

    .line 127
    neg-int p1, p1

    .line 128
    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    .line 130
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->getRotation()F

    move-result v3

    float-to-int v2, v3

    .line 131
    .local v2, rotation:I
    if-ltz v2, :cond_1

    rem-int/lit16 v1, v2, 0x168

    .line 132
    .local v1, r:I
    :goto_1
    sub-int v0, p1, v1

    .line 133
    .local v0, deltaR:I
    if-nez v0, :cond_2

    .line 146
    :goto_2
    return-void

    .line 128
    .end local v0           #deltaR:I
    .end local v1           #r:I
    .end local v2           #rotation:I
    :cond_0
    rem-int/lit16 v3, p1, 0x168

    add-int/lit16 p1, v3, 0x168

    goto :goto_0

    .line 131
    .restart local v2       #rotation:I
    :cond_1
    rem-int/lit16 v3, v2, 0x168

    add-int/lit16 v1, v3, 0x168

    goto :goto_1

    .line 134
    .restart local v0       #deltaR:I
    .restart local v1       #r:I
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xb4

    if-le v3, v4, :cond_3

    .line 135
    if-ltz v0, :cond_4

    .line 136
    add-int/lit16 v0, v0, -0x168

    .line 141
    :cond_3
    :goto_3
    if-eqz p2, :cond_5

    .line 142
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->animate()Landroid/view/ViewPropertyAnimator;

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

    goto :goto_2

    .line 138
    :cond_4
    add-int/lit16 v0, v0, 0x168

    goto :goto_3

    .line 144
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    add-int v4, v2, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_2
.end method

.method public setPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 99
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setPressed(Z)V

    .line 100
    return-void
.end method

.method protected updateImage()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getSingleIcon()I

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/RotateImageView;

    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getSingleIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateTitle()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 65
    iget-object v4, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, title:Ljava/lang/String;
    const/4 v2, 0x1

    .line 67
    .local v2, isDefault:Z
    iget-object v4, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_1

    .line 68
    iget-object v4, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v5, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 69
    .local v0, index1:I
    iget-object v4, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v5, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/preferences/IconListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 70
    .local v1, index2:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 71
    if-eq v0, v1, :cond_0

    .line 72
    const/4 v2, 0x0

    .line 74
    :cond_0
    iget-object v4, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v4

    if-nez v4, :cond_1

    .line 75
    iget-object v4, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    .end local v0           #index1:I
    .end local v1           #index2:I
    :cond_1
    if-eqz v3, :cond_3

    .line 81
    iget-object v4, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    if-eqz v2, :cond_2

    .line 83
    iget-object v4, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mDefaultTextColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object v4, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 89
    :goto_0
    iget-object v4, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v4, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/RotateImageView;

    iget-object v5, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/preferences/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/RotateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 94
    :goto_1
    return-void

    .line 86
    :cond_2
    iget-object v4, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mChangeTextColor:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object v4, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 92
    :cond_3
    iget-object v4, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
