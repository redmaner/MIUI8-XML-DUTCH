.class public Lcom/android/camera/ui/V6ShutterButtonAudioSound;
.super Landroid/widget/ImageView;
.source "V6ShutterButtonAudioSound.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;


# static fields
.field private static final LINE_WIDTH:I


# instance fields
.field private mAlpha:I

.field private mCurrentRadius:I

.field private mDelta:I

.field private mHandler:Landroid/os/Handler;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxRadius:I

.field private mMinRadius:I

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:I

.field private mStartRadius:I

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/android/camera/Device;->IS_TABLET:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x4000

    :goto_0
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->LINE_WIDTH:I

    return-void

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mAlpha:I

    .line 129
    new-instance v0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;-><init>(Lcom/android/camera/ui/V6ShutterButtonAudioSound;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mHandler:Landroid/os/Handler;

    .line 40
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/V6ShutterButtonAudioSound;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/camera/ui/V6ShutterButtonAudioSound;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mCurrentRadius:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/ui/V6ShutterButtonAudioSound;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mStartRadius:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/V6ShutterButtonAudioSound;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mMaxRadius:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/V6ShutterButtonAudioSound;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/ui/V6ShutterButtonAudioSound;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    iput p1, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mAlpha:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/ui/V6ShutterButtonAudioSound;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getInterpolation(F)F
    .locals 1
    .parameter "t"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public enableControls(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 109
    return-void
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "what"
    .parameter "sender"
    .parameter "extra1"
    .parameter "extra2"

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->setVisibility(I)V

    .line 75
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/16 v2, 0xff

    .line 113
    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mProgress:I

    if-lez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mPaint:Landroid/graphics/Paint;

    .line 116
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->LINE_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mAlpha:I

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mCurrentRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 123
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 70
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mProgress:I

    .line 94
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->setVisibility(I)V

    .line 95
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mProgress:I

    .line 84
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->setVisibility(I)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->setVisibility(I)V

    goto :goto_0
.end method

.method public setAudioProgress(F)V
    .locals 5
    .parameter "progress"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    const/high16 v0, 0x42c8

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mProgress:I

    .line 45
    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mProgress:I

    if-gez v0, :cond_1

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mProgress:I

    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mMinRadius:I

    iget v1, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mDelta:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mStartRadius:I

    .line 54
    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mStartRadius:I

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mCurrentRadius:I

    .line 55
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mAlpha:I

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mStartTime:J

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 105
    return-void
.end method

.method public setRadius(II)V
    .locals 2
    .parameter "min"
    .parameter "max"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mMinRadius:I

    .line 63
    int-to-float v0, p2

    const v1, 0x3f59999a

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mMaxRadius:I

    .line 64
    iget v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mMaxRadius:I

    iget v1, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mMinRadius:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mDelta:I

    .line 65
    return-void
.end method
