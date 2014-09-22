.class public Lcom/android/camera/ui/V6FaceBeautyBar;
.super Landroid/widget/RelativeLayout;
.source "V6FaceBeautyBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6FaceBeautyBar$OnValueChangedListener;
    }
.end annotation


# static fields
.field private static final CURSOR_PADDING_LEFT:I

.field private static final CURSOR_PADDING_RIGHT:I


# instance fields
.field private mBar:Landroid/view/View;

.field private mBarHeight:I

.field private mCursor:Landroid/widget/ImageView;

.field private mCursorHeight:I

.field private mCursorPosition:I

.field private mCursorWidth:I

.field private mEndPosition:I

.field private mGap:F

.field private mHeight:I

.field private mListener:Lcom/android/camera/ui/V6FaceBeautyBar$OnValueChangedListener;

.field private mMaxValue:I

.field private mReLoad:Z

.field private mSmoothChange:Z

.field private mStartPosition:I

.field private mValue:I

.field private mValueChanged:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x4000

    .line 15
    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6FaceBeautyBar;->CURSOR_PADDING_LEFT:I

    .line 16
    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6FaceBeautyBar;->CURSOR_PADDING_RIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mMaxValue:I

    .line 32
    iput v2, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mValue:I

    .line 33
    iput-boolean v2, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mReLoad:Z

    .line 34
    iput-boolean v2, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mValueChanged:Z

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mSmoothChange:Z

    .line 43
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mBar:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mBar:Landroid/view/View;

    const v1, 0x7f0201a3

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mBar:Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/V6FaceBeautyBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mCursor:Landroid/widget/ImageView;

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mCursor:Landroid/widget/ImageView;

    const v1, 0x7f0201a4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mCursor:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6FaceBeautyBar;->addView(Landroid/view/View;)V

    .line 51
    iget-object v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mBarHeight:I

    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mCursor:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mCursorHeight:I

    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mCursor:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mCursorWidth:I

    .line 54
    iput v2, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mCursorPosition:I

    .line 55
    return-void
.end method

.method private clip(III)I
    .locals 0
    .parameter "value"
    .parameter "max"
    .parameter "min"

    .prologue
    .line 173
    if-le p1, p2, :cond_0

    .line 178
    .end local p2
    :goto_0
    return p2

    .line 175
    .restart local p2
    :cond_0
    if-gez p1, :cond_1

    move p2, p3

    .line 176
    goto :goto_0

    :cond_1
    move p2, p1

    .line 178
    goto :goto_0
.end method

.method private mapPostionToValue(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 182
    iget v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mStartPosition:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mGap:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mMaxValue:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/V6FaceBeautyBar;->clip(III)I

    move-result v0

    return v0
.end method

.method private mapValueToPosition(I)I
    .locals 3
    .parameter "value"

    .prologue
    .line 186
    int-to-float v0, p1

    iget v1, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mGap:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mStartPosition:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mEndPosition:I

    iget v2, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mStartPosition:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/V6FaceBeautyBar;->clip(III)I

    move-result v0

    return v0
.end method

.method private notifyChange()V
    .locals 2

    .prologue
    .line 138
    iget v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mCursorPosition:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6FaceBeautyBar;->mapPostionToValue(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mValue:I

    .line 139
    iget-object v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mListener:Lcom/android/camera/ui/V6FaceBeautyBar$OnValueChangedListener;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mListener:Lcom/android/camera/ui/V6FaceBeautyBar$OnValueChangedListener;

    iget v1, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mValue:I

    invoke-interface {v0, v1}, Lcom/android/camera/ui/V6FaceBeautyBar$OnValueChangedListener;->onValueChanged(I)V

    .line 142
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/high16 v6, 0x4000

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 110
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 134
    :cond_0
    :goto_0
    return v5

    .line 114
    :pswitch_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6FaceBeautyBar;->setActivated(Z)V

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mCursorWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mGap:F

    div-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mGap:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mEndPosition:I

    iget v4, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mStartPosition:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/ui/V6FaceBeautyBar;->clip(III)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mCursorPosition:I

    .line 118
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FaceBeautyBar;->requestLayout()V

    .line 119
    invoke-direct {p0}, Lcom/android/camera/ui/V6FaceBeautyBar;->notifyChange()V

    goto :goto_0

    .line 122
    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/android/camera/ui/V6FaceBeautyBar;->setEnabled(Z)V

    .line 123
    invoke-virtual {p0, v5}, Lcom/android/camera/ui/V6FaceBeautyBar;->setActivated(Z)V

    .line 125
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mCursorWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v1, v2

    .line 126
    .local v1, pos:I
    iget v2, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mEndPosition:I

    iget v3, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mStartPosition:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/ui/V6FaceBeautyBar;->clip(III)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mCursorPosition:I

    .line 129
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FaceBeautyBar;->requestLayout()V

    .line 130
    iget-boolean v2, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mSmoothChange:Z

    if-eqz v2, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/android/camera/ui/V6FaceBeautyBar;->notifyChange()V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public initialize(Lcom/android/camera/preferences/IconListPreference;)V
    .locals 1
    .parameter "preference"

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6FaceBeautyBar;->setMaxValue(I)V

    .line 60
    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6FaceBeautyBar;->setValue(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FaceBeautyBar;->requestLayout()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    .line 82
    iget-boolean v2, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mReLoad:Z

    if-eqz v2, :cond_0

    .line 83
    iget v2, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mEndPosition:I

    iget v3, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mStartPosition:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mMaxValue:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mGap:F

    .line 84
    iget v2, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mValue:I

    invoke-direct {p0, v2}, Lcom/android/camera/ui/V6FaceBeautyBar;->mapValueToPosition(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mCursorPosition:I

    .line 87
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mValueChanged:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mReLoad:Z

    if-eqz v2, :cond_2

    .line 88
    :cond_1
    iget v2, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mValue:I

    invoke-direct {p0, v2}, Lcom/android/camera/ui/V6FaceBeautyBar;->mapValueToPosition(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mCursorPosition:I

    .line 91
    :cond_2
    iput-boolean v4, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mReLoad:Z

    .line 92
    iput-boolean v4, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mValueChanged:Z

    .line 93
    iget v2, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mHeight:I

    iget v3, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mBarHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 94
    .local v0, barOffsetY:I
    iget-object v2, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mBar:Landroid/view/View;

    sget v3, Lcom/android/camera/ui/V6FaceBeautyBar;->CURSOR_PADDING_LEFT:I

    iget v4, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mWidth:I

    sget v5, Lcom/android/camera/ui/V6FaceBeautyBar;->CURSOR_PADDING_RIGHT:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mBarHeight:I

    add-int/2addr v5, v0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 99
    iget v2, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mHeight:I

    iget v3, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mCursorHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 100
    .local v1, cursorOffsetY:I
    iget-object v2, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mCursor:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mCursorPosition:I

    iget v4, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mCursorPosition:I

    iget v5, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mCursorWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mCursorHeight:I

    add-int/2addr v5, v1

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 104
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mWidth:I

    .line 71
    iput p2, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mHeight:I

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mStartPosition:I

    .line 73
    iget v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mWidth:I

    iget v1, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mCursorWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mEndPosition:I

    .line 74
    iget v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mEndPosition:I

    iget v1, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mStartPosition:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mMaxValue:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mGap:F

    .line 75
    iget v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mValue:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6FaceBeautyBar;->mapValueToPosition(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mCursorPosition:I

    .line 76
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FaceBeautyBar;->requestLayout()V

    .line 77
    return-void
.end method

.method public setMaxValue(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 145
    if-gtz p1, :cond_0

    .line 149
    :goto_0
    return-void

    .line 146
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mMaxValue:I

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mReLoad:Z

    .line 148
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FaceBeautyBar;->requestLayout()V

    goto :goto_0
.end method

.method public setOnValueChangedListener(Lcom/android/camera/ui/V6FaceBeautyBar$OnValueChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mListener:Lcom/android/camera/ui/V6FaceBeautyBar$OnValueChangedListener;

    .line 66
    return-void
.end method

.method public setValue(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 156
    iget v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mValue:I

    if-eq v0, p1, :cond_0

    .line 157
    iget v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mMaxValue:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/V6FaceBeautyBar;->clip(III)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mValue:I

    .line 158
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FaceBeautyBar;->requestLayout()V

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6FaceBeautyBar;->mValueChanged:Z

    .line 161
    :cond_0
    return-void
.end method
