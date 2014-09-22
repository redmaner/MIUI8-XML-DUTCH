.class public final Lcom/android/zxing/ui/ViewFinderView;
.super Landroid/view/View;
.source "ViewFinderView.java"


# static fields
.field private static final SCANNER_ALPHA:[I


# instance fields
.field private final mFrameColor:I

.field private final mLaserColor:I

.field private mLastPossibleResultPoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaskColor:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mPossibleResultPoints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mResultBitmap:Landroid/graphics/Bitmap;

.field private final mResultColor:I

.field private final mResultPointColor:I

.field private mScannerAlpha:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/zxing/ui/ViewFinderView;->SCANNER_ALPHA:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/zxing/ui/ViewFinderView;->mPaint:Landroid/graphics/Paint;

    .line 42
    invoke-virtual {p0}, Lcom/android/zxing/ui/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 43
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/zxing/ui/ViewFinderView;->mMaskColor:I

    .line 44
    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/zxing/ui/ViewFinderView;->mResultColor:I

    .line 45
    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/zxing/ui/ViewFinderView;->mFrameColor:I

    .line 46
    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/zxing/ui/ViewFinderView;->mLaserColor:I

    .line 47
    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/zxing/ui/ViewFinderView;->mResultPointColor:I

    .line 48
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/zxing/ui/ViewFinderView;->mScannerAlpha:I

    .line 49
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/android/zxing/ui/ViewFinderView;->mPossibleResultPoints:Ljava/util/Collection;

    .line 50
    return-void
.end method


# virtual methods
.method public drawViewFinder()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/zxing/ui/ViewFinderView;->mResultBitmap:Landroid/graphics/Bitmap;

    .line 114
    invoke-virtual {p0}, Lcom/android/zxing/ui/ViewFinderView;->invalidate()V

    .line 115
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 54
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/zxing/ui/ViewFinderView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/zxing/QRCodeManager;->getViewFinderRect()Landroid/graphics/Rect;

    move-result-object v10

    .line 55
    .local v10, frame:Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v15

    .line 56
    .local v15, width:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    .line 59
    .local v11, height:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/zxing/ui/ViewFinderView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/zxing/ui/ViewFinderView;->mResultBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/zxing/ui/ViewFinderView;->mResultColor:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, v15

    iget v1, v10, Landroid/graphics/Rect;->top:I

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/zxing/ui/ViewFinderView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 61
    const/4 v2, 0x0

    iget v1, v10, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    iget v1, v10, Landroid/graphics/Rect;->left:I

    int-to-float v4, v1

    iget v1, v10, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/zxing/ui/ViewFinderView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 62
    iget v1, v10, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v2, v1

    iget v1, v10, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    int-to-float v4, v15

    iget v1, v10, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/zxing/ui/ViewFinderView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 63
    const/4 v2, 0x0

    iget v1, v10, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v3, v1

    int-to-float v4, v15

    int-to-float v5, v11

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/zxing/ui/ViewFinderView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 65
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/zxing/ui/ViewFinderView;->mResultBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 67
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/zxing/ui/ViewFinderView;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 68
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/zxing/ui/ViewFinderView;->mResultBitmap:Landroid/graphics/Bitmap;

    iget v2, v10, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v10, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/zxing/ui/ViewFinderView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 110
    :goto_1
    return-void

    .line 59
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/zxing/ui/ViewFinderView;->mMaskColor:I

    goto :goto_0

    .line 72
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/zxing/ui/ViewFinderView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/zxing/ui/ViewFinderView;->mFrameColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget v1, v10, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget v1, v10, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    iget v1, v10, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v4, v1

    iget v1, v10, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/zxing/ui/ViewFinderView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 74
    iget v1, v10, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget v1, v10, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0x2

    int-to-float v3, v1

    iget v1, v10, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x2

    int-to-float v4, v1

    iget v1, v10, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/zxing/ui/ViewFinderView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 75
    iget v1, v10, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v2, v1

    iget v1, v10, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    iget v1, v10, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v4, v1

    iget v1, v10, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/zxing/ui/ViewFinderView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 76
    iget v1, v10, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget v1, v10, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v3, v1

    iget v1, v10, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v4, v1

    iget v1, v10, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/zxing/ui/ViewFinderView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 79
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/zxing/ui/ViewFinderView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/zxing/ui/ViewFinderView;->mLaserColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/zxing/ui/ViewFinderView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/android/zxing/ui/ViewFinderView;->SCANNER_ALPHA:[I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/zxing/ui/ViewFinderView;->mScannerAlpha:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 81
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/zxing/ui/ViewFinderView;->mScannerAlpha:I

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/android/zxing/ui/ViewFinderView;->SCANNER_ALPHA:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/zxing/ui/ViewFinderView;->mScannerAlpha:I

    .line 82
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, v10, Landroid/graphics/Rect;->top:I

    add-int v13, v1, v2

    .line 83
    .local v13, middle:I
    iget v1, v10, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x2

    int-to-float v2, v1

    add-int/lit8 v1, v13, -0x1

    int-to-float v3, v1

    iget v1, v10, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v4, v1

    add-int/lit8 v1, v13, 0x2

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/zxing/ui/ViewFinderView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 85
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/zxing/ui/ViewFinderView;->mPossibleResultPoints:Ljava/util/Collection;

    .line 86
    .local v9, currentPossible:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/zxing/ResultPoint;>;"
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/zxing/ui/ViewFinderView;->mLastPossibleResultPoints:Ljava/util/Collection;

    .line 87
    .local v8, currentLast:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/zxing/ResultPoint;>;"
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/zxing/ui/ViewFinderView;->mLastPossibleResultPoints:Ljava/util/Collection;

    .line 98
    :cond_2
    if-eqz v8, :cond_4

    .line 99
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/zxing/ui/ViewFinderView;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0x7f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 100
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/zxing/ui/ViewFinderView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/zxing/ui/ViewFinderView;->mResultPointColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/zxing/ResultPoint;

    .line 102
    .local v14, point:Lcom/google/zxing/ResultPoint;
    iget v1, v10, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x4040

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/zxing/ui/ViewFinderView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 90
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #point:Lcom/google/zxing/ResultPoint;
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/zxing/ui/ViewFinderView;->mPossibleResultPoints:Ljava/util/Collection;

    .line 91
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/zxing/ui/ViewFinderView;->mLastPossibleResultPoints:Ljava/util/Collection;

    .line 92
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/zxing/ui/ViewFinderView;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 93
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/zxing/ui/ViewFinderView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/zxing/ui/ViewFinderView;->mResultPointColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/zxing/ResultPoint;

    .line 95
    .restart local v14       #point:Lcom/google/zxing/ResultPoint;
    iget v1, v10, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, v10, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40c0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/zxing/ui/ViewFinderView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 108
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #point:Lcom/google/zxing/ResultPoint;
    :cond_4
    const-wide/16 v2, 0x64

    iget v4, v10, Landroid/graphics/Rect;->left:I

    iget v5, v10, Landroid/graphics/Rect;->top:I

    iget v6, v10, Landroid/graphics/Rect;->right:I

    iget v7, v10, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/zxing/ui/ViewFinderView;->postInvalidateDelayed(JIIII)V

    goto/16 :goto_1
.end method
