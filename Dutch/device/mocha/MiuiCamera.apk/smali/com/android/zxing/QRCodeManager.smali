.class public Lcom/android/zxing/QRCodeManager;
.super Ljava/lang/Object;
.source "QRCodeManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/zxing/QRCodeManager$MyHander;,
        Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;
    }
.end annotation


# static fields
.field private static CENTER_FRAME_WIDTH:I

.field private static MAX_FRAME_HEIGHT:I

.field private static MAX_FRAME_WIDTH:I

.field private static mRectFinderCenter:Landroid/graphics/Rect;

.field private static mRectFinderFocusArea:Landroid/graphics/Rect;

.field private static mRectPreviewCenter:Landroid/graphics/Rect;

.field private static mRectPreviewFocusArea:Landroid/graphics/Rect;

.field private static sMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/android/zxing/QRCodeManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

.field private mFragment:Lcom/android/zxing/ui/QRCodeFragment;

.field private mHandler:Landroid/os/Handler;

.field private mIsScanQRCodeIntent:Z

.field private mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

.field private mNeedScan:Z

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewFormat:I

.field private mPreviewHeight:I

.field private mPreviewLayoutHeight:I

.field private mPreviewLayoutWidth:I

.field private mPreviewWidth:I

.field private mQRCodeFragmentLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

.field private mQRCodeViewFindertLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

.field private mResult:Ljava/lang/String;

.field private mType:Lcom/android/zxing/QRCodeType;

.field private mUIInitialized:Z

.field private mViewFinderButton:Landroid/widget/TextView;

.field private mViewFinderFrame:Landroid/view/ViewGroup;

.field private mViewFinderText:Landroid/widget/TextView;

.field private mViewFinderView:Lcom/android/zxing/ui/ViewFinderView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 34
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v2, Lcom/android/zxing/QRCodeManager;->sMap:Ljava/util/WeakHashMap;

    .line 39
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v2, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    .line 40
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v2, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    .line 41
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v2, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    .line 42
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v2, Lcom/android/zxing/QRCodeManager;->mRectFinderCenter:Landroid/graphics/Rect;

    .line 71
    const/16 v2, 0x168

    sput v2, Lcom/android/zxing/QRCodeManager;->MAX_FRAME_HEIGHT:I

    .line 72
    const/16 v2, 0x1e0

    sput v2, Lcom/android/zxing/QRCodeManager;->MAX_FRAME_WIDTH:I

    .line 73
    const/16 v2, 0x2d0

    sput v2, Lcom/android/zxing/QRCodeManager;->CENTER_FRAME_WIDTH:I

    .line 76
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 77
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 79
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 80
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lcom/android/zxing/QRCodeManager;->CENTER_FRAME_WIDTH:I

    .line 81
    sget v2, Lcom/android/zxing/QRCodeManager;->CENTER_FRAME_WIDTH:I

    sput v2, Lcom/android/zxing/QRCodeManager;->MAX_FRAME_HEIGHT:I

    .line 82
    sget v2, Lcom/android/zxing/QRCodeManager;->CENTER_FRAME_WIDTH:I

    sput v2, Lcom/android/zxing/QRCodeManager;->MAX_FRAME_WIDTH:I

    .line 83
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x11

    iput v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewFormat:I

    .line 60
    sget-object v0, Lcom/android/zxing/QRCodeType;->NONE:Lcom/android/zxing/QRCodeType;

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mType:Lcom/android/zxing/QRCodeType;

    .line 85
    new-instance v0, Lcom/android/zxing/QRCodeManager$1;

    invoke-direct {v0, p0}, Lcom/android/zxing/QRCodeManager$1;-><init>(Lcom/android/zxing/QRCodeManager;)V

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 215
    return-void
.end method

.method static synthetic access$000(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/DecodeHandlerFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/zxing/QRCodeManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/zxing/QRCodeManager;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/zxing/QRCodeManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/zxing/QRCodeManager;->sendDecodeMessageSafe(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/zxing/QRCodeManager;)Landroid/hardware/Camera$PreviewCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/zxing/QRCodeManager;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/ui/ViewFinderView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderView:Lcom/android/zxing/ui/ViewFinderView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/zxing/QRCodeManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/zxing/QRCodeManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mIsScanQRCodeIntent:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/zxing/QRCodeManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/zxing/QRCodeManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/zxing/QRCodeManager;->mResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/zxing/QRCodeManager;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/zxing/QRCodeManager;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/zxing/QRCodeManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->scanQRCodeEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/zxing/QRCodeManager;)Lcom/android/zxing/QRCodeType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mType:Lcom/android/zxing/QRCodeType;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/zxing/QRCodeManager;Lcom/android/zxing/QRCodeType;)Lcom/android/zxing/QRCodeType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/zxing/QRCodeManager;->mType:Lcom/android/zxing/QRCodeType;

    return-object p1
.end method

.method private hide()Z
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/zxing/QRCodeManager;->isFragmentShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mQRCodeFragmentLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    invoke-virtual {v0}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->hide()V

    .line 141
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 235
    sget-object v1, Lcom/android/zxing/QRCodeManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/zxing/QRCodeManager;

    .line 236
    .local v0, instance:Lcom/android/zxing/QRCodeManager;
    if-nez v0, :cond_0

    .line 237
    new-instance v0, Lcom/android/zxing/QRCodeManager;

    .end local v0           #instance:Lcom/android/zxing/QRCodeManager;
    invoke-direct {v0}, Lcom/android/zxing/QRCodeManager;-><init>()V

    .line 238
    .restart local v0       #instance:Lcom/android/zxing/QRCodeManager;
    sget-object v1, Lcom/android/zxing/QRCodeManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_0
    return-object v0
.end method

.method public static removeInstance(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 244
    sget-object v1, Lcom/android/zxing/QRCodeManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/zxing/QRCodeManager;

    .line 245
    .local v0, instance:Lcom/android/zxing/QRCodeManager;
    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->onPause()V

    .line 248
    :cond_0
    return-void
.end method

.method private scanQRCodeEnabled()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mUIInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

    invoke-interface {v0}, Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;->scanQRCodeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/zxing/QRCodeManager;->isFragmentShow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendDecodeMessageSafe(I)V
    .locals 4
    .parameter "delay"

    .prologue
    const v3, 0x7f0c0007

    .line 228
    iget-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mNeedScan:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mUIInitialized:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 230
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    int-to-long v1, p1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 232
    :cond_0
    return-void
.end method

.method private show()V
    .locals 3

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mUIInitialized:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mFragment:Lcom/android/zxing/ui/QRCodeFragment;

    iget-object v1, p0, Lcom/android/zxing/QRCodeManager;->mType:Lcom/android/zxing/QRCodeType;

    iget-object v2, p0, Lcom/android/zxing/QRCodeManager;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/zxing/ui/QRCodeFragment;->initialize(Lcom/android/zxing/QRCodeType;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mQRCodeFragmentLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    invoke-virtual {v0}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->show()V

    .line 114
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 116
    :cond_0
    return-void
.end method

.method private updateRectInPreview()V
    .locals 7

    .prologue
    .line 338
    iget v2, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    if-nez v2, :cond_0

    .line 351
    :goto_0
    return-void

    .line 339
    :cond_0
    iget v2, p0, Lcom/android/zxing/QRCodeManager;->mPreviewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 340
    .local v1, scaleWidth:F
    iget v2, p0, Lcom/android/zxing/QRCodeManager;->mPreviewHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 341
    .local v0, scaleHeight:F
    sget-object v2, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    sget-object v4, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    sget-object v5, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    sget-object v6, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 346
    sget-object v2, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/zxing/QRCodeManager;->mRectFinderCenter:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    sget-object v4, Lcom/android/zxing/QRCodeManager;->mRectFinderCenter:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    sget-object v5, Lcom/android/zxing/QRCodeManager;->mRectFinderCenter:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    sget-object v6, Lcom/android/zxing/QRCodeManager;->mRectFinderCenter:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public buildLuminanceSource([BIIZ)Lcom/android/zxing/YUVLuminanceSource;
    .locals 8
    .parameter "data"
    .parameter "width"
    .parameter "height"
    .parameter "center"

    .prologue
    .line 398
    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewFormat:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1

    .line 399
    if-eqz p4, :cond_0

    sget-object v0, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    new-instance v0, Lcom/android/zxing/YUVLuminanceSource;

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/zxing/YUVLuminanceSource;-><init>([BIIIIII)V

    .line 410
    :goto_0
    return-object v0

    .line 403
    :cond_0
    sget-object v0, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/zxing/QRCodeManager;->mRectPreviewCenter:Landroid/graphics/Rect;

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 405
    new-instance v0, Lcom/android/zxing/YUVLuminanceSource;

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    sget-object v1, Lcom/android/zxing/QRCodeManager;->mRectPreviewFocusArea:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/zxing/YUVLuminanceSource;-><init>([BIIIIII)V

    goto :goto_0

    .line 410
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getViewFinderRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 379
    sget-object v0, Lcom/android/zxing/QRCodeManager;->mRectFinderCenter:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hideViewFinderFrame()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 122
    :cond_0
    return-void
.end method

.method public isFragmentShow()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 147
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager;->mQRCodeFragmentLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/zxing/QRCodeManager;->mQRCodeFragmentLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    invoke-virtual {v1}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mFragment:Lcom/android/zxing/ui/QRCodeFragment;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mFragment:Lcom/android/zxing/ui/QRCodeFragment;

    invoke-virtual {v0}, Lcom/android/zxing/ui/QRCodeFragment;->onBackPressed()V

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->hide()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 100
    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->show()V

    .line 101
    return-void
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Looper;Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;Z)V
    .locals 4
    .parameter "activity"
    .parameter "looper"
    .parameter "listener"
    .parameter "isScanQRCodeIntent"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 254
    iput-object p1, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    .line 255
    iput-object p3, p0, Lcom/android/zxing/QRCodeManager;->mListener:Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;

    .line 256
    new-instance v0, Lcom/android/zxing/QRCodeManager$MyHander;

    invoke-direct {v0, p0, p2}, Lcom/android/zxing/QRCodeManager$MyHander;-><init>(Lcom/android/zxing/QRCodeManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    .line 257
    iput-boolean p4, p0, Lcom/android/zxing/QRCodeManager;->mIsScanQRCodeIntent:Z

    .line 259
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c0015

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/zxing/ui/QRCodeFragmentLayout;

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mQRCodeFragmentLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    .line 260
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/zxing/ui/QRCodeFragmentLayout;

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mQRCodeViewFindertLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    .line 261
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mQRCodeViewFindertLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    const v1, 0x7f0c0018

    invoke-virtual {v0, v1}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/zxing/ui/ViewFinderView;

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderView:Lcom/android/zxing/ui/ViewFinderView;

    .line 262
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mQRCodeViewFindertLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    const v1, 0x7f0c0019

    invoke-virtual {v0, v1}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    .line 263
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mQRCodeViewFindertLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    const v1, 0x7f0c001a

    invoke-virtual {v0, v1}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderText:Landroid/widget/TextView;

    .line 264
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mQRCodeViewFindertLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    const v1, 0x7f0c001b

    invoke-virtual {v0, v1}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderButton:Landroid/widget/TextView;

    .line 265
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/zxing/ui/QRCodeFragment;

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mFragment:Lcom/android/zxing/ui/QRCodeFragment;

    .line 269
    iget-boolean v0, p0, Lcom/android/zxing/QRCodeManager;->mIsScanQRCodeIntent:Z

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mQRCodeViewFindertLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    invoke-virtual {v0, v2}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->setDispatchTouchEvent(Z)V

    .line 271
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderView:Lcom/android/zxing/ui/ViewFinderView;

    invoke-virtual {v0, v2}, Lcom/android/zxing/ui/ViewFinderView;->setVisibility(I)V

    .line 275
    :goto_0
    iput-boolean v3, p0, Lcom/android/zxing/QRCodeManager;->mUIInitialized:Z

    .line 276
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mQRCodeViewFindertLayout:Lcom/android/zxing/ui/QRCodeFragmentLayout;

    invoke-virtual {v0, v3}, Lcom/android/zxing/ui/QRCodeFragmentLayout;->setDispatchTouchEvent(Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 373
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->removeInstance(Landroid/content/Context;)V

    .line 374
    iput-object v1, p0, Lcom/android/zxing/QRCodeManager;->mActivity:Landroid/app/Activity;

    .line 375
    iput-object v1, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    .line 376
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 354
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    const v1, 0x7f0c0006

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 356
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    const v1, 0x7f0c0007

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 357
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mViewFinderFrame:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    invoke-virtual {v0}, Lcom/android/zxing/DecodeHandlerFactory;->quit()V

    .line 366
    :cond_2
    iput-object v2, p0, Lcom/android/zxing/QRCodeManager;->mDecodeHandlerFactory:Lcom/android/zxing/DecodeHandlerFactory;

    .line 367
    iput-object v2, p0, Lcom/android/zxing/QRCodeManager;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 368
    iput-object v2, p0, Lcom/android/zxing/QRCodeManager;->mResult:Ljava/lang/String;

    .line 369
    sget-object v0, Lcom/android/zxing/QRCodeType;->NONE:Lcom/android/zxing/QRCodeType;

    iput-object v0, p0, Lcom/android/zxing/QRCodeManager;->mType:Lcom/android/zxing/QRCodeType;

    .line 370
    return-void
.end method

.method public requestDecode()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/zxing/QRCodeManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 392
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/zxing/QRCodeManager;->sendDecodeMessageSafe(I)V

    .line 394
    :cond_0
    return-void
.end method

.method public setCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 0
    .parameter "cameraDevice"

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/zxing/QRCodeManager;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 287
    return-void
.end method

.method public setPreviewLayoutSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 290
    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    if-eq v0, p2, :cond_1

    .line 291
    :cond_0
    iput p1, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    .line 292
    iput p2, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    .line 293
    invoke-virtual {p0}, Lcom/android/zxing/QRCodeManager;->updateViewFinderRect()V

    .line 295
    :cond_1
    return-void
.end method

.method public updateViewFinderRect()V
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/zxing/QRCodeManager;->updateViewFinderRect(Landroid/graphics/Point;)V

    .line 335
    return-void
.end method

.method public updateViewFinderRect(Landroid/graphics/Point;)V
    .locals 9
    .parameter "area"

    .prologue
    const/4 v8, 0x0

    .line 310
    iget v6, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    sget v7, Lcom/android/zxing/QRCodeManager;->CENTER_FRAME_WIDTH:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 311
    .local v5, width:I
    iget v6, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    sget v7, Lcom/android/zxing/QRCodeManager;->CENTER_FRAME_WIDTH:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 312
    .local v1, height:I
    const/4 v2, 0x0

    .local v2, left:I
    const/4 v4, 0x0

    .local v4, top:I
    const/4 v3, 0x0

    .local v3, right:I
    const/4 v0, 0x0

    .line 313
    .local v0, bottom:I
    iget v6, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    sub-int/2addr v6, v5

    div-int/lit8 v2, v6, 0x2

    .line 314
    iget v6, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    sub-int/2addr v6, v1

    div-int/lit8 v4, v6, 0x2

    .line 315
    add-int v3, v2, v5

    .line 316
    add-int v0, v4, v1

    .line 317
    sget-object v6, Lcom/android/zxing/QRCodeManager;->mRectFinderCenter:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 319
    if-eqz p1, :cond_0

    .line 320
    iget v6, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    sget v7, Lcom/android/zxing/QRCodeManager;->MAX_FRAME_WIDTH:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 321
    iget v6, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    sget v7, Lcom/android/zxing/QRCodeManager;->MAX_FRAME_HEIGHT:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 322
    iget v6, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 323
    iget v6, p1, Landroid/graphics/Point;->y:I

    div-int/lit8 v7, v1, 0x2

    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 324
    iget v6, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v5, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 325
    iget v6, p1, Landroid/graphics/Point;->y:I

    div-int/lit8 v7, v1, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/zxing/QRCodeManager;->mPreviewLayoutHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 326
    sget-object v6, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 330
    :goto_0
    invoke-direct {p0}, Lcom/android/zxing/QRCodeManager;->updateRectInPreview()V

    .line 331
    return-void

    .line 328
    :cond_0
    sget-object v6, Lcom/android/zxing/QRCodeManager;->mRectFinderFocusArea:Landroid/graphics/Rect;

    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method
