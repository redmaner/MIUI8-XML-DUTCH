.class public Lcom/android/camera/ui/V6EffectCropView;
.super Landroid/view/View;
.source "V6EffectCropView.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6EffectCropView$1;,
        Lcom/android/camera/ui/V6EffectCropView$MyGestureListener;
    }
.end annotation


# static fields
.field private static final MIN_CROP_WIDTH_HEIGHT:I

.field private static final TOUCH_TOLERANCE:I


# instance fields
.field private final mBorderPaint:Landroid/graphics/Paint;

.field private final mCropBounds:Landroid/graphics/RectF;

.field private final mCropIndicatorBottom:Landroid/graphics/drawable/Drawable;

.field private final mCropIndicatorLeft:Landroid/graphics/drawable/Drawable;

.field private final mCropIndicatorRight:Landroid/graphics/drawable/Drawable;

.field private final mCropIndicatorTop:Landroid/graphics/drawable/Drawable;

.field private final mDefaultBounds:Landroid/graphics/RectF;

.field private final mDisplayBounds:Landroid/graphics/RectF;

.field private final mEffectRect:Landroid/graphics/RectF;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mIndicatorSize:I

.field private mLastX:F

.field private mLastY:F

.field private mMovingEdges:I

.field private mVisile:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/high16 v0, 0x4280

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->MIN_CROP_WIDTH_HEIGHT:I

    .line 28
    const/high16 v0, 0x4190

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    .line 37
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultBounds:Landroid/graphics/RectF;

    .line 38
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    .line 39
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectRect:Landroid/graphics/RectF;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 49
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f02019a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropIndicatorLeft:Landroid/graphics/drawable/Drawable;

    .line 50
    const v1, 0x7f02019c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropIndicatorTop:Landroid/graphics/drawable/Drawable;

    .line 51
    const v1, 0x7f02019b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropIndicatorRight:Landroid/graphics/drawable/Drawable;

    .line 52
    const v1, 0x7f020199

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropIndicatorBottom:Landroid/graphics/drawable/Drawable;

    .line 53
    sget-boolean v1, Lcom/android/camera/Device;->IS_TABLET:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x422c

    :goto_0
    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mIndicatorSize:I

    .line 54
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mBorderPaint:Landroid/graphics/Paint;

    .line 55
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mBorderPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mBorderPaint:Landroid/graphics/Paint;

    sget-boolean v1, Lcom/android/camera/Device;->IS_TABLET:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    :goto_1
    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/android/camera/ui/V6EffectCropView$MyGestureListener;

    invoke-direct {v2, p0, v4}, Lcom/android/camera/ui/V6EffectCropView$MyGestureListener;-><init>(Lcom/android/camera/ui/V6EffectCropView;Lcom/android/camera/ui/V6EffectCropView$1;)V

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v4, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 59
    return-void

    .line 53
    :cond_0
    const/high16 v1, 0x41f0

    goto :goto_0

    .line 57
    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method

.method private detectMovingEdges(FF)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 82
    iput v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    .line 85
    iget-object v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float v6, p1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 86
    .local v1, left:F
    iget-object v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float v6, p1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 87
    .local v2, right:F
    sget v6, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v6, v6

    cmpg-float v6, v1, v6

    if-gtz v6, :cond_3

    cmpg-float v6, v1, v2

    if-gez v6, :cond_3

    .line 88
    iget v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    .line 95
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float v6, p2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 96
    .local v3, top:F
    iget-object v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float v6, p2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 97
    .local v0, bottom:F
    sget v6, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_4

    move v6, v4

    :goto_1
    cmpg-float v7, v3, v0

    if-gez v7, :cond_5

    :goto_2
    and-int/2addr v4, v6

    if-eqz v4, :cond_6

    .line 98
    iget v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    .line 105
    :cond_1
    :goto_3
    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    if-nez v4, :cond_2

    .line 106
    const/16 v4, 0x10

    iput v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    .line 108
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->invalidate()V

    .line 109
    return-void

    .line 90
    .end local v0           #bottom:F
    .end local v3           #top:F
    :cond_3
    sget v6, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v6, v6

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_0

    .line 91
    iget v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    goto :goto_0

    .restart local v0       #bottom:F
    .restart local v3       #top:F
    :cond_4
    move v6, v5

    .line 97
    goto :goto_1

    :cond_5
    move v4, v5

    goto :goto_2

    .line 100
    :cond_6
    sget v4, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_1

    .line 101
    iget v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    goto :goto_3
.end method

.method private drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V
    .locals 4
    .parameter "canvas"
    .parameter "indicator"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 174
    float-to-int v2, p3

    iget v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mIndicatorSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 175
    .local v0, left:I
    float-to-int v2, p4

    iget v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mIndicatorSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 176
    .local v1, top:I
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mIndicatorSize:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mIndicatorSize:I

    add-int/2addr v3, v1

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 177
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 178
    return-void
.end method

.method private moveEdges(FF)V
    .locals 5
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v4, 0x0

    .line 112
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 114
    cmpl-float v2, p1, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 116
    :goto_0
    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 118
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 137
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->onCropChange()V

    .line 138
    return-void

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_1

    .line 121
    :cond_2
    sget v2, Lcom/android/camera/ui/V6EffectCropView;->MIN_CROP_WIDTH_HEIGHT:I

    int-to-float v1, v2

    .line 122
    .local v1, minWidth:F
    sget v2, Lcom/android/camera/ui/V6EffectCropView;->MIN_CROP_WIDTH_HEIGHT:I

    int-to-float v0, v2

    .line 123
    .local v0, minHeight:F
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 124
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p1

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 126
    :cond_3
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    .line 127
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p2

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 129
    :cond_4
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_5

    .line 130
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p1

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 132
    :cond_5
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_6

    .line 133
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p2

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 135
    :cond_6
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    goto/16 :goto_2
.end method

.method private onCropChange()V
    .locals 7

    .prologue
    .line 70
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 71
    .local v1, w:F
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 72
    .local v0, h:F
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    div-float/2addr v3, v1

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    div-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    div-float/2addr v5, v1

    iget-object v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 77
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/EffectController;->setEffectRect(Landroid/graphics/RectF;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->invalidate()V

    .line 79
    return-void
.end method


# virtual methods
.method public enableControls(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 274
    return-void
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "what"
    .parameter "sender"
    .parameter "extra1"
    .parameter "extra2"

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public hide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 237
    iget-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisile:Z

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisile:Z

    .line 239
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6EffectCropView;->setVisibility(I)V

    .line 240
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setEffectRect(Landroid/graphics/RectF;)V

    .line 242
    :cond_0
    return-void
.end method

.method public isMovingEdges()Z
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisile:Z

    return v0
.end method

.method public onCameraOpen()V
    .locals 1

    .prologue
    .line 252
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isNeedRect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->show()V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->hide()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 182
    iget-boolean v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisile:Z

    if-nez v2, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    if-nez v2, :cond_9

    const/4 v1, 0x1

    .line 184
    .local v1, notMoving:Z
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    .line 185
    .local v0, cropped:Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 186
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    .line 187
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropIndicatorTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/camera/ui/V6EffectCropView;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 189
    :cond_3
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_4

    if-eqz v1, :cond_5

    .line 190
    :cond_4
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropIndicatorBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/camera/ui/V6EffectCropView;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 192
    :cond_5
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_6

    if-eqz v1, :cond_7

    .line 193
    :cond_6
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropIndicatorLeft:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/camera/ui/V6EffectCropView;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 195
    :cond_7
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_8

    if-eqz v1, :cond_0

    .line 196
    :cond_8
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropIndicatorRight:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/camera/ui/V6EffectCropView;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    goto :goto_0

    .line 183
    .end local v0           #cropped:Landroid/graphics/RectF;
    .end local v1           #notMoving:Z
    :cond_9
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->hide()V

    .line 268
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultBounds:Landroid/graphics/RectF;

    mul-int/lit8 v1, p1, 0x3

    div-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    mul-int/lit8 v2, p2, 0x3

    div-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    mul-int/lit8 v3, p1, 0x5

    div-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    mul-int/lit8 v4, p2, 0x5

    div-int/lit8 v4, v4, 0x8

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 66
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->onCropChange()V

    .line 67
    return-void
.end method

.method public onViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 141
    iget-boolean v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisile:Z

    if-nez v3, :cond_0

    .line 170
    :goto_0
    return v2

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 145
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 147
    .local v1, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 170
    .end local v0           #x:F
    .end local v1           #y:F
    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 149
    .restart local v0       #x:F
    .restart local v1       #y:F
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/V6EffectCropView;->detectMovingEdges(FF)V

    .line 150
    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastX:F

    .line 151
    iput v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastY:F

    goto :goto_1

    .line 155
    :pswitch_1
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    if-eqz v2, :cond_2

    .line 156
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastX:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastY:F

    sub-float v3, v1, v3

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/V6EffectCropView;->moveEdges(FF)V

    .line 158
    :cond_2
    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastX:F

    .line 159
    iput v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastY:F

    goto :goto_1

    .line 164
    :pswitch_2
    iput v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    .line 165
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->invalidate()V

    goto :goto_1

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 287
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 201
    iget-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisile:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isNeedRect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisile:Z

    .line 203
    iput v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    .line 204
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6EffectCropView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 206
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/EffectController;->setInvertFlag(I)V

    .line 207
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->onCropChange()V

    .line 209
    :cond_0
    return-void
.end method
