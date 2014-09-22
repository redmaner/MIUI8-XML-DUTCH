.class public Lcom/android/camera/ui/ScreenView;
.super Landroid/view/ViewGroup;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ScreenView$1;,
        Lcom/android/camera/ui/ScreenView$SavedState;,
        Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;,
        Lcom/android/camera/ui/ScreenView$SlideBar;,
        Lcom/android/camera/ui/ScreenView$SeekBarIndicator;,
        Lcom/android/camera/ui/ScreenView$ArrowIndicator;,
        Lcom/android/camera/ui/ScreenView$Indicator;,
        Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;,
        Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;
    }
.end annotation


# static fields
.field protected static final INDICATOR_MEASURE_SPEC:I

.field protected static final SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private static final SMOOTHING_CONSTANT:F


# instance fields
.field protected final DEFAULT_CAMERA_DISTANCE:F

.field private isFromcomputeScroll:Z

.field protected mActivePointerId:I

.field private mAllowLongPress:Z

.field private mArrowLeft:Lcom/android/camera/ui/ScreenView$ArrowIndicator;

.field private mArrowLeftOffResId:I

.field private mArrowLeftOnResId:I

.field private mArrowRight:Lcom/android/camera/ui/ScreenView$ArrowIndicator;

.field private mArrowRightOffResId:I

.field private mArrowRightOnResId:I

.field protected mChildScreenWidth:I

.field private mConfirmHorizontalScrollRatio:F

.field private mCurrentGestureFinished:Z

.field protected mCurrentScreen:I

.field protected mFirstLayout:Z

.field mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

.field protected mHeightMeasureSpec:I

.field private mIndicatorCount:I

.field protected mLastMotionX:F

.field protected mLastMotionY:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMaximumVelocity:I

.field protected mNextScreen:I

.field protected mOverScrollRatio:F

.field private mOvershootTension:F

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field protected mScreenAlignment:I

.field private mScreenCounter:I

.field protected mScreenOffset:I

.field protected mScreenPaddingBottom:I

.field protected mScreenPaddingTop:I

.field protected mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

.field private mScreenSnapDuration:I

.field private mScreenTransitionType:I

.field protected mScreenWidth:I

.field private mScrollInterpolator:Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

.field protected mScrollLeftBound:I

.field protected mScrollOffset:I

.field protected mScrollRightBound:I

.field protected mScrollWholeScreen:Z

.field protected mScroller:Landroid/widget/Scroller;

.field private mSeekPointResId:I

.field protected mSlideBar:Lcom/android/camera/ui/ScreenView$SlideBar;

.field private mSmoothingTime:F

.field private mTouchIntercepted:Z

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTouchX:F

.field protected mVisibleRange:I

.field protected mWidthMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 41
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lcom/android/camera/ui/ScreenView;->INDICATOR_MEASURE_SPEC:I

    .line 45
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/android/camera/ui/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 126
    const-wide v0, 0x3f90624dd2f1a9fcL

    const-wide/high16 v2, 0x3fe8

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/android/camera/ui/ScreenView;->SMOOTHING_CONSTANT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 309
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 48
    iput-boolean v2, p0, Lcom/android/camera/ui/ScreenView;->mFirstLayout:Z

    .line 52
    const v0, 0x7f020174

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeftOnResId:I

    .line 53
    const v0, 0x7f020175

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeftOffResId:I

    .line 54
    const v0, 0x7f020176

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowRightOnResId:I

    .line 55
    const v0, 0x7f020177

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowRightOffResId:I

    .line 57
    const v0, 0x7f020178

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mSeekPointResId:I

    .line 75
    iput v2, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    .line 77
    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    .line 82
    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    .line 85
    const v0, 0x3eaaaaab

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    .line 89
    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    .line 101
    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    .line 108
    iput-boolean v1, p0, Lcom/android/camera/ui/ScreenView;->isFromcomputeScroll:Z

    .line 111
    iput-boolean v2, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    .line 122
    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    .line 129
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mConfirmHorizontalScrollRatio:F

    .line 131
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSnapDuration:I

    .line 148
    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenTransitionType:I

    .line 151
    const v0, 0x3fa66666

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mOvershootTension:F

    .line 278
    new-instance v0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;-><init>(Lcom/android/camera/ui/ScreenView;Lcom/android/camera/ui/ScreenView$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    .line 1460
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44a0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    .line 310
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->initScreenView()V

    .line 311
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 320
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 321
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 331
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    iput-boolean v2, p0, Lcom/android/camera/ui/ScreenView;->mFirstLayout:Z

    .line 52
    const v0, 0x7f020174

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeftOnResId:I

    .line 53
    const v0, 0x7f020175

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeftOffResId:I

    .line 54
    const v0, 0x7f020176

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowRightOnResId:I

    .line 55
    const v0, 0x7f020177

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowRightOffResId:I

    .line 57
    const v0, 0x7f020178

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mSeekPointResId:I

    .line 75
    iput v2, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    .line 77
    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    .line 82
    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    .line 85
    const v0, 0x3eaaaaab

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    .line 89
    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    .line 101
    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    .line 108
    iput-boolean v1, p0, Lcom/android/camera/ui/ScreenView;->isFromcomputeScroll:Z

    .line 111
    iput-boolean v2, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    .line 122
    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    .line 129
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mConfirmHorizontalScrollRatio:F

    .line 131
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSnapDuration:I

    .line 148
    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenTransitionType:I

    .line 151
    const v0, 0x3fa66666

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mOvershootTension:F

    .line 278
    new-instance v0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;-><init>(Lcom/android/camera/ui/ScreenView;Lcom/android/camera/ui/ScreenView$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    .line 1460
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44a0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    .line 332
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->initScreenView()V

    .line 333
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/ScreenView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/ScreenView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/ScreenView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mOvershootTension:F

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/ScreenView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    return v0
.end method

.method private createSeekPoint()Landroid/widget/ImageView;
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1378
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1379
    .local v0, seekPoint:Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1380
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mSeekPointResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1381
    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1383
    return-object v0
.end method

.method private initScreenView()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 339
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 340
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->setClipToPadding(Z)V

    .line 341
    new-instance v1, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;-><init>(Lcom/android/camera/ui/ScreenView;)V

    iput-object v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollInterpolator:Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

    .line 342
    new-instance v1, Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/ui/ScreenView;->mScrollInterpolator:Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    .line 343
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->setCurrentScreenInner(I)V

    .line 345
    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 346
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchSlop:I

    .line 347
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->setMaximumSnapVelocity(I)V

    .line 349
    new-instance v1, Landroid/view/ScaleGestureDetector;

    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;-><init>(Lcom/android/camera/ui/ScreenView;Lcom/android/camera/ui/ScreenView$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/android/camera/ui/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 350
    return-void
.end method

.method private onTouchEventUnique(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "ev"

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1014
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-ne v0, v1, :cond_1

    .line 1015
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1017
    :cond_1
    return-void
.end method

.method private refreshScrollBound()V
    .locals 3

    .prologue
    .line 719
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollLeftBound:I

    .line 720
    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    if-nez v0, :cond_0

    .line 721
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollRightBound:I

    .line 727
    :goto_0
    return-void

    .line 724
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollRightBound:I

    goto :goto_0
.end method

.method private scrolledFarEnough(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v2, 0x0

    .line 1006
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1007
    .local v0, dx:F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1008
    .local v1, dy:F
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mConfirmHorizontalScrollRatio:F

    mul-float/2addr v3, v1

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mTouchSlop:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private snapByVelocity(I)V
    .locals 8
    .parameter "pointerId"

    .prologue
    const/4 v5, 0x1

    .line 1111
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 1115
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    const/16 v6, 0x3e8

    iget v7, p0, Lcom/android/camera/ui/ScreenView;->mMaximumVelocity:I

    invoke-virtual {v4, v6, v7, p1}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->getXVelocity(III)F

    move-result v4

    float-to-int v2, v4

    .line 1116
    .local v2, velocityX:I
    iget-object v4, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->getFlingDirection(F)I

    move-result v0

    .line 1117
    .local v0, flingDirection:I
    if-ne v0, v5, :cond_2

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    if-lez v4, :cond_2

    .line 1118
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    sub-int/2addr v4, v6

    invoke-virtual {p0, v4, v2, v5}, Lcom/android/camera/ui/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    .line 1119
    :cond_2
    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_3

    .line 1120
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    add-int/2addr v4, v6

    invoke-virtual {p0, v4, v2, v5}, Lcom/android/camera/ui/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    .line 1121
    :cond_3
    const/4 v4, 0x3

    if-ne v0, v4, :cond_4

    .line 1122
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v4, v2, v5}, Lcom/android/camera/ui/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    .line 1124
    :cond_4
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    iget-boolean v4, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    :goto_1
    mul-int v1, v6, v4

    .line 1125
    .local v1, snapUnit:I
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    shr-int/lit8 v6, v1, 0x1

    add-int/2addr v4, v6

    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    div-int v3, v4, v6

    .line 1126
    .local v3, whichScreen:I
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/camera/ui/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    .end local v1           #snapUnit:I
    .end local v3           #whichScreen:I
    :cond_5
    move v4, v5

    .line 1124
    goto :goto_1
.end method

.method private updateArrowIndicatorResource(I)V
    .locals 3
    .parameter "x"

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeft:Lcom/android/camera/ui/ScreenView$ArrowIndicator;

    if-eqz v0, :cond_0

    .line 702
    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeft:Lcom/android/camera/ui/ScreenView$ArrowIndicator;

    if-gtz p1, :cond_1

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeftOffResId:I

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ScreenView$ArrowIndicator;->setImageResource(I)V

    .line 706
    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mArrowRight:Lcom/android/camera/ui/ScreenView$ArrowIndicator;

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowRightOffResId:I

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ScreenView$ArrowIndicator;->setImageResource(I)V

    .line 711
    :cond_0
    return-void

    .line 702
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowLeftOnResId:I

    goto :goto_0

    .line 706
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mArrowRightOnResId:I

    goto :goto_1
.end method

.method private updateIndicatorPositions(I)V
    .locals 17
    .parameter "scrollX"

    .prologue
    .line 612
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ScreenView;->getWidth()I

    move-result v14

    if-lez v14, :cond_4

    .line 613
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v4

    .line 614
    .local v4, indexOffset:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ScreenView;->getWidth()I

    move-result v12

    .line 615
    .local v12, screenWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ScreenView;->getHeight()I

    move-result v11

    .line 617
    .local v11, screenHeight:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/ui/ScreenView;->mIndicatorCount:I

    if-ge v3, v14, :cond_4

    .line 618
    add-int v14, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/camera/ui/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 619
    .local v5, indicator:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 621
    .local v10, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 622
    .local v9, indicatorWidth:I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 624
    .local v6, indicatorHeight:I
    const/4 v7, 0x0

    .line 625
    .local v7, indicatorLeft:I
    const/4 v8, 0x0

    .line 627
    .local v8, indicatorTop:I
    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 629
    .local v1, gravity:I
    const/4 v14, -0x1

    if-eq v1, v14, :cond_0

    .line 630
    and-int/lit8 v2, v1, 0x7

    .line 631
    .local v2, horizontalGravity:I
    and-int/lit8 v13, v1, 0x70

    .line 633
    .local v13, verticalGravity:I
    packed-switch v2, :pswitch_data_0

    .line 645
    :pswitch_0
    iget v7, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 648
    :goto_1
    sparse-switch v13, :sswitch_data_0

    .line 660
    iget v8, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 663
    .end local v2           #horizontalGravity:I
    .end local v13           #verticalGravity:I
    :cond_0
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->isLayoutRequested()Z

    move-result v14

    if-nez v14, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v14

    if-lez v14, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v14

    if-gtz v14, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/ui/ScreenView;->isFromcomputeScroll:Z

    if-eqz v14, :cond_3

    :cond_2
    move-object v14, v5

    .line 665
    check-cast v14, Lcom/android/camera/ui/ScreenView$Indicator;

    add-int v15, p1, v7

    invoke-interface {v14, v15}, Lcom/android/camera/ui/ScreenView$Indicator;->fastOffset(I)V

    .line 666
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 617
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 635
    .restart local v2       #horizontalGravity:I
    .restart local v13       #verticalGravity:I
    :pswitch_1
    iget v7, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 636
    goto :goto_1

    .line 638
    :pswitch_2
    sub-int v14, v12, v9

    div-int/lit8 v14, v14, 0x2

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v14, v15

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v7, v14, v15

    .line 640
    goto :goto_1

    .line 642
    :pswitch_3
    sub-int v14, v12, v9

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v7, v14, v15

    .line 643
    goto :goto_1

    .line 650
    :sswitch_0
    iget v8, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 651
    goto :goto_2

    .line 653
    :sswitch_1
    sub-int v14, v11, v6

    div-int/lit8 v14, v14, 0x2

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v14, v15

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v8, v14, v15

    .line 655
    goto :goto_2

    .line 657
    :sswitch_2
    sub-int v14, v11, v6

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v8, v14, v15

    .line 658
    goto :goto_2

    .line 668
    .end local v2           #horizontalGravity:I
    .end local v13           #verticalGravity:I
    :cond_3
    add-int v14, p1, v7

    add-int v15, p1, v7

    add-int/2addr v15, v9

    add-int v16, v8, v6

    move/from16 v0, v16

    invoke-virtual {v5, v14, v8, v15, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    .line 676
    .end local v1           #gravity:I
    .end local v3           #i:I
    .end local v4           #indexOffset:I
    .end local v5           #indicator:Landroid/view/View;
    .end local v6           #indicatorHeight:I
    .end local v7           #indicatorLeft:I
    .end local v8           #indicatorTop:I
    .end local v9           #indicatorWidth:I
    .end local v10           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v11           #screenHeight:I
    .end local v12           #screenWidth:I
    :cond_4
    return-void

    .line 633
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 648
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private updateScreenOffset()V
    .locals 2

    .prologue
    .line 594
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenAlignment:I

    packed-switch v0, :pswitch_data_0

    .line 608
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mPaddingLeft:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    .line 609
    return-void

    .line 596
    :pswitch_0
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenOffset:I

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 599
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 602
    :pswitch_2
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 605
    :pswitch_3
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 594
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateSeekPoints(II)V
    .locals 5
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    const/4 v4, 0x1

    .line 1387
    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    if-eqz v2, :cond_0

    .line 1388
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    .line 1389
    .local v0, count:I
    if-gt v0, v4, :cond_1

    .line 1390
    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->setVisibility(I)V

    .line 1403
    .end local v0           #count:I
    :cond_0
    return-void

    .line 1393
    .restart local v0       #count:I
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    if-ge v1, v2, :cond_2

    add-int v2, p1, v1

    if-ge v2, v0, :cond_2

    .line 1394
    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    add-int v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1393
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1399
    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    if-ge v1, v2, :cond_0

    add-int v2, p2, v1

    if-ge v2, v0, :cond_0

    .line 1400
    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    add-int v3, p2, v1

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1399
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private updateSlidePointPosition(I)V
    .locals 7
    .parameter "scrollX"

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    .line 681
    .local v0, screenCount:I
    iget-object v5, p0, Lcom/android/camera/ui/ScreenView;->mSlideBar:Lcom/android/camera/ui/ScreenView$SlideBar;

    if-eqz v5, :cond_0

    if-lez v0, :cond_0

    .line 682
    iget-object v5, p0, Lcom/android/camera/ui/ScreenView;->mSlideBar:Lcom/android/camera/ui/ScreenView$SlideBar;

    invoke-virtual {v5}, Lcom/android/camera/ui/ScreenView$SlideBar;->getSlideWidth()I

    move-result v2

    .line 683
    .local v2, slideBarWidth:I
    div-int v5, v2, v0

    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    mul-int/2addr v5, v6

    const/16 v6, 0x30

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 687
    .local v3, slidePointWidth:I
    iget v5, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    mul-int v1, v5, v0

    .line 688
    .local v1, screenViewContentWidth:I
    if-gt v1, v2, :cond_1

    const/4 v4, 0x0

    .line 693
    .local v4, slidePointX:I
    :goto_0
    iget-object v5, p0, Lcom/android/camera/ui/ScreenView;->mSlideBar:Lcom/android/camera/ui/ScreenView$SlideBar;

    add-int v6, v4, v3

    invoke-virtual {v5, v4, v6}, Lcom/android/camera/ui/ScreenView$SlideBar;->setPosition(II)V

    .line 694
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->isHardwareAccelerated()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 695
    iget-object v5, p0, Lcom/android/camera/ui/ScreenView;->mSlideBar:Lcom/android/camera/ui/ScreenView$SlideBar;

    invoke-virtual {v5}, Lcom/android/camera/ui/ScreenView$SlideBar;->invalidate()V

    .line 698
    .end local v1           #screenViewContentWidth:I
    .end local v2           #slideBarWidth:I
    .end local v3           #slidePointWidth:I
    .end local v4           #slidePointX:I
    :cond_0
    return-void

    .line 688
    .restart local v1       #screenViewContentWidth:I
    .restart local v2       #slideBarWidth:I
    .restart local v3       #slidePointWidth:I
    :cond_1
    sub-int v5, v2, v3

    mul-int/2addr v5, p1

    sub-int v6, v1, v2

    div-int v4, v5, v6

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 1240
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    .line 1241
    .local v0, currentCount:I
    if-gez p2, :cond_1

    .line 1242
    move p2, v0

    .line 1248
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    if-eqz v1, :cond_0

    .line 1249
    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->createSeekPoint()Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lcom/android/camera/ui/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1252
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    .line 1254
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->refreshScrollBound()V

    .line 1256
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1257
    return-void

    .line 1245
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const v5, 0x4e6e6b28

    .line 747
    iput-boolean v4, p0, Lcom/android/camera/ui/ScreenView;->isFromcomputeScroll:Z

    .line 748
    iget-object v3, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 749
    iget-object v3, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mTouchX:F

    .line 750
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    long-to-float v3, v3

    div-float/2addr v3, v5

    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mSmoothingTime:F

    .line 751
    iget-object v3, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mScrollY:I

    .line 752
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->postInvalidate()V

    .line 768
    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    invoke-direct {p0, v3}, Lcom/android/camera/ui/ScreenView;->updateIndicatorPositions(I)V

    .line 769
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    invoke-direct {p0, v3}, Lcom/android/camera/ui/ScreenView;->updateSlidePointPosition(I)V

    .line 770
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    invoke-direct {p0, v3}, Lcom/android/camera/ui/ScreenView;->updateArrowIndicatorResource(I)V

    .line 771
    iput-boolean v7, p0, Lcom/android/camera/ui/ScreenView;->isFromcomputeScroll:Z

    .line 772
    return-void

    .line 753
    :cond_1
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    if-eq v3, v6, :cond_2

    .line 754
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/ScreenView;->setCurrentScreenInner(I)V

    .line 755
    iput v6, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    goto :goto_0

    .line 756
    :cond_2
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-ne v3, v4, :cond_0

    .line 757
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    long-to-float v3, v3

    div-float v2, v3, v5

    .line 758
    .local v2, now:F
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mSmoothingTime:F

    sub-float v3, v2, v3

    sget v4, Lcom/android/camera/ui/ScreenView;->SMOOTHING_CONSTANT:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 759
    .local v1, e:F
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mTouchX:F

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    int-to-float v4, v4

    sub-float v0, v3, v4

    .line 760
    .local v0, dx:F
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    int-to-float v3, v3

    mul-float v4, v0, v1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    .line 761
    iput v2, p0, Lcom/android/camera/ui/ScreenView;->mSmoothingTime:F

    .line 763
    const/high16 v3, 0x3f80

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_3

    const/high16 v3, -0x4080

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 764
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->postInvalidate()V

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 904
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 905
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    if-lez v1, :cond_1

    .line 906
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->snapToScreen(I)V

    .line 915
    :goto_0
    return v0

    .line 909
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 910
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 911
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->snapToScreen(I)V

    goto :goto_0

    .line 915
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 885
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/ScreenView;->updateChildStaticTransformation(Landroid/view/View;)V

    .line 886
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected finishCurrentGesture()V
    .locals 2

    .prologue
    .line 1131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentGestureFinished:Z

    .line 1132
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1133
    return-void
.end method

.method public getCurrentScreen()Landroid/view/View;
    .locals 1

    .prologue
    .line 1197
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getScreen(I)Landroid/view/View;
    .locals 1
    .parameter "screenIndex"

    .prologue
    .line 1229
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1230
    :cond_0
    const/4 v0, 0x0

    .line 1232
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final getScreenCount()I
    .locals 1

    .prologue
    .line 1181
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 775
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 776
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->computeScroll()V

    .line 777
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 955
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 997
    :cond_0
    :goto_0
    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    if-eq v2, v3, :cond_1

    .line 998
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 1001
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/ui/ScreenView;->mCurrentGestureFinished:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-eq v2, v4, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0

    .line 957
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 958
    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView;->scrolledFarEnough(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 959
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 965
    :pswitch_1
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 966
    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 967
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 969
    iput-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentGestureFinished:Z

    .line 970
    iput-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mTouchIntercepted:Z

    .line 973
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    .line 974
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionY:F

    .line 976
    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 977
    iput-boolean v1, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    goto :goto_0

    .line 985
    :cond_4
    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 986
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 993
    :pswitch_2
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 955
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 856
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/camera/ui/ScreenView;->setFrame(IIII)Z

    .line 858
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mPaddingLeft:I

    add-int/2addr p2, v4

    .line 859
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mPaddingRight:I

    sub-int/2addr p4, v4

    .line 861
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    invoke-direct {p0, v4}, Lcom/android/camera/ui/ScreenView;->updateIndicatorPositions(I)V

    .line 864
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v2

    .line 865
    .local v2, count:I
    const/4 v1, 0x0

    .line 866
    .local v1, childLeft:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 867
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 868
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 869
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mPaddingTop:I

    iget v5, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mPaddingTop:I

    iget v7, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 874
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v1, v4

    .line 866
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 878
    .end local v0           #child:Landroid/view/View;
    :cond_1
    iget-boolean v4, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    iget v5, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    rem-int/2addr v4, v5

    if-lez v4, :cond_2

    .line 879
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    iget v5, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    rem-int/2addr v5, v6

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/ScreenView;->setCurrentScreen(I)V

    .line 881
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 781
    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mWidthMeasureSpec:I

    .line 782
    iput p2, p0, Lcom/android/camera/ui/ScreenView;->mHeightMeasureSpec:I

    .line 783
    const/4 v8, 0x0

    .line 784
    .local v8, maxHeight:I
    const/4 v9, 0x0

    .line 786
    .local v9, maxWidth:I
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v3

    .line 789
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mIndicatorCount:I

    if-ge v4, v10, :cond_0

    .line 790
    add-int v10, v4, v3

    invoke-virtual {p0, v10}, Lcom/android/camera/ui/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 792
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 794
    .local v5, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mPaddingLeft:I

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mPaddingRight:I

    add-int/2addr v10, v11

    iget v11, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v10, v11}, Lcom/android/camera/ui/ScreenView;->getChildMeasureSpec(III)I

    move-result v2

    .line 796
    .local v2, childWidthMeasureSpec:I
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mPaddingTop:I

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v10, v11}, Lcom/android/camera/ui/ScreenView;->getChildMeasureSpec(III)I

    move-result v1

    .line 801
    .local v1, childHeightMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 802
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 803
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 789
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 807
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeightMeasureSpec:I
    .end local v2           #childWidthMeasureSpec:I
    .end local v5           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v6, 0x0

    .line 808
    .local v6, maxChildHeight:I
    const/4 v7, 0x0

    .line 809
    .local v7, maxChildWidth:I
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    .line 810
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 812
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 814
    .restart local v5       #lp:Landroid/view/ViewGroup$LayoutParams;
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mPaddingLeft:I

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mPaddingRight:I

    add-int/2addr v10, v11

    iget v11, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v10, v11}, Lcom/android/camera/ui/ScreenView;->getChildMeasureSpec(III)I

    move-result v2

    .line 816
    .restart local v2       #childWidthMeasureSpec:I
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mPaddingTop:I

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v10, v11}, Lcom/android/camera/ui/ScreenView;->getChildMeasureSpec(III)I

    move-result v1

    .line 821
    .restart local v1       #childHeightMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 822
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 823
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 809
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 825
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeightMeasureSpec:I
    .end local v2           #childWidthMeasureSpec:I
    .end local v5           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 826
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 829
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mPaddingLeft:I

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mPaddingRight:I

    add-int/2addr v10, v11

    add-int/2addr v9, v10

    .line 830
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mPaddingTop:I

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    .line 832
    invoke-static {v9, p1}, Lcom/android/camera/ui/ScreenView;->resolveSize(II)I

    move-result v10

    invoke-static {v8, p2}, Lcom/android/camera/ui/ScreenView;->resolveSize(II)I

    move-result v11

    invoke-virtual {p0, v10, v11}, Lcom/android/camera/ui/ScreenView;->setMeasuredDimension(II)V

    .line 836
    if-lez v3, :cond_2

    .line 837
    iput v7, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    .line 838
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mPaddingLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mPaddingRight:I

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    .line 839
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->updateScreenOffset()V

    .line 840
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    invoke-virtual {p0, v10}, Lcom/android/camera/ui/ScreenView;->setOverScrollRatio(F)V

    .line 841
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    if-lez v10, :cond_2

    .line 842
    const/4 v10, 0x1

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    iget v12, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    iget v12, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    div-int/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    .line 846
    :cond_2
    iget-boolean v10, p0, Lcom/android/camera/ui/ScreenView;->mFirstLayout:Z

    if-eqz v10, :cond_3

    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    if-lez v10, :cond_3

    .line 847
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/camera/ui/ScreenView;->mFirstLayout:Z

    .line 848
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/camera/ui/ScreenView;->setHorizontalScrollBarEnabled(Z)V

    .line 849
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v10}, Lcom/android/camera/ui/ScreenView;->setCurrentScreen(I)V

    .line 850
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/camera/ui/ScreenView;->setHorizontalScrollBarEnabled(Z)V

    .line 852
    :cond_3
    return-void
.end method

.method protected onPinchIn(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .parameter "detector"

    .prologue
    .line 1634
    return-void
.end method

.method protected onPinchOut(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .parameter "detector"

    .prologue
    .line 1637
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1686
    move-object v0, p1

    check-cast v0, Lcom/android/camera/ui/ScreenView$SavedState;

    .line 1687
    .local v0, savedState:Lcom/android/camera/ui/ScreenView$SavedState;
    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1688
    iget v1, v0, Lcom/android/camera/ui/ScreenView$SavedState;->currentScreen:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1689
    iget v1, v0, Lcom/android/camera/ui/ScreenView$SavedState;->currentScreen:I

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->setCurrentScreen(I)V

    .line 1691
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1679
    new-instance v0, Lcom/android/camera/ui/ScreenView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/ui/ScreenView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1680
    .local v0, state:Lcom/android/camera/ui/ScreenView$SavedState;
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    iput v1, v0, Lcom/android/camera/ui/ScreenView$SavedState;->currentScreen:I

    .line 1681
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 1021
    iget-boolean v6, p0, Lcom/android/camera/ui/ScreenView;->mCurrentGestureFinished:Z

    if-eqz v6, :cond_0

    .line 1078
    :goto_0
    return v5

    .line 1023
    :cond_0
    iget-boolean v6, p0, Lcom/android/camera/ui/ScreenView;->mTouchIntercepted:Z

    if-eqz v6, :cond_1

    .line 1024
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 1027
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_0

    .line 1077
    :cond_2
    :goto_1
    :pswitch_0
    iput-boolean v5, p0, Lcom/android/camera/ui/ScreenView;->mTouchIntercepted:Z

    goto :goto_0

    .line 1032
    :pswitch_1
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-nez v6, :cond_3

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView;->scrolledFarEnough(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1033
    invoke-virtual {p0, p1, v5}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1036
    :cond_3
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-ne v6, v5, :cond_2

    .line 1038
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 1039
    .local v3, pointerIndex:I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_4

    .line 1040
    invoke-virtual {p0, p1, v5}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1041
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 1043
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1044
    .local v4, x:F
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    sub-float v0, v6, v4

    .line 1045
    .local v0, deltaX:F
    iput v4, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    .line 1047
    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-eqz v6, :cond_5

    .line 1048
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mTouchX:F

    add-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {p0, v6, v1}, Lcom/android/camera/ui/ScreenView;->scrollTo(II)V

    goto :goto_1

    .line 1050
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->awakenScrollBars()Z

    goto :goto_1

    .line 1056
    .end local v0           #deltaX:F
    .end local v3           #pointerIndex:I
    .end local v4           #x:F
    :pswitch_2
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-ne v6, v5, :cond_6

    .line 1057
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    invoke-direct {p0, v6}, Lcom/android/camera/ui/ScreenView;->snapByVelocity(I)V

    .line 1059
    :cond_6
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 1062
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const v7, 0xff00

    and-int/2addr v6, v7

    shr-int/lit8 v3, v6, 0x8

    .line 1064
    .restart local v3       #pointerIndex:I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1065
    .local v2, pointerId:I
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    if-ne v2, v6, :cond_2

    .line 1069
    if-nez v3, :cond_7

    move v1, v5

    .line 1070
    .local v1, newPointerIndex:I
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iput v6, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    .line 1071
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    .line 1072
    iget-object v6, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    iget v7, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->init(I)V

    goto :goto_1

    .line 1027
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public removeAllScreens()V
    .locals 2

    .prologue
    .line 1332
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ScreenView;->removeScreensInLayout(II)V

    .line 1333
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->requestLayout()V

    .line 1334
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->invalidate()V

    .line 1335
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    .line 1279
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mIndicatorCount:I

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    .line 1280
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1281
    return-void
.end method

.method public removeScreensInLayout(II)V
    .locals 1
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1338
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1346
    :cond_0
    :goto_0
    return-void

    .line 1339
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1341
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    if-eqz v0, :cond_2

    .line 1342
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->removeViewsInLayout(II)V

    .line 1344
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    .line 1345
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1264
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1273
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1267
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViews(II)V
    .locals 2
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1276
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewsInLayout(II)V
    .locals 2
    .parameter "start"
    .parameter "count"

    .prologue
    .line 1270
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 891
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 892
    .local v0, screen:I
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 893
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 894
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ScreenView;->snapToScreen(I)V

    .line 895
    const/4 v1, 0x1

    .line 899
    :goto_0
    return v1

    .line 897
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 899
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v1

    goto :goto_0
.end method

.method protected resetTransformation(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 1462
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1463
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1464
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1465
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 1466
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 1467
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 1468
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    .line 1469
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 1470
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setCameraDistance(F)V

    .line 1471
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1472
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1473
    return-void
.end method

.method public scrollTo(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 739
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollLeftBound:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollRightBound:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 740
    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mTouchX:F

    .line 741
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mSmoothingTime:F

    .line 742
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mTouchX:F

    float-to-int v0, v0

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 743
    return-void
.end method

.method public scrollToScreen(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 730
    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_0

    .line 731
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    .line 733
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mWidthMeasureSpec:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mHeightMeasureSpec:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ScreenView;->measure(II)V

    .line 734
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ScreenView;->scrollTo(II)V

    .line 735
    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 3
    .parameter "screenIndex"

    .prologue
    const/4 v2, 0x0

    .line 1207
    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_2

    .line 1208
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1209
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    .line 1214
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->setCurrentScreenInner(I)V

    .line 1215
    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mFirstLayout:Z

    if-nez v0, :cond_1

    .line 1216
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1217
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ScreenView;->scrollToScreen(I)V

    .line 1218
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->invalidate()V

    .line 1220
    :cond_1
    return-void

    .line 1211
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0
.end method

.method protected setCurrentScreenInner(I)V
    .locals 1
    .parameter "screenIndex"

    .prologue
    .line 1223
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/ScreenView;->updateSeekPoints(II)V

    .line 1224
    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    .line 1225
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    .line 1226
    return-void
.end method

.method public setMaximumSnapVelocity(I)V
    .locals 0
    .parameter "velocity"

    .prologue
    .line 172
    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mMaximumVelocity:I

    .line 173
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 1370
    iput-object p1, p0, Lcom/android/camera/ui/ScreenView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1371
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    .line 1372
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1373
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1372
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1375
    :cond_0
    return-void
.end method

.method public setOverScrollRatio(F)V
    .locals 0
    .parameter "ratio"

    .prologue
    .line 714
    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    .line 715
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->refreshScrollBound()V

    .line 716
    return-void
.end method

.method protected setTouchState(Landroid/view/MotionEvent;I)V
    .locals 5
    .parameter "ev"
    .parameter "touchState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 923
    iput p2, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    .line 925
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 926
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-nez v1, :cond_2

    .line 927
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    .line 928
    iput-boolean v3, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    .line 929
    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->recycle()V

    .line 952
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 925
    goto :goto_0

    .line 932
    :cond_2
    if-eqz p1, :cond_3

    .line 933
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    .line 937
    :cond_3
    iget-boolean v1, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    if-eqz v1, :cond_4

    .line 938
    iput-boolean v3, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    .line 942
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 943
    .local v0, currentScreen:Landroid/view/View;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 946
    .end local v0           #currentScreen:Landroid/view/View;
    :cond_4
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-ne v1, v2, :cond_0

    .line 947
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    .line 948
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchX:F

    .line 949
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x4e6e6b28

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mSmoothingTime:F

    goto :goto_1
.end method

.method public snapToScreen(I)V
    .locals 1
    .parameter "whichScreen"

    .prologue
    const/4 v0, 0x0

    .line 1136
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/camera/ui/ScreenView;->snapToScreen(IIZ)V

    .line 1137
    return-void
.end method

.method protected snapToScreen(IIZ)V
    .locals 9
    .parameter "whichScreen"
    .parameter "velocity"
    .parameter "settle"

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1140
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    if-gtz v0, :cond_0

    .line 1178
    :goto_0
    return-void

    .line 1144
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_4

    .line 1145
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    .line 1146
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    rem-int/2addr v1, v4

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    .line 1151
    :goto_1
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1152
    .local v7, screenDelta:I
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1153
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1156
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1158
    if-eqz p3, :cond_5

    .line 1159
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollInterpolator:Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {v0, v7, p2}, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;->setDistance(II)V

    .line 1164
    :goto_2
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    sub-int v6, v0, v1

    .line 1165
    .local v6, newX:I
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    sub-int v3, v6, v0

    .line 1166
    .local v3, delta:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenSnapDuration:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    div-int v5, v0, v1

    .line 1167
    .local v5, duration:I
    if-lez p2, :cond_2

    .line 1168
    int-to-float v0, v5

    int-to-float v1, p2

    const v4, 0x451c4000

    div-float/2addr v1, v4

    div-float/2addr v0, v1

    const v1, 0x3ecccccd

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v5, v0

    .line 1172
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSnapDuration:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1173
    if-gt v7, v8, :cond_3

    .line 1174
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSnapDuration:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1176
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1177
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->invalidate()V

    goto/16 :goto_0

    .line 1148
    .end local v3           #delta:I
    .end local v5           #duration:I
    .end local v6           #newX:I
    .end local v7           #screenDelta:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    goto :goto_1

    .line 1161
    .restart local v7       #screenDelta:I
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollInterpolator:Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;->disableSettle()V

    goto :goto_2
.end method

.method protected updateChildStaticTransformation(Landroid/view/View;)V
    .locals 10
    .parameter

    .prologue
    const v9, 0x459c4000

    const/high16 v5, 0x4000

    const v8, 0x3e99999a

    const/high16 v7, 0x3f80

    const/4 v1, 0x0

    .line 1475
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1476
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    .line 1477
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    .line 1478
    div-float v4, v0, v5

    .line 1479
    div-float v5, v2, v5

    .line 1480
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v3, v6

    sub-float/2addr v3, v4

    div-float/2addr v3, v0

    .line 1481
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mScreenTransitionType:I

    packed-switch v6, :pswitch_data_0

    .line 1598
    :goto_0
    :pswitch_0
    return-void

    .line 1483
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1486
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1489
    :pswitch_3
    cmpl-float v0, v3, v1

    if-eqz v0, :cond_0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v7

    if-lez v0, :cond_1

    .line 1490
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1493
    :cond_1
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v7, v0

    const v2, 0x3f333333

    mul-float/2addr v0, v2

    add-float/2addr v0, v8

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1494
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1495
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1496
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 1497
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleY(F)V

    .line 1498
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1499
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1500
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 1501
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    .line 1502
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    .line 1503
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setCameraDistance(F)V

    goto :goto_0

    .line 1506
    :pswitch_4
    cmpl-float v0, v3, v1

    if-eqz v0, :cond_2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v7

    if-lez v0, :cond_3

    .line 1507
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1510
    :cond_3
    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 1511
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1512
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1513
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 1514
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleY(F)V

    .line 1515
    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotX(F)V

    .line 1516
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 1517
    neg-float v0, v3

    const/high16 v2, 0x41f0

    mul-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 1518
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    .line 1519
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    .line 1520
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setCameraDistance(F)V

    goto :goto_0

    .line 1523
    :pswitch_5
    cmpl-float v2, v3, v1

    if-eqz v2, :cond_4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_5

    .line 1524
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1527
    :cond_5
    invoke-virtual {p1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 1528
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1529
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1530
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 1531
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleY(F)V

    .line 1532
    cmpg-float v2, v3, v1

    if-gez v2, :cond_6

    move v0, v1

    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 1533
    invoke-virtual {p1, v5}, Landroid/view/View;->setPivotY(F)V

    .line 1534
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 1535
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    .line 1536
    const/high16 v0, -0x3d4c

    mul-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 1537
    invoke-virtual {p1, v9}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1540
    :pswitch_6
    cmpl-float v2, v3, v1

    if-eqz v2, :cond_7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_8

    .line 1541
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1544
    :cond_8
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v7, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1545
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1546
    mul-float v2, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v0, v4

    mul-float/2addr v0, v8

    sub-float v0, v2, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1547
    mul-float v0, v8, v3

    add-float/2addr v0, v7

    .line 1548
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1549
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1550
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1551
    invoke-virtual {p1, v5}, Landroid/view/View;->setPivotY(F)V

    .line 1552
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 1553
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    .line 1554
    const/high16 v0, 0x4234

    neg-float v1, v3

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 1555
    invoke-virtual {p1, v9}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1560
    :pswitch_7
    cmpg-float v4, v3, v1

    if-gtz v4, :cond_9

    .line 1561
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1564
    :cond_9
    sub-float v4, v7, v3

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1565
    const v4, 0x3f19999a

    const v5, 0x3ecccccd

    sub-float v3, v7, v3

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    .line 1566
    sub-float v4, v7, v3

    mul-float/2addr v0, v4

    const/high16 v4, 0x4040

    mul-float/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1567
    sub-float v0, v7, v3

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f00

    mul-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1568
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 1569
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 1570
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1571
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1572
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 1573
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    .line 1574
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    .line 1575
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1578
    :pswitch_8
    cmpl-float v2, v3, v1

    if-eqz v2, :cond_a

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_b

    .line 1579
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1582
    :cond_b
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v7, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1583
    mul-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1584
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1585
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 1586
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleY(F)V

    .line 1587
    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotX(F)V

    .line 1588
    invoke-virtual {p1, v5}, Landroid/view/View;->setPivotY(F)V

    .line 1589
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 1590
    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    .line 1591
    const/high16 v0, 0x42b4

    neg-float v1, v3

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 1592
    invoke-virtual {p1, v9}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1595
    :pswitch_9
    invoke-virtual {p0, p1, v3}, Lcom/android/camera/ui/ScreenView;->updateChildStaticTransformationByScreen(Landroid/view/View;F)V

    goto/16 :goto_0

    .line 1481
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected updateChildStaticTransformationByScreen(Landroid/view/View;F)V
    .locals 0
    .parameter "child"
    .parameter "interpolation"

    .prologue
    .line 1601
    return-void
.end method
