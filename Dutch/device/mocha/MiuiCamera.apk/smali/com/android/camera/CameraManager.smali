.class public Lcom/android/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraManager$1;,
        Lcom/android/camera/CameraManager$CameraProxy;,
        Lcom/android/camera/CameraManager$CameraHandler;
    }
.end annotation


# static fields
.field private static sCameraManager:Lcom/android/camera/CameraManager;


# instance fields
.field private mCamera:Lcom/android/camera/hardware/CameraHardware;

.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;

.field private mFlashOn:Z

.field private mFocusPostion:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mReconnectException:Ljava/io/IOException;

.field private mSig:Landroid/os/ConditionVariable;

.field private mWBCT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/android/camera/CameraManager;

    invoke-direct {v0}, Lcom/android/camera/CameraManager;-><init>()V

    sput-object v0, Lcom/android/camera/CameraManager;->sCameraManager:Lcom/android/camera/CameraManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;

    .line 109
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, ht:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 111
    new-instance v1, Lcom/android/camera/CameraManager$CameraHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/CameraManager$CameraHandler;-><init>(Lcom/android/camera/CameraManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/CameraManager;)Lcom/android/camera/hardware/CameraHardware;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/CameraManager;Lcom/android/camera/hardware/CameraHardware;)Lcom/android/camera/hardware/CameraHardware;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$CameraProxy;)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/CameraManager;)Ljava/io/IOException;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/CameraManager;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/camera/CameraManager;->mReconnectException:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/CameraManager;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/CameraManager;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/camera/CameraManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/camera/CameraManager;->mFlashOn:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/camera/CameraManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/android/camera/CameraManager;->mFocusPostion:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/camera/CameraManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/android/camera/CameraManager;->mWBCT:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/CameraManager;)Landroid/os/ConditionVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mSig:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/CameraManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static instance()Lcom/android/camera/CameraManager;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/camera/CameraManager;->sCameraManager:Lcom/android/camera/CameraManager;

    return-object v0
.end method


# virtual methods
.method cameraOpen(I)Lcom/android/camera/CameraManager$CameraProxy;
    .locals 2
    .parameter "cameraId"

    .prologue
    const/4 v0, 0x0

    .line 281
    invoke-static {p1}, Lcom/android/camera/hardware/CameraHardware;->open(I)Lcom/android/camera/hardware/CameraHardware;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;

    .line 282
    iget-object v1, p0, Lcom/android/camera/CameraManager;->mCamera:Lcom/android/camera/hardware/CameraHardware;

    if-eqz v1, :cond_0

    .line 283
    new-instance v1, Lcom/android/camera/CameraManager$CameraProxy;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/CameraManager$CameraProxy;-><init>(Lcom/android/camera/CameraManager;Lcom/android/camera/CameraManager$1;)V

    iput-object v1, p0, Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;

    .line 284
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;

    .line 286
    :cond_0
    return-object v0
.end method

.method public getStashParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method
