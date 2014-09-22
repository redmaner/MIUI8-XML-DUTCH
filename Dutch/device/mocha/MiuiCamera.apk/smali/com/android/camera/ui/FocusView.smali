.class public Lcom/android/camera/ui/FocusView;
.super Landroid/view/View;
.source "FocusView.java"

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;
.implements Lcom/android/camera/ui/Rotatable;
.implements Lcom/android/camera/ui/V6FunctionUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FocusView$ExposureView;
    }
.end annotation


# static fields
.field private static final BIG_LINE_WIDTH:I

.field private static final BIG_MAX_RADIUS:I

.field public static final BIG_RADIUS:I

.field private static final SMALL_LINE_WIDTH:I

.field private static final SMALL_MAX_RADIUS:I

.field private static final SMALL_RADIUS:I


# instance fields
.field private mBigAlpha:I

.field private mBigPaint:Landroid/graphics/Paint;

.field private mBigRadius:I

.field private mCenterX:I

.field private mCenterY:I

.field private mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

.field private mFailTime:J

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsDraw:Z

.field private mSmallAlpha:I

.field private mSmallLineWidth:I

.field private mSmallPaint:Landroid/graphics/Paint;

.field private mSmallRadius:I

.field private mStartTime:J

.field private mState:I

.field private mSuccessTime:J

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v1, 0x40c0

    const/high16 v2, 0x3fc0

    .line 37
    sget-boolean v0, Lcom/android/camera/Device;->IS_TABLET:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->SMALL_RADIUS:I

    .line 38
    sget-boolean v0, Lcom/android/camera/Device;->IS_TABLET:Z

    if-eqz v0, :cond_0

    const/high16 v1, 0x4100

    :cond_0
    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->SMALL_MAX_RADIUS:I

    .line 40
    sget-boolean v0, Lcom/android/camera/Device;->IS_TABLET:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x4270

    :goto_1
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    .line 41
    sget-boolean v0, Lcom/android/camera/Device;->IS_TABLET:Z

    if-eqz v0, :cond_3

    const/high16 v0, 0x428c

    :goto_2
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->BIG_MAX_RADIUS:I

    .line 43
    sget-boolean v0, Lcom/android/camera/Device;->IS_TABLET:Z

    if-eqz v0, :cond_4

    const/high16 v0, 0x4000

    :goto_3
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I

    .line 44
    sget-boolean v0, Lcom/android/camera/Device;->IS_TABLET:Z

    if-eqz v0, :cond_5

    :goto_4
    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->BIG_LINE_WIDTH:I

    return-void

    .line 37
    :cond_1
    const/high16 v0, 0x4080

    goto :goto_0

    .line 40
    :cond_2
    const/high16 v0, 0x4220

    goto :goto_1

    .line 41
    :cond_3
    const/high16 v0, 0x4248

    goto :goto_2

    :cond_4
    move v0, v2

    .line 43
    goto :goto_3

    .line 44
    :cond_5
    const/high16 v2, 0x3f80

    goto :goto_4
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    sget v0, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mBigRadius:I

    .line 64
    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_RADIUS:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallRadius:I

    .line 65
    const/16 v0, 0xb4

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    .line 66
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    .line 67
    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallLineWidth:I

    .line 68
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    .line 69
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    .line 70
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    .line 71
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    .line 192
    new-instance v0, Lcom/android/camera/ui/FocusView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FocusView$1;-><init>(Lcom/android/camera/ui/FocusView;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/camera/ui/FocusView;->BIG_LINE_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 92
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 93
    new-instance v0, Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;-><init>(Lcom/android/camera/ui/FocusView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/FocusView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/android/camera/ui/FocusView;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_MAX_RADIUS:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mBigRadius:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mSmallLineWidth:I

    return p1
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/ui/FocusView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/android/camera/ui/FocusView;->mFailTime:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/android/camera/ui/FocusView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/ui/FocusView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/ui/FocusView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->reset()V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/android/camera/ui/FocusView;->BIG_MAX_RADIUS:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/FocusView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/FocusView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/android/camera/ui/FocusView;->mSuccessTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/FocusView;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mSmallRadius:I

    return p1
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_RADIUS:I

    return v0
.end method

.method private clearMessages()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 261
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 263
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 264
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 265
    return-void
.end method

.method private getInterpolation(F)F
    .locals 1
    .parameter "t"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method private isDraw()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView$ExposureView;->isDraw()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 154
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 155
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/FocusView;->setPosition(II)V

    .line 156
    iput-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    .line 157
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 158
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 150
    return-void
.end method

.method public enableControls(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;->enableControls(Z)V

    .line 291
    return-void
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "what"
    .parameter "sender"
    .parameter "extra1"
    .parameter "extra2"

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraOpen()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView$ExposureView;->onCameraOpen()V

    .line 275
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView$ExposureView;->onCreate()V

    .line 270
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/16 v2, 0xff

    .line 162
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mSmallLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 166
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mBigRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 167
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mSmallRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;->onDraw(Landroid/graphics/Canvas;)V

    .line 170
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 176
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 177
    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    .line 178
    sub-int v0, p5, p3

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    .line 179
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/FocusView;->setPosition(II)V

    .line 180
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView$ExposureView;->onPause()V

    .line 286
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView$ExposureView;->onResume()V

    .line 280
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 281
    return-void
.end method

.method public onViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;->setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V

    .line 303
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/FocusView$ExposureView;->setOrientation(IZ)V

    .line 308
    return-void
.end method

.method public setPosition(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 187
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    .line 188
    iput p2, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    .line 189
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/FocusView$ExposureView;->setPosition(II)V

    .line 190
    return-void
.end method

.method public showFail()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    .line 132
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mState:I

    if-ne v1, v2, :cond_1

    .line 133
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    .line 134
    .local v0, animating:Z
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 135
    iput-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    .line 136
    iput v4, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 137
    if-eqz v0, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 140
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/ui/FocusView;->mFailTime:J

    .line 141
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 142
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const-wide/16 v3, 0x320

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 143
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 145
    .end local v0           #animating:Z
    :cond_1
    return-void
.end method

.method public showStart()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 98
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 99
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 100
    iput-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    .line 101
    sget v0, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mBigRadius:I

    .line 102
    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_RADIUS:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallRadius:I

    .line 103
    const/16 v0, 0xb4

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    .line 104
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    .line 105
    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallLineWidth:I

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mStartTime:J

    .line 107
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 108
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 109
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 110
    return-void
.end method

.method public showSuccess()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 114
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mState:I

    if-ne v1, v2, :cond_1

    .line 115
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    .line 116
    .local v0, animating:Z
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 117
    iput-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    .line 118
    iput v4, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 119
    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 122
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/ui/FocusView;->mSuccessTime:J

    .line 123
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 124
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const-wide/16 v3, 0x320

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 125
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 127
    .end local v0           #animating:Z
    :cond_1
    return-void
.end method
