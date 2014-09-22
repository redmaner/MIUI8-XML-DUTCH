.class Lcom/android/camera/ui/FocusView$ExposureView;
.super Ljava/lang/Object;
.source "FocusView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;
.implements Lcom/android/camera/ui/V6FunctionUI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FocusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExposureView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;
    }
.end annotation


# instance fields
.field private final DELTA_FOR_OUTRANGE:I

.field private final DISAPPEAR_TIME:I

.field private final GRADUATION_COLOR:I

.field private final GRADUATION_WIDTH:I

.field private final ITEM_ANGLE:I

.field private final MSG_DISAPPEAR:I

.field private final MSG_REGRESS:I

.field private final MSG_SCROLL:I

.field private final POINT_COLOR_FOR_NORMAL:I

.field private final POINT_COLOR_FOR_OUTRANGE:I

.field private final POINT_SIZE:I

.field private mAdapter:Lcom/android/camera/ui/RollAdapter;

.field private mCenterX:I

.field private mCenterY:I

.field private mCurrentItem:I

.field private mDraw:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGraduation:[[F

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIsDown:Z

.field private mLastTheta:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mMaxRadius:I

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mMinRadius:I

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPointColor:I

.field private mPointPaint:Landroid/graphics/Paint;

.field private mRatation:I

.field private mRollingDelta:I

.field private mScroller:Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;

.field private mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mStartFlingIndex:I

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTheta:I

.field private mWidth:I

.field final synthetic this$0:Lcom/android/camera/ui/FocusView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/FocusView;Landroid/content/Context;)V
    .locals 7
    .parameter
    .parameter "context"

    .prologue
    const v6, -0x60000001

    const/4 v5, 0x1

    const v4, -0x5f000001

    const/high16 v1, 0x4000

    const/high16 v2, 0x3f80

    .line 377
    iput-object p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    sget-boolean v0, Lcom/android/camera/Device;->IS_TABLET:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x4100

    :goto_0
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->POINT_SIZE:I

    .line 330
    iput v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->POINT_COLOR_FOR_NORMAL:I

    .line 331
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->POINT_COLOR_FOR_OUTRANGE:I

    .line 333
    iput v6, p0, Lcom/android/camera/ui/FocusView$ExposureView;->GRADUATION_COLOR:I

    .line 334
    sget-boolean v0, Lcom/android/camera/Device;->IS_TABLET:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->GRADUATION_WIDTH:I

    .line 336
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->DISAPPEAR_TIME:I

    .line 338
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->ITEM_ANGLE:I

    .line 339
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->DELTA_FOR_OUTRANGE:I

    .line 341
    iput v5, p0, Lcom/android/camera/ui/FocusView$ExposureView;->MSG_SCROLL:I

    .line 342
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->MSG_DISAPPEAR:I

    .line 343
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->MSG_REGRESS:I

    .line 359
    const/16 v0, 0xc

    const/4 v3, 0x4

    filled-new-array {v0, v3}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGraduation:[[F

    .line 372
    iput v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mPointColor:I

    .line 505
    new-instance v0, Lcom/android/camera/ui/FocusView$ExposureView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FocusView$ExposureView$1;-><init>(Lcom/android/camera/ui/FocusView$ExposureView;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    .line 643
    new-instance v0, Lcom/android/camera/ui/FocusView$ExposureView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FocusView$ExposureView$2;-><init>(Lcom/android/camera/ui/FocusView$ExposureView;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 378
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mPaint:Landroid/graphics/Paint;

    .line 379
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 380
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 381
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 382
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mPaint:Landroid/graphics/Paint;

    sget-boolean v0, Lcom/android/camera/Device;->IS_TABLET:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 384
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mLinePaint:Landroid/graphics/Paint;

    .line 385
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 386
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 387
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 388
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mLinePaint:Landroid/graphics/Paint;

    sget-boolean v3, Lcom/android/camera/Device;->IS_TABLET:Z

    if-eqz v3, :cond_3

    :goto_3
    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 390
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mPointPaint:Landroid/graphics/Paint;

    .line 391
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mPointPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 392
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 394
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextPaint:Landroid/graphics/Paint;

    .line 395
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 396
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 397
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextPaint:Landroid/graphics/Paint;

    sget-boolean v0, Lcom/android/camera/Device;->IS_TABLET:Z

    if-eqz v0, :cond_4

    const/high16 v0, 0x41c0

    :goto_4
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 398
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 399
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextPaint:Landroid/graphics/Paint;

    const/16 v1, 0xc0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 401
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextBounds:Landroid/graphics/Rect;

    .line 402
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 403
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 405
    new-instance v0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;-><init>(Lcom/android/camera/ui/FocusView$ExposureView;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mScroller:Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;

    .line 407
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mWidth:I

    .line 408
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHeight:I

    .line 409
    sget v0, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mMaxRadius:I

    .line 410
    sget v0, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mMinRadius:I

    .line 411
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    .line 412
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    .line 413
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView$ExposureView;->initGraduation()V

    .line 414
    return-void

    .line 328
    :cond_0
    const/high16 v0, 0x40c0

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 334
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 382
    goto/16 :goto_2

    :cond_3
    move v1, v2

    .line 388
    goto/16 :goto_3

    .line 397
    :cond_4
    const/high16 v0, 0x4190

    goto :goto_4
.end method

.method static synthetic access$1800(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/RollAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mScroller:Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/ui/FocusView$ExposureView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;->performRolling(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/ui/FocusView$ExposureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 327
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/camera/ui/FocusView$ExposureView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView$ExposureView;->justify()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/ui/FocusView$ExposureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mIsDown:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/camera/ui/FocusView$ExposureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 327
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mIsDown:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/camera/ui/FocusView$ExposureView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/camera/ui/FocusView$ExposureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 327
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/camera/ui/FocusView$ExposureView;FFFF)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 327
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/FocusView$ExposureView;->getTangenVelocity(FFFF)I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/camera/ui/FocusView$ExposureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 327
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mMaxRadius:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/camera/ui/FocusView$ExposureView;FFF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 327
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/FocusView$ExposureView;->isInCicle(FFF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/camera/ui/FocusView$ExposureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 327
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTheta:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/camera/ui/FocusView$ExposureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 327
    iput p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTheta:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/camera/ui/FocusView$ExposureView;FF)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 327
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FocusView$ExposureView;->getAngle(FF)I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/camera/ui/FocusView$ExposureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 327
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mLastTheta:I

    return v0
.end method

.method static synthetic access$3302(Lcom/android/camera/ui/FocusView$ExposureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 327
    iput p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mLastTheta:I

    return p1
.end method

.method static synthetic access$3400(Lcom/android/camera/ui/FocusView$ExposureView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView$ExposureView;->removeMessages()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/camera/ui/FocusView$ExposureView;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 327
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FocusView$ExposureView;->gettAngleOffset(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/camera/ui/FocusView$ExposureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mDraw:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/camera/ui/FocusView$ExposureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 327
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mPointColor:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/camera/ui/FocusView$ExposureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 327
    iput p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mPointColor:I

    return p1
.end method

.method static synthetic access$3802(Lcom/android/camera/ui/FocusView$ExposureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 327
    iput p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mStartFlingIndex:I

    return p1
.end method

.method private drawGraduation(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mPaint:Landroid/graphics/Paint;

    const v1, -0x5f000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 766
    const/16 v6, 0xc

    .line 767
    .local v6, count:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 768
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGraduation:[[F

    aget-object v0, v0, v7

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGraduation:[[F

    aget-object v0, v0, v7

    const/4 v2, 0x1

    aget v0, v0, v2

    iget v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGraduation:[[F

    aget-object v0, v0, v7

    const/4 v3, 0x2

    aget v0, v0, v3

    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGraduation:[[F

    aget-object v0, v0, v7

    const/4 v4, 0x3

    aget v0, v0, v4

    iget v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mLinePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 767
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 772
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mMaxRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 773
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mMinRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 774
    return-void
.end method

.method private drawPoint(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 798
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 799
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mPointPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mPointColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 800
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 801
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    rem-int/lit16 v0, v0, 0x168

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 802
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 803
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mMaxRadius:I

    iget v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mMinRadius:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->POINT_SIZE:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 804
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mMaxRadius:I

    iget v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mMinRadius:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->POINT_SIZE:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 805
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    iget v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mMaxRadius:I

    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mMinRadius:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->POINT_SIZE:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 806
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    iget v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mMaxRadius:I

    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mMinRadius:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->POINT_SIZE:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 807
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 808
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v4, 0x1

    const v6, 0x3dcccccd

    const/4 v5, 0x0

    .line 790
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    invoke-interface {v2, v3}, Lcom/android/camera/ui/RollAdapter;->getItemValue(I)I

    move-result v1

    .line 791
    .local v1, value:I
    if-lez v1, :cond_0

    const-string v2, "+%.1f"

    new-array v3, v4, [Ljava/lang/Object;

    int-to-float v4, v1

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 792
    .local v0, txt:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v5, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 793
    iget v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 795
    return-void

    .line 791
    .end local v0           #txt:Ljava/lang/String;
    :cond_0
    const-string v2, "%.1f"

    new-array v3, v4, [Ljava/lang/Object;

    int-to-float v4, v1

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getAngle(FF)I
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 828
    iget v5, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    int-to-float v5, v5

    sub-float v3, p1, v5

    .line 829
    .local v3, dx:F
    iget v5, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    int-to-float v5, v5

    sub-float v4, p2, v5

    .line 830
    .local v4, dy:F
    mul-float v5, v3, v3

    mul-float v6, v4, v4

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 831
    .local v1, distance:D
    const-wide v5, 0x404ca5dc1a63c1f8L

    float-to-double v7, v3

    div-double/2addr v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->acos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v5, v7

    double-to-int v0, v5

    .line 832
    .local v0, arc2:I
    float-to-double v5, v4

    const-wide v7, 0x3f60624dd2f1a9fcL

    cmpl-double v5, v5, v7

    if-lez v5, :cond_0

    .end local v0           #arc2:I
    :goto_0
    return v0

    .restart local v0       #arc2:I
    :cond_0
    rsub-int v0, v0, 0x168

    goto :goto_0
.end method

.method private getOffsetAngleByIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-nez v0, :cond_0

    .line 629
    const/4 v0, 0x0

    .line 636
    :goto_0
    return v0

    .line 631
    :cond_0
    if-gez p1, :cond_2

    .line 632
    const/4 p1, 0x0

    .line 636
    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    sub-int v0, p1, v0

    mul-int/lit8 v0, v0, 0x1e

    goto :goto_0

    .line 633
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 634
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_1
.end method

.method private getTangenVelocity(FFFF)I
    .locals 13
    .parameter "x"
    .parameter "y"
    .parameter "vx"
    .parameter "vy"

    .prologue
    .line 819
    iget v7, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    int-to-float v7, v7

    sub-float v5, p1, v7

    .line 820
    .local v5, dx:F
    iget v7, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    int-to-float v7, v7

    sub-float v6, p2, v7

    .line 821
    .local v6, dy:F
    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 822
    .local v3, distance:D
    float-to-double v7, v6

    const-wide v9, 0x3f747ae147ae147bL

    cmpl-double v7, v7, v9

    if-lez v7, :cond_0

    float-to-double v7, v5

    div-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    .line 824
    .local v1, arc:D
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    move/from16 v0, p4

    float-to-double v9, v0

    mul-double/2addr v7, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    move/from16 v0, p3

    float-to-double v11, v0

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    const-wide v9, 0x4066800000000000L

    mul-double/2addr v7, v9

    const-wide v9, 0x400921fb54442d18L

    div-double/2addr v7, v9

    double-to-int v7, v7

    return v7

    .line 822
    .end local v1           #arc:D
    :cond_0
    const-wide v7, 0x401921fb54442d18L

    float-to-double v9, v5

    div-double/2addr v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->acos(D)D

    move-result-wide v9

    sub-double v1, v7, v9

    goto :goto_0
.end method

.method private gettAngleOffset(II)I
    .locals 2
    .parameter "from"
    .parameter "to"

    .prologue
    .line 836
    sub-int v0, p2, p1

    .line 837
    .local v0, delta:I
    const/16 v1, 0x10e

    if-le v0, v1, :cond_1

    .line 838
    add-int/lit16 v1, p2, -0x168

    sub-int v0, v1, p1

    .line 842
    :cond_0
    :goto_0
    return v0

    .line 839
    :cond_1
    const/16 v1, -0x10e

    if-ge v0, v1, :cond_0

    .line 840
    rsub-int v1, p1, 0x168

    add-int v0, v1, p2

    goto :goto_0
.end method

.method private initGraduation()V
    .locals 15

    .prologue
    const-wide v13, 0x4066800000000000L

    const-wide v11, 0x400921fb54442d18L

    .line 777
    iget v5, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mMaxRadius:I

    iget v6, p0, Lcom/android/camera/ui/FocusView$ExposureView;->GRADUATION_WIDTH:I

    sub-int/2addr v5, v6

    int-to-float v2, v5

    .line 778
    .local v2, r1:F
    iget v5, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mMaxRadius:I

    int-to-float v3, v5

    .line 779
    .local v3, r2:F
    const/16 v0, 0xc

    .line 780
    .local v0, count:I
    const/16 v4, 0x10e

    .line 781
    .local v4, startAngle:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 782
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGraduation:[[F

    aget-object v5, v5, v1

    const/4 v6, 0x0

    mul-int/lit8 v7, v1, 0x1e

    add-int/2addr v7, v4

    int-to-double v7, v7

    mul-double/2addr v7, v11

    div-double/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    float-to-double v9, v2

    mul-double/2addr v7, v9

    double-to-float v7, v7

    aput v7, v5, v6

    .line 783
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGraduation:[[F

    aget-object v5, v5, v1

    const/4 v6, 0x1

    mul-int/lit8 v7, v1, 0x1e

    add-int/2addr v7, v4

    int-to-double v7, v7

    mul-double/2addr v7, v11

    div-double/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    float-to-double v9, v2

    mul-double/2addr v7, v9

    double-to-float v7, v7

    aput v7, v5, v6

    .line 784
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGraduation:[[F

    aget-object v5, v5, v1

    const/4 v6, 0x2

    mul-int/lit8 v7, v1, 0x1e

    add-int/2addr v7, v4

    int-to-double v7, v7

    mul-double/2addr v7, v11

    div-double/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    float-to-double v9, v3

    mul-double/2addr v7, v9

    double-to-float v7, v7

    aput v7, v5, v6

    .line 785
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGraduation:[[F

    aget-object v5, v5, v1

    const/4 v6, 0x3

    mul-int/lit8 v7, v1, 0x1e

    add-int/2addr v7, v4

    int-to-double v7, v7

    mul-double/2addr v7, v11

    div-double/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    float-to-double v9, v3

    mul-double/2addr v7, v9

    double-to-float v7, v7

    aput v7, v5, v6

    .line 781
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 787
    :cond_0
    return-void
.end method

.method private isInCicle(FFF)Z
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "r"

    .prologue
    .line 850
    iget v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    int-to-float v4, v4

    sub-float v2, p1, v4

    .line 851
    .local v2, dx:F
    iget v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    int-to-float v4, v4

    sub-float v3, p2, v4

    .line 852
    .local v3, dy:F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 853
    .local v0, distance:D
    float-to-double v4, p3

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private justify()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 581
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    if-nez v3, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    .line 585
    .local v1, offset:I
    if-lez v1, :cond_5

    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v4}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_4

    .line 587
    .local v0, needToIncrease:Z
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0xf

    if-le v2, v3, :cond_3

    .line 588
    if-gez v1, :cond_6

    .line 589
    add-int/lit8 v1, v1, 0x1e

    .line 594
    :cond_3
    :goto_2
    neg-int v2, v1

    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView$ExposureView;->performRolling(I)V

    goto :goto_0

    .end local v0           #needToIncrease:Z
    :cond_4
    move v0, v2

    .line 585
    goto :goto_1

    :cond_5
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    if-gtz v3, :cond_2

    move v0, v2

    goto :goto_1

    .line 591
    .restart local v0       #needToIncrease:Z
    :cond_6
    add-int/lit8 v1, v1, -0x1e

    goto :goto_2
.end method

.method private performRolling(I)V
    .locals 7
    .parameter "delta"

    .prologue
    const/4 v6, 0x2

    .line 542
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    .line 546
    iget-boolean v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mDraw:Z

    if-nez v3, :cond_3

    .line 547
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    const/16 v4, 0x96

    if-gt v3, v4, :cond_2

    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    const/16 v4, -0x78

    if-ge v3, v4, :cond_0

    .line 548
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/FocusView$ExposureView;->setDraw(Z)V

    goto :goto_0

    .line 553
    :cond_3
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    div-int/lit8 v0, v3, 0x1e

    .line 554
    .local v0, count:I
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    add-int v2, v3, v0

    .line 556
    .local v2, targetItem:I
    if-gez v2, :cond_6

    .line 557
    const/4 v2, 0x0

    .line 558
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    neg-int v0, v3

    .line 564
    :cond_4
    :goto_1
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    if-eq v2, v3, :cond_5

    .line 565
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/ui/FocusView$ExposureView;->setCurrentItem(IZ)V

    .line 568
    :cond_5
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 569
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 572
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    rem-int/lit8 v3, v3, 0x1e

    iput v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    .line 573
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    add-int v1, v3, p1

    .line 574
    .local v1, orientation:I
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    if-eq v1, v3, :cond_0

    .line 575
    iput v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    .line 576
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    goto :goto_0

    .line 559
    .end local v1           #orientation:I
    :cond_6
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v3

    if-lt v2, v3, :cond_4

    .line 560
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 561
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    sub-int v0, v3, v4

    goto :goto_1
.end method

.method private removeMessages()V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 539
    return-void
.end method

.method private scrollToItem(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 622
    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x32

    const/16 v2, 0xfa

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 623
    .local v0, time:I
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mScroller:Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;->getOffsetAngleByIndex(I)I

    move-result v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->scroll(IJ)V

    .line 624
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 625
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x2

    const v4, -0x5f000001

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 707
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-nez v2, :cond_0

    .line 739
    :goto_0
    return v0

    .line 710
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 712
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 713
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mIsDown:Z

    if-eqz v2, :cond_1

    .line 714
    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mIsDown:Z

    .line 715
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView$ExposureView;->justify()V

    .line 719
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 720
    iget v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mPointColor:I

    if-eq v2, v4, :cond_2

    .line 721
    iput v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mPointColor:I

    .line 725
    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mDraw:Z

    if-eqz v2, :cond_5

    .line 726
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mIsDown:Z

    if-eqz v2, :cond_3

    .line 727
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 728
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 729
    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mIsDown:Z

    .line 731
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 732
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView$ExposureView;->justify()V

    :cond_4
    :goto_1
    move v0, v1

    .line 739
    goto :goto_0

    .line 735
    :cond_5
    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    goto :goto_1
.end method

.method public enableControls(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 446
    return-void
.end method

.method public getDecelerate(F)F
    .locals 3
    .parameter "t"

    .prologue
    const/high16 v2, 0x3f80

    .line 857
    sub-float v0, v2, p1

    sub-float v1, v2, p1

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    return v0
.end method

.method public getLinear(F)F
    .locals 0
    .parameter "t"

    .prologue
    .line 861
    return p1
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "what"
    .parameter "sender"
    .parameter "extra1"
    .parameter "extra2"

    .prologue
    .line 451
    const/4 v0, 0x0

    return v0
.end method

.method public isDraw()Z
    .locals 1

    .prologue
    .line 493
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mDraw:Z

    return v0
.end method

.method public onCameraOpen()V
    .locals 5

    .prologue
    .line 423
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 424
    .local v2, parameter:Landroid/hardware/Camera$Parameters;
    if-nez v2, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v1

    .line 426
    .local v1, min:I
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    .line 427
    .local v0, max:I
    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    .line 428
    new-instance v3, Lcom/android/camera/ui/NumericRollAdapter;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v0, v4}, Lcom/android/camera/ui/NumericRollAdapter;-><init>(III)V

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/ui/FocusView$ExposureView;->setAdapter(Lcom/android/camera/ui/RollAdapter;I)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 419
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mDraw:Z

    if-nez v0, :cond_1

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRatation:I

    if-eqz v0, :cond_2

    .line 748
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 749
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 750
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRatation:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 751
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 754
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;->drawGraduation(Landroid/graphics/Canvas;)V

    .line 755
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;->drawText(Landroid/graphics/Canvas;)V

    .line 757
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;->drawPoint(Landroid/graphics/Canvas;)V

    .line 759
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRatation:I

    if-eqz v0, :cond_0

    .line 760
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FocusView$ExposureView;->setDraw(Z)V

    .line 440
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    .line 441
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FocusView$ExposureView;->setDraw(Z)V

    .line 435
    return-void
.end method

.method public reload()V
    .locals 3

    .prologue
    .line 475
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v1, :cond_0

    .line 476
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    .line 477
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/camera/ui/FocusView$ExposureView;->getOffsetAngleByIndex(I)I

    move-result v1

    neg-int v1, v1

    iput v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    .line 478
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/ui/RollAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v0

    .line 480
    .local v0, index:I
    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView$ExposureView;->getOffsetAngleByIndex(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    .line 481
    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    .line 483
    .end local v0           #index:I
    :cond_0
    return-void
.end method

.method public scrollToOffset(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 640
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    add-int/2addr v0, p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/FocusView$ExposureView;->setCurrentItem(IZ)V

    .line 641
    return-void
.end method

.method public setAdapter(Lcom/android/camera/ui/RollAdapter;I)V
    .locals 3
    .parameter "adapter"
    .parameter "value"

    .prologue
    .line 460
    if-eqz p1, :cond_0

    .line 461
    iput-object p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    .line 462
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    .line 463
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/ui/RollAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v0

    .line 464
    .local v0, index:I
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/camera/ui/FocusView$ExposureView;->getOffsetAngleByIndex(I)I

    move-result v1

    neg-int v1, v1

    iput v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    .line 465
    if-gez v0, :cond_1

    .line 466
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    .line 472
    .end local v0           #index:I
    :cond_0
    :goto_0
    return-void

    .line 468
    .restart local v0       #index:I
    :cond_1
    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView$ExposureView;->getOffsetAngleByIndex(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    .line 469
    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 7
    .parameter "index"
    .parameter "animated"

    .prologue
    const/4 v6, 0x1

    .line 598
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    if-eq p1, v0, :cond_0

    .line 599
    if-eqz p2, :cond_1

    .line 600
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;->scrollToItem(I)V

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    .line 603
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v0, :cond_2

    .line 604
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const v2, 0x7f0c0048

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v4, p1}, Lcom/android/camera/ui/RollAdapter;->getItemValue(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 610
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mScroller:Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mMode:I
    invoke-static {v0}, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->access$2600(Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;)I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 611
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mStartFlingIndex:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v2}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v2

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mScroller:Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;

    #setter for: Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinished:Z
    invoke-static {v0, v6}, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->access$2702(Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;Z)Z

    .line 614
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setDraw(Z)V
    .locals 1
    .parameter "draw"

    .prologue
    .line 497
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mDraw:Z

    if-eq v0, p1, :cond_0

    .line 498
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    .line 499
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView$ExposureView;->reload()V

    .line 501
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mDraw:Z

    .line 502
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 503
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 457
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 812
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRatation:I

    if-eq v0, p1, :cond_0

    .line 813
    iput p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRatation:I

    .line 814
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 816
    :cond_0
    return-void
.end method

.method public setPosition(II)V
    .locals 1
    .parameter "cx"
    .parameter "cy"

    .prologue
    .line 486
    iput p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    .line 487
    iput p2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    .line 488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mDraw:Z

    .line 489
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView$ExposureView;->removeMessages()V

    .line 490
    return-void
.end method
