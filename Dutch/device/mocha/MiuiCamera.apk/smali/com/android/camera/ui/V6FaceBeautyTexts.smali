.class public Lcom/android/camera/ui/V6FaceBeautyTexts;
.super Landroid/widget/RelativeLayout;
.source "V6FaceBeautyTexts.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# static fields
.field private static final PADDING:I


# instance fields
.field private mGap:I

.field private mHeight:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/high16 v0, 0x4120

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6FaceBeautyTexts;->PADDING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method private addTextView(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "text"

    .prologue
    const/4 v3, -0x2

    .line 43
    new-instance v1, Lcom/android/camera/ui/RotateTextView;

    iget-object v2, p0, Lcom/android/camera/ui/V6FaceBeautyTexts;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/camera/ui/RotateTextView;-><init>(Landroid/content/Context;)V

    .line 44
    .local v1, textView:Lcom/android/camera/ui/RotateTextView;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/RotateTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    const/high16 v2, 0x4160

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateTextView;->setTextSize(F)V

    .line 49
    invoke-virtual {v1, p1}, Lcom/android/camera/ui/RotateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6FaceBeautyTexts;->addView(Landroid/view/View;)V

    .line 52
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/IconListPreference;)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    .line 29
    :goto_0
    return-void

    .line 24
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 25
    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/camera/ui/V6FaceBeautyTexts;->addTextView(Ljava/lang/CharSequence;)V

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6FaceBeautyTexts;->setValue(I)V

    .line 28
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FaceBeautyTexts;->requestLayout()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v6, 0x0

    .line 64
    iget v3, p0, Lcom/android/camera/ui/V6FaceBeautyTexts;->mWidth:I

    invoke-virtual {p0}, Lcom/android/camera/ui/V6FaceBeautyTexts;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/V6FaceBeautyTexts;->mGap:I

    .line 66
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FaceBeautyTexts;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6FaceBeautyTexts;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateTextView;

    .line 68
    .local v1, textView:Lcom/android/camera/ui/RotateTextView;
    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    add-int/lit8 v2, v3, 0x1

    .line 69
    .local v2, w:I
    if-nez v0, :cond_0

    .line 70
    sget v3, Lcom/android/camera/ui/V6FaceBeautyTexts;->PADDING:I

    sget v4, Lcom/android/camera/ui/V6FaceBeautyTexts;->PADDING:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/android/camera/ui/V6FaceBeautyTexts;->mHeight:I

    invoke-virtual {v1, v3, v6, v4, v5}, Lcom/android/camera/ui/RotateTextView;->layout(IIII)V

    .line 66
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FaceBeautyTexts;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_1

    .line 72
    iget v3, p0, Lcom/android/camera/ui/V6FaceBeautyTexts;->mWidth:I

    sub-int/2addr v3, v2

    sget v4, Lcom/android/camera/ui/V6FaceBeautyTexts;->PADDING:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/ui/V6FaceBeautyTexts;->mWidth:I

    sget v5, Lcom/android/camera/ui/V6FaceBeautyTexts;->PADDING:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/V6FaceBeautyTexts;->mHeight:I

    invoke-virtual {v1, v3, v6, v4, v5}, Lcom/android/camera/ui/RotateTextView;->layout(IIII)V

    goto :goto_1

    .line 74
    :cond_1
    iget v3, p0, Lcom/android/camera/ui/V6FaceBeautyTexts;->mGap:I

    mul-int/2addr v3, v0

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/ui/V6FaceBeautyTexts;->mGap:I

    mul-int/2addr v4, v0

    div-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/V6FaceBeautyTexts;->mHeight:I

    invoke-virtual {v1, v3, v6, v4, v5}, Lcom/android/camera/ui/RotateTextView;->layout(IIII)V

    goto :goto_1

    .line 77
    .end local v1           #textView:Lcom/android/camera/ui/RotateTextView;
    .end local v2           #w:I
    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/camera/ui/V6FaceBeautyTexts;->mWidth:I

    .line 57
    iput p2, p0, Lcom/android/camera/ui/V6FaceBeautyTexts;->mHeight:I

    .line 58
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 3
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 81
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FaceBeautyTexts;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6FaceBeautyTexts;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateTextView;

    .line 83
    .local v1, textView:Lcom/android/camera/ui/RotateTextView;
    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/RotateTextView;->setOrientation(IZ)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    .end local v1           #textView:Lcom/android/camera/ui/RotateTextView;
    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 32
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FaceBeautyTexts;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6FaceBeautyTexts;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateTextView;

    .line 34
    .local v1, textView:Lcom/android/camera/ui/RotateTextView;
    if-ne p1, v0, :cond_0

    .line 35
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateTextView;->setTextColor(I)V

    .line 32
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    const v2, -0x7f000001

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateTextView;->setTextColor(I)V

    goto :goto_1

    .line 40
    .end local v1           #textView:Lcom/android/camera/ui/RotateTextView;
    :cond_1
    return-void
.end method
