.class public Lcom/android/camera/module/CameraModule;
.super Lcom/android/camera/module/BaseModule;
.source "CameraModule.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;
.implements Lcom/android/camera/FocusManager$Listener;
.implements Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;,
        Lcom/android/camera/module/CameraModule$AutoFocusCallback;,
        Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;,
        Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;,
        Lcom/android/camera/module/CameraModule$JpegPictureCallback;,
        Lcom/android/camera/module/CameraModule$RawPictureCallback;,
        Lcom/android/camera/module/CameraModule$PostViewPictureCallback;,
        Lcom/android/camera/module/CameraModule$ShutterCallback;,
        Lcom/android/camera/module/CameraModule$MainHandler;,
        Lcom/android/camera/module/CameraModule$CameraStartUpThread;
    }
.end annotation


# static fields
.field protected static final BURST_SHOTTING_COUNT:I


# instance fields
.field private mAeLockSupported:Z

.field protected mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

.field private final mAutoFocusCallback:Lcom/android/camera/module/CameraModule$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;

.field public mAutoFocusTime:J

.field private mAwbLockSupported:Z

.field private mBurstShotTitle:Ljava/lang/String;

.field private mCameraDisplayOrientation:I

.field private mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

.field protected volatile mCameraState:I

.field public mCaptureStartTime:J

.field private mContinousFocusSupported:Z

.field private mCropValue:Ljava/lang/String;

.field private mDidRegister:Z

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private mDoCaptureRetry:I

.field private mDoSnapRunnable:Ljava/lang/Runnable;

.field private mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

.field protected mFaceDetectionEnabled:Z

.field private mFaceDetectionStarted:Z

.field private mFirstTimeInitialized:Z

.field private mFocusAreaSupported:Z

.field protected mFocusManager:Lcom/android/camera/FocusManager;

.field private mFocusStartTime:J

.field protected mFoundFace:Z

.field protected final mHandler:Landroid/os/Handler;

.field private mImageSaver:Lcom/android/camera/storage/ImageSaver;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mIsCaptureAfterLaunch:Z

.field protected mIsImageCaptureIntent:Z

.field mIsRecreateCameraScreenNail:Z

.field private mIsSaveCaptureImage:Z

.field protected mIsZSLMode:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegImageData:[B

.field private mJpegPictureCallbackTime:J

.field private mJpegRotation:I

.field private mLastShutterButtounClickTime:J

.field private mMediaProviderClient:Landroid/content/ContentProviderClient;

.field private mMeteringAreaSupported:Z

.field private mMotionFocusListener:Lcom/android/camera/MotionFocusManager$MotionFocusListener;

.field protected mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

.field protected mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

.field protected mMultiSnapStatus:Z

.field protected mMutliSnapStopRequest:Z

.field private mOnResumeTime:J

.field private mPendingCapture:Z

.field public mPictureDisplayedToJpegCallbackTime:J

.field private final mPostViewPictureCallback:Lcom/android/camera/module/CameraModule$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field protected mQuickCapture:Z

.field private final mRawPictureCallback:Lcom/android/camera/module/CameraModule$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field protected mReceivedJpegCallbackNum:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveUri:Landroid/net/Uri;

.field protected mSceneMode:Ljava/lang/String;

.field private final mShutterCallback:Lcom/android/camera/module/CameraModule$ShutterCallback;

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field public mShutterToPictureDisplayedTime:J

.field private mSnapshotOnIdle:Z

.field private mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

.field protected mTotalJpegCallbackNum:I

.field private mUpdateSet:I

.field private mUpdateSettingView:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 264
    invoke-static {}, Lcom/android/camera/Device;->getBurstShootCount()I

    move-result v0

    sput v0, Lcom/android/camera/module/CameraModule;->BURST_SHOTTING_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    .line 111
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    .line 112
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 113
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    .line 153
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I

    .line 189
    new-instance v0, Lcom/android/camera/module/CameraModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/CameraModule$1;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 225
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    .line 226
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    .line 228
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mDidRegister:Z

    .line 230
    new-instance v0, Lcom/android/camera/module/CameraModule$ShutterCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$ShutterCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mShutterCallback:Lcom/android/camera/module/CameraModule$ShutterCallback;

    .line 231
    new-instance v0, Lcom/android/camera/module/CameraModule$PostViewPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$PostViewPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mPostViewPictureCallback:Lcom/android/camera/module/CameraModule$PostViewPictureCallback;

    .line 233
    new-instance v0, Lcom/android/camera/module/CameraModule$RawPictureCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$RawPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallback:Lcom/android/camera/module/CameraModule$RawPictureCallback;

    .line 235
    new-instance v0, Lcom/android/camera/module/CameraModule$AutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$AutoFocusCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mAutoFocusCallback:Lcom/android/camera/module/CameraModule$AutoFocusCallback;

    .line 237
    new-instance v0, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mAutoFocusMoveCallback:Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;

    .line 260
    new-instance v0, Lcom/android/camera/module/CameraModule$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/CameraModule$MainHandler;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    .line 267
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    .line 268
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMutliSnapStopRequest:Z

    .line 272
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    .line 590
    new-instance v0, Lcom/android/camera/module/CameraModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/CameraModule$2;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1288
    new-instance v0, Lcom/android/camera/module/CameraModule$3;

    invoke-direct {v0, p0}, Lcom/android/camera/module/CameraModule$3;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mUpdateSettingView:Ljava/lang/Runnable;

    .line 2928
    new-instance v0, Lcom/android/camera/module/CameraModule$6;

    invoke-direct {v0, p0}, Lcom/android/camera/module/CameraModule$6;-><init>(Lcom/android/camera/module/CameraModule;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mMotionFocusListener:Lcom/android/camera/MotionFocusManager$MotionFocusListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/module/CameraModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setDisplayOrientation()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->initializeAfterCameraOpen()V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$CameraStartUpThread;)Lcom/android/camera/module/CameraModule$CameraStartUpThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->onSettingsBack()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->takeAPhotoIfNeeded()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/module/CameraModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isShutterButtonClickable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/module/CameraModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I

    return v0
.end method

.method static synthetic access$1908(Lcom/android/camera/module/CameraModule;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/module/CameraModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/camera/module/CameraModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mPreviewHeight:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/camera/module/CameraModule;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->updateCameraScreenNailSize(II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/module/CameraModule;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->sendDoCaptureMessage(J)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/module/CameraModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$2402(Lcom/android/camera/module/CameraModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/android/camera/module/CameraModule;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->updateMutexModeUI(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/module/CameraModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$2602(Lcom/android/camera/module/CameraModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/android/camera/module/CameraModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$2702(Lcom/android/camera/module/CameraModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$2800(Lcom/android/camera/module/CameraModule;[BI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->writeImage([BI)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/module/CameraModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$2902(Lcom/android/camera/module/CameraModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3000(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->animateSlide()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/camera/module/CameraModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->getSuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/effect/renders/SnapshotEffectRender;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/storage/ImageSaver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/module/CameraModule;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/camera/module/CameraModule;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->showPostCaptureAlert()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->doAttach()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->handleMultiSnapDone()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/module/CameraModule$RawPictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallback:Lcom/android/camera/module/CameraModule$RawPictureCallback;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/camera/module/CameraModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$4400(Lcom/android/camera/module/CameraModule;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->switchToOtherMode(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->initializeCapabilities()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/module/CameraModule;)Landroid/os/ConditionVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->initializeFocusManager()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/module/CameraModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/android/camera/module/CameraModule;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/camera/module/CameraModule;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/android/camera/module/CameraModule;->mOnResumeTime:J

    return-wide p1
.end method

.method private animateCapture()V
    .locals 2

    .prologue
    .line 2804
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 2805
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    .line 2807
    :cond_0
    return-void
.end method

.method private animateHold()V
    .locals 2

    .prologue
    .line 2792
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 2793
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateHold(I)V

    .line 2795
    :cond_0
    return-void
.end method

.method private animateSlide()V
    .locals 1

    .prologue
    .line 2798
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 2799
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateSlide()V

    .line 2801
    :cond_0
    return-void
.end method

.method private canTakePicture()Z
    .locals 1

    .prologue
    .line 1969
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->isLowStorageSpace()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2116
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 2117
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 2118
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 2119
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 2120
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 2121
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 2122
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->addRawImageCallbackBuffer([B)V

    .line 2123
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->removeAllAsyncMessage()V

    .line 2124
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 2125
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    .line 2126
    iput-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 2127
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 2128
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onCameraReleased()V

    .line 2130
    :cond_0
    return-void
.end method

.method private doAttach()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 1470
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1543
    :goto_0
    return-void

    .line 1473
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    .line 1474
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    invoke-static {v2}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v2

    .line 1475
    iget-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mIsSaveCaptureImage:Z

    if-eqz v3, :cond_1

    .line 1476
    invoke-direct {p0, v1}, Lcom/android/camera/module/CameraModule;->saveJpegData([B)V

    .line 1478
    :cond_1
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mCropValue:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1483
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v3, :cond_2

    .line 1486
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1487
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1488
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1490
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->setResult(I)V

    .line 1491
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1495
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1492
    :catch_0
    move-exception v1

    .line 1495
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 1498
    :cond_2
    const v0, 0xc800

    invoke-static {v1, v0}, Lcom/android/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1499
    invoke-static {v0, v2}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1500
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "inline-data"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 1502
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0

    .line 1509
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const-string v3, "crop-temp"

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1510
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1511
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const-string v4, "crop-temp"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/Camera;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 1512
    :try_start_3
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1513
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1514
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .line 1524
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1526
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1527
    const-string v2, "circle"

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mCropValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1528
    const-string v2, "circleCrop"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    :cond_4
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_5

    .line 1531
    const-string v2, "output"

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1536
    :goto_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1538
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1539
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1541
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1515
    :catch_1
    move-exception v1

    .line 1516
    :try_start_4
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->setResult(I)V

    .line 1517
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->finish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1524
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 1519
    :catch_2
    move-exception v1

    .line 1520
    :try_start_5
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->setResult(I)V

    .line 1521
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->finish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1524
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 1533
    :cond_5
    const-string v2, "return-data"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 1524
    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    .line 1495
    :catchall_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_1
.end method

.method private getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->getSuffix()Ljava/lang/String;

    move-result-object v0

    .line 1024
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private handleMultiSnapDone()V
    .locals 2

    .prologue
    .line 1685
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->animateCapture()V

    .line 1686
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelPicture()V

    .line 1687
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->restoreStatusAfterBurst()V

    .line 1688
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/module/CameraModule$5;

    invoke-direct {v1, p0}, Lcom/android/camera/module/CameraModule$5;-><init>(Lcom/android/camera/module/CameraModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1702
    return-void
.end method

.method private hideLoadUI(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 1190
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getCaptureProgressBar()Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1191
    return-void

    .line 1190
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hidePostCaptureAlert()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2662
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 2663
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->ingoreTouchEvent(Z)V

    .line 2664
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->show()V

    .line 2665
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->show()V

    .line 2666
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/camera/ui/V6ShutterButton;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 2667
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getTopControlPanel()Lcom/android/camera/ui/V6TopControlPanel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6TopControlPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 2668
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 2671
    :cond_0
    return-void
.end method

.method private initializeAfterCameraOpen()V
    .locals 2

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setPreviewFrameLayoutAspectRatio()V

    .line 475
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeZoom()V

    .line 476
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeExposureCompensation()V

    .line 477
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->showTapToFocusToastIfNeeded()V

    .line 478
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/zxing/QRCodeManager;->setCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)V

    .line 479
    return-void
.end method

.method private initializeCapabilities()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2840
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 2841
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "auto"

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    .line 2844
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    .line 2845
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mAeLockSupported:Z

    .line 2846
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mAwbLockSupported:Z

    .line 2847
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mContinousFocusSupported:Z

    .line 2849
    return-void

    :cond_0
    move v0, v2

    .line 2841
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2844
    goto :goto_1
.end method

.method private initializeFirstTime()V
    .locals 4

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 505
    :goto_0
    return-void

    .line 499
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->keepMediaProviderInstance()V

    .line 501
    new-instance v0, Lcom/android/camera/storage/ImageSaver;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/storage/ImageSaver;-><init>(Lcom/android/camera/ActivityBase;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    .line 502
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->installIntentFilter()V

    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    goto :goto_0
.end method

.method private initializeFocusManager()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 1926
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    aget-object v0, v0, v1

    .line 1927
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v7, :cond_0

    .line 1928
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1930
    new-instance v0, Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/CameraModule;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget-object v6, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/FocusManager;-><init>(Landroid/content/Context;Lcom/android/camera/preferences/CameraSettingPreferences;[Ljava/lang/String;Lcom/android/camera/ui/FocusView;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusManager$Listener;ZLandroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    .line 1937
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1938
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1939
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1940
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .line 1941
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/FocusManager;->setRenderSize(II)V

    .line 1942
    return-void

    .line 1927
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private initializeSecondTime()V
    .locals 4

    .prologue
    .line 522
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->installIntentFilter()V

    .line 523
    new-instance v0, Lcom/android/camera/storage/ImageSaver;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/storage/ImageSaver;-><init>(Lcom/android/camera/ActivityBase;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    .line 524
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->keepMediaProviderInstance()V

    .line 525
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->hidePostCaptureAlert()V

    .line 526
    return-void
.end method

.method private installIntentFilter()V
    .locals 3

    .prologue
    .line 1706
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1708
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1709
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1710
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1711
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1712
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1713
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mDidRegister:Z

    .line 1714
    return-void
.end method

.method private isCameraIdle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2634
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCaptureAfterLaunch()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2915
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2916
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2917
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 2918
    if-eqz v2, :cond_0

    const-string v0, "captureAfterLaunch"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2919
    const-string v0, "captureAfterLaunch"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2920
    const-string v3, "captureAfterLaunch"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2921
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2925
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isHDRExitShow()Z
    .locals 1

    .prologue
    .line 1186
    const/4 v0, 0x0

    return v0
.end method

.method private isPreviewVisible()Z
    .locals 1

    .prologue
    .line 2067
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->isFragmentShow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsScanQRCodeIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mShowCameraAppView:Z

    if-nez v0, :cond_1

    .line 2071
    :cond_0
    const/4 v0, 0x0

    .line 2073
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSelectingCapturedImage()Z
    .locals 1

    .prologue
    .line 2062
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShutterButtonClickable()Z
    .locals 1

    .prologue
    .line 1621
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepMediaProviderInstance()V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 489
    :cond_0
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    .line 2827
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2828
    return-void
.end method

.method private onFrameLayoutChange(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "v"
    .parameter "rect"

    .prologue
    .line 2494
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/Camera;->onLayoutChange(Landroid/view/View;IIII)V

    .line 2495
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2496
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->setRenderSize(II)V

    .line 2497
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setRenderSize(II)V

    .line 2499
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    .line 2501
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/zxing/QRCodeManager;->setPreviewLayoutSize(II)V

    .line 2502
    return-void
.end method

.method private onSettingsBack()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 2704
    sget-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    .line 2705
    .local v0, cm:Lcom/android/camera/ChangeManager;
    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2706
    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 2707
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->restorePreferences()V

    .line 2712
    :cond_0
    :goto_0
    return-void

    .line 2708
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2709
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 2710
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    goto :goto_0
.end method

.method private overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1218
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPanel()Lcom/android/camera/ui/V6SettingPanel;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pref_camera_whitebalance_key"

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    const-string v2, "pref_camera_exposure_key"

    aput-object v2, v1, v5

    aput-object p3, v1, v6

    const-string v2, "pref_camera_focus_mode_key"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    aput-object p4, v1, v2

    const/4 v2, 0x6

    const-string v3, "pref_qc_camera_iso_key"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object p5, v1, v2

    const/16 v2, 0x8

    const-string v3, "pref_camera_coloreffect_key"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    aput-object p6, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SettingPanel;->overrideSettings([Ljava/lang/String;)V

    .line 1233
    :goto_0
    return-void

    .line 1226
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPanel()Lcom/android/camera/ui/V6SettingPanel;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pref_camera_whitebalance_key"

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    const-string v2, "pref_camera_exposure_key"

    aput-object v2, v1, v5

    aput-object p3, v1, v6

    const-string v2, "pref_camera_focus_mode_key"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    aput-object p4, v1, v2

    const/4 v2, 0x6

    const-string v3, "pref_qc_camera_iso_key"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object p5, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SettingPanel;->overrideSettings([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareUIByPreviewSize()V
    .locals 4

    .prologue
    .line 1195
    sget-boolean v0, Lcom/android/camera/Device;->IS_PAD1:Z

    if-eqz v0, :cond_1

    .line 1196
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    .line 1213
    :cond_0
    :goto_0
    return-void

    .line 1199
    :cond_1
    sget-boolean v0, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v0, :cond_2

    .line 1200
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    goto :goto_0

    .line 1203
    :cond_2
    new-instance v0, Lcom/android/camera/PictureSize;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v2, "pref_camera_picturesize_key"

    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getDefauleValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/PictureSize;-><init>(Ljava/lang/String;)V

    .line 1206
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1207
    iget v1, v0, Lcom/android/camera/PictureSize;->width:I

    iget v0, v0, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v1, v0}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v0

    .line 1208
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    if-eq v0, v1, :cond_0

    .line 1209
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    .line 1210
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;I)V

    goto :goto_0
.end method

.method private previewBecomeInvisible()V
    .locals 1

    .prologue
    .line 2674
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->stopFaceDetection(Z)V

    .line 2675
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->stopPreview()V

    .line 2676
    return-void
.end method

.method private previewBecomeVisible()V
    .locals 1

    .prologue
    .line 2679
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseBitmapIfNeeded()V

    .line 2680
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 2681
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    .line 2682
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 2821
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2822
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2823
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2824
    return-void
.end method

.method private restorePreferences()V
    .locals 1

    .prologue
    .line 2831
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2832
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setZoomValue(I)V

    .line 2834
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6FlashButton;->reloadPreference()V

    .line 2835
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPanel()Lcom/android/camera/ui/V6SettingPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPanel;->reloadPreferences()V

    .line 2836
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    .line 2837
    return-void
.end method

.method private restoreStatusAfterBurst()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1670
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    .line 1671
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    .line 1673
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->setupPreview()V

    .line 1676
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1677
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 1679
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMutliSnapStopRequest:Z

    .line 1680
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6FlashButton;->refreshValue()V

    .line 1681
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 1682
    return-void
.end method

.method private saveJpegData([B)V
    .locals 11
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1452
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1453
    invoke-static {p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v10

    .line 1455
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    add-int/2addr v1, v10

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_0

    .line 1456
    iget v7, v0, Landroid/hardware/Camera$Size;->width:I

    .line 1457
    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    .line 1462
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v2

    .line 1463
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "camera_picture_taken_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1464
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    move-object v1, p1

    move-object v9, v5

    invoke-virtual/range {v0 .. v10}, Lcom/android/camera/storage/ImageSaver;->addImage([BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;I)V

    .line 1467
    return-void

    .line 1459
    :cond_0
    iget v7, v0, Landroid/hardware/Camera$Size;->height:I

    .line 1460
    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    goto :goto_0
.end method

.method private saveStatusBeforeBurst()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1652
    iput-boolean v5, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    .line 1653
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pref_qc_camera_iso_key"

    aput-object v3, v1, v2

    aput-object v4, v1, v5

    const/4 v2, 0x2

    const-string v3, "pref_qc_camera_exposuretime_key"

    aput-object v3, v1, v2

    aput-object v4, v1, v6

    const/4 v2, 0x4

    const-string v3, "pref_camera_face_beauty_key"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v3, "pref_camera_shader_coloreffect_key"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-string v3, "pref_camera_flashmode_key"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "off"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/SettingsOverrider;->overrideSettings([Ljava/lang/String;)V

    .line 1660
    invoke-virtual {p0, v6}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 1661
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 1662
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6FlashButton;->refreshValue()V

    .line 1663
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 1664
    return-void
.end method

.method private sendDoCaptureMessage(J)V
    .locals 2
    .parameter "delay"

    .prologue
    const/16 v1, 0xf

    .line 2907
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I

    .line 2908
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2909
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2911
    :cond_0
    return-void
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 2133
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mDisplayRotation:I

    .line 2134
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mDisplayOrientation:I

    .line 2135
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDisplayOrientation:I

    .line 2136
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 2137
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setDisplayOrientation(I)V

    .line 2138
    return-void
.end method

.method private setPreviewFrameLayoutAspectRatio()V
    .locals 4

    .prologue
    .line 2853
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2854
    .local v0, size:Landroid/hardware/Camera$Size;
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v1

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v2, v3}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/V6PreviewFrame;->setAspectRatio(D)V

    .line 2856
    return-void
.end method

.method private setupCaptureParams()V
    .locals 3

    .prologue
    .line 2640
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2641
    if-eqz v1, :cond_0

    .line 2642
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mSaveUri:Landroid/net/Uri;

    .line 2643
    const-string v0, "crop"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mCropValue:Ljava/lang/String;

    .line 2644
    const-string v0, "save-image"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsSaveCaptureImage:Z

    .line 2646
    :cond_0
    return-void
.end method

.method private showHDRExit(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 1183
    return-void
.end method

.method private showPostCaptureAlert()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2649
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 2650
    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->ingoreTouchEvent(Z)V

    .line 2651
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 2652
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->previewBecomeInvisible()V

    .line 2653
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->hide()V

    .line 2654
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->hide()V

    .line 2655
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/camera/ui/V6ShutterButton;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 2656
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getTopControlPanel()Lcom/android/camera/ui/V6TopControlPanel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/V6TopControlPanel;->animateOut(Ljava/lang/Runnable;)V

    .line 2657
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/camera/ui/V6BottomAnimationImageView;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 2659
    :cond_0
    return-void
.end method

.method private showTapToFocusToastIfNeeded()V
    .locals 4

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 513
    :cond_0
    return-void
.end method

.method private stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2182
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 2183
    const-string v0, "Camera"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 2185
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    .line 2189
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2190
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 2194
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    .line 2195
    :cond_1
    return-void

    .line 2192
    :cond_2
    iput v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    goto :goto_0
.end method

.method private switchCamera()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2734
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2777
    :goto_0
    return-void

    .line 2735
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2736
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    .line 2738
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->close()V

    .line 2739
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 2741
    const-string v0, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start to switch camera. id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2742
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    .line 2743
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    .line 2744
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    invoke-static {v0, v3}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 2745
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->resetZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 2746
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    .line 2747
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getPreferencesLocalId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 2749
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->closeCamera()V

    .line 2750
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 2751
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 2752
    :cond_2
    new-instance v0, Lcom/android/camera/module/BaseModule$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 2753
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;->start()V

    .line 2755
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2759
    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v3}, Lcom/android/zxing/QRCodeManager;->setCameraDevice(Lcom/android/camera/CameraManager$CameraProxy;)V

    .line 2760
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->initializeCapabilities()V

    .line 2761
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    aget-object v0, v0, v3

    .line 2762
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v1, :cond_3

    move v0, v1

    .line 2763
    :goto_2
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v3, v0}, Lcom/android/camera/FocusManager;->setMirror(Z)V

    .line 2764
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Lcom/android/camera/FocusManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2765
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mOrientationCompensation:I

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/module/CameraModule;->setOrientationIndicator(IZ)V

    .line 2766
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeZoom()V

    .line 2767
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeExposureCompensation()V

    .line 2768
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 2769
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    .line 2770
    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 2771
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onCameraOpen()V

    .line 2772
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->showTapToFocusToastIfNeeded()V

    .line 2773
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setPreviewFrameLayoutAspectRatio()V

    .line 2776
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->animateSwitchCameraBefore()V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 2762
    goto :goto_2

    .line 2756
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private switchToOtherMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 2685
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2689
    :goto_0
    return-void

    .line 2686
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->waitDone()V

    .line 2687
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2688
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->switchToOtherModule(I)V

    goto :goto_0
.end method

.method private takeAPhotoIfNeeded()V
    .locals 3

    .prologue
    .line 2883
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsCaptureAfterLaunch:Z

    if-eqz v1, :cond_0

    .line 2884
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->removeMessage()V

    .line 2886
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCaptureAfterLaunch()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsCaptureAfterLaunch:Z

    .line 2888
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsCaptureAfterLaunch:Z

    if-eqz v1, :cond_2

    .line 2890
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2891
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    .line 2892
    .local v0, supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "off"

    invoke-static {v1, v0}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2893
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "off"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2894
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "off"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2895
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6FlashButton;->setValue(Ljava/lang/String;)V

    .line 2896
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2899
    .end local v0           #supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-wide/16 v1, 0x3e8

    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/CameraModule;->sendDoCaptureMessage(J)V

    .line 2900
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->lockScreenDelayed()V

    .line 2904
    :goto_0
    return-void

    .line 2902
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    invoke-virtual {v1}, Lcom/android/camera/MotionFocusManager;->autoFocus()V

    goto :goto_0
.end method

.method private updateCameraParametersInitialize()V
    .locals 3

    .prologue
    .line 2201
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 2202
    if-eqz v0, :cond_0

    .line 2203
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2204
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 2207
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 2211
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2212
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2213
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "video-stabilization"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2215
    :cond_1
    return-void
.end method

.method private updateCameraScreenNailSize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2505
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDisplayOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-eqz v1, :cond_0

    .line 2506
    move v0, p1

    .line 2507
    .local v0, tmp:I
    move p1, p2

    .line 2508
    move p2, v0

    .line 2511
    .end local v0           #tmp:I
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v1

    if-ne v1, p2, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-eqz v1, :cond_2

    .line 2514
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 2515
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/FocusManager;->setRenderSize(II)V

    .line 2519
    :cond_2
    return-void
.end method

.method private updateMutexModeUI(Z)V
    .locals 1
    .parameter "done"

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1175
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->showHDRExit(Z)V

    .line 1176
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1177
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule;->hideLoadUI(Z)V

    .line 1180
    :cond_0
    return-void
.end method

.method private updateSceneModeUI()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1238
    const-string v0, "auto"

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0d007a

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0d00cb

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0d0072

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f0d00ce

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v0, 0x7f0d008b

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/module/CameraModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFlashModeByScene(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1250
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/V6FlashButton;->overrideSettings(Ljava/lang/String;)V

    .line 1251
    return-void

    :cond_0
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    .line 1246
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/module/CameraModule;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private waitCameraStartUpThread()V
    .locals 1

    .prologue
    .line 1913
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    if-eqz v0, :cond_0

    .line 1914
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->cancel()V

    .line 1915
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->join()V

    .line 1916
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    .line 1917
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1922
    :cond_0
    :goto_0
    return-void

    .line 1919
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeImage([BI)V
    .locals 7
    .parameter "data"
    .parameter "len"

    .prologue
    .line 665
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v3

    .line 666
    .local v3, title:Ljava/lang/String;
    const-string v4, ".dng"

    invoke-static {v3, v4}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 667
    .local v2, path:Ljava/lang/String;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 668
    .local v1, outstream:Ljava/io/FileOutputStream;
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "write image to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4, p2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 670
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 671
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v4, v3}, Lcom/android/camera/storage/Storage;->addDNGToDataBase(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    .end local v1           #outstream:Ljava/io/FileOutputStream;
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :goto_0
    return-void

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public animateSwitchCameraAfter()V
    .locals 2

    .prologue
    .line 2811
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2812
    return-void
.end method

.method protected animateSwitchCameraBefore()V
    .locals 2

    .prologue
    .line 2788
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2789
    return-void
.end method

.method protected applyMultiShutParameters(Z)V
    .locals 0
    .parameter "startshut"

    .prologue
    .line 1104
    return-void
.end method

.method public autoFocus()V
    .locals 2

    .prologue
    .line 1978
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/CameraModule;->mFocusStartTime:J

    .line 1979
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    .line 1980
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mAutoFocusCallback:Lcom/android/camera/module/CameraModule$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 1981
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 1983
    :cond_0
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 1987
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 1988
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1989
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 1990
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 1992
    :cond_0
    return-void
.end method

.method public capture()Z
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v2, 0x0

    .line 977
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v3, v8, :cond_0

    iget-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-eqz v3, :cond_1

    .line 1017
    :cond_0
    :goto_0
    return v2

    .line 982
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    .line 983
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/camera/module/CameraModule;->mPostViewPictureCallbackTime:J

    .line 984
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    .line 985
    const/4 v0, 0x0

    .line 986
    .local v0, loc:Landroid/location/Location;
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 988
    iget v3, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-static {v3, v4}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v3

    iput v3, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    .line 989
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 990
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result v1

    .line 991
    .local v1, pictureFormat:I
    const/16 v3, 0x100

    if-ne v3, v1, :cond_2

    .line 992
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 994
    :cond_2
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v3, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 997
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->prepareCapture()V

    .line 999
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->playAnimationBeforeCapture()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1000
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->animateCapture()V

    .line 1001
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->playSound(I)V

    .line 1006
    :goto_1
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1008
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mShutterCallback:Lcom/android/camera/module/CameraModule$ShutterCallback;

    iget-object v5, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallback:Lcom/android/camera/module/CameraModule$RawPictureCallback;

    iget-object v6, p0, Lcom/android/camera/module/CameraModule;->mPostViewPictureCallback:Lcom/android/camera/module/CameraModule$PostViewPictureCallback;

    new-instance v7, Lcom/android/camera/module/CameraModule$JpegPictureCallback;

    invoke-direct {v7, p0, v0}, Lcom/android/camera/module/CameraModule$JpegPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1011
    invoke-virtual {p0, v8}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 1013
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    .line 1015
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getBurstCount()I

    move-result v3

    iput v3, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    .line 1016
    iput v2, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 1017
    const/4 v2, 0x1

    goto :goto_0

    .line 1003
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->animateHold()V

    goto :goto_1
.end method

.method protected enterMutexMode()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1884
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mOrientationCompensation:I

    invoke-virtual {p0, v0, v3}, Lcom/android/camera/module/CameraModule;->setOrientationIndicator(IZ)V

    .line 1886
    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->setZoomValue(I)V

    .line 1889
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d0072

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1890
    invoke-static {v5}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 1893
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pref_camera_exposure_key"

    aput-object v2, v1, v3

    aput-object v4, v1, v5

    const-string v2, "pref_qc_camera_iso_key"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v3, "pref_qc_camera_exposuretime_key"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v3, "pref_camera_face_beauty_key"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-string v3, "pref_camera_focus_mode_key"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-string v3, "pref_camera_whitebalance_key"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    const-string v3, "pref_camera_coloreffect_key"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/SettingsOverrider;->overrideSettings([Ljava/lang/String;)V

    .line 1902
    invoke-virtual {p0, v6}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 1903
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 1904
    return-void
.end method

.method protected exitMutexMode()V
    .locals 2

    .prologue
    .line 1867
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    .line 1870
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d0072

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1871
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 1874
    :cond_0
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1875
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 1879
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 1880
    return-void

    .line 1877
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    goto :goto_0
.end method

.method protected exitWhiteBalanceLockMode()Z
    .locals 1

    .prologue
    .line 1254
    const/4 v0, 0x0

    return v0
.end method

.method public findQRCode()V
    .locals 0

    .prologue
    .line 2872
    return-void
.end method

.method protected getBurstCount()I
    .locals 1

    .prologue
    .line 1107
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/camera/module/CameraModule;->BURST_SHOTTING_COUNT:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getCameraRotation()I
    .locals 2

    .prologue
    .line 1113
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mOrientationCompensation:I

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method protected getMaxPictureSize()I
    .locals 4

    .prologue
    .line 699
    const v2, 0x7f0d008c

    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 700
    .local v1, noneEffect:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v3, "pref_camera_shader_coloreffect_key"

    invoke-virtual {v2, v3, v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, colorEffect:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 704
    invoke-static {}, Lcom/android/camera/Device;->isLowMemoryDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x30

    .line 706
    :goto_0
    return v2

    .line 704
    :cond_0
    const v2, 0x79ec00

    goto :goto_0

    .line 706
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getRequestFlashMode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1029
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isSupportSceneMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1030
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getFlashModeByScene(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6FlashButton;->overrideValue(Ljava/lang/String;)V

    .line 1033
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsScanQRCodeIntent:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isSupportedFlashOn()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v0, "off"

    .line 1036
    .local v0, flashMode:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1033
    .end local v0           #flashMode:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6FlashButton;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportedSettingKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1260
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1261
    const-string v1, "pref_camera_panoramamode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1262
    const-string v1, "pref_audio_capture"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1263
    invoke-static {}, Lcom/android/camera/module/CameraModule;->getColorEffectKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1264
    const-string v1, "pref_camera_exposure_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1265
    const-string v1, "pref_camera_whitebalance_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1266
    const-string v1, "pref_camera_focus_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1267
    const-string v1, "pref_camera_referenceline_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1268
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getShowBeforeKeyguard()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1269
    const-string v1, "pref_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1280
    :cond_0
    :goto_0
    return-object v0

    .line 1272
    :cond_1
    const-string v1, "pref_audio_capture"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1273
    invoke-static {}, Lcom/android/camera/module/CameraModule;->getColorEffectKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1274
    const-string v1, "pref_camera_exposure_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1275
    const-string v1, "pref_camera_whitebalance_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1276
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getShowBeforeKeyguard()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1277
    const-string v1, "pref_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 1298
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/module/BaseModule;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1384
    :cond_0
    :goto_0
    return v0

    .line 1301
    :cond_1
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 1384
    goto :goto_0

    .line 1303
    :sswitch_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isSupportedFlashOn()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1304
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto :goto_0

    .line 1307
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    goto :goto_0

    .line 1311
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPanel()Lcom/android/camera/ui/V6SettingPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPanel;->backTopControl()Z

    .line 1312
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->onCameraPickerClicked(I)Z

    move-result v0

    goto :goto_0

    .line 1315
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingPanel()Lcom/android/camera/ui/V6SettingPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingPanel;->backTopControl()Z

    .line 1316
    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->onThumbnailClicked(Landroid/view/View;)V

    goto :goto_0

    .line 1320
    :sswitch_3
    if-nez p1, :cond_3

    .line 1321
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingPanel()Lcom/android/camera/ui/V6SettingPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingPanel;->backTopControl()Z

    .line 1322
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1323
    :cond_3
    if-ne p1, v0, :cond_4

    .line 1324
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingPanel()Lcom/android/camera/ui/V6SettingPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingPanel;->backTopControl()Z

    .line 1325
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonLongClick()Z

    goto :goto_0

    .line 1326
    :cond_4
    if-ne p1, v3, :cond_5

    .line 1327
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1328
    check-cast p3, Landroid/graphics/Point;

    .line 1329
    check-cast p4, Landroid/graphics/Point;

    .line 1330
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSmartShutterButton()Lcom/android/camera/ui/V6SmartShutterButton;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Point;->x:I

    iget v3, p3, Landroid/graphics/Point;->y:I

    iget v4, p4, Landroid/graphics/Point;->x:I

    iget v5, p4, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/camera/ui/V6SmartShutterButton;->flyin(IIII)V

    goto/16 :goto_0

    .line 1332
    :cond_5
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 1333
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1, v3}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    goto/16 :goto_0

    .line 1338
    :sswitch_4
    new-instance v2, Lcom/android/camera/module/CameraModule$4;

    invoke-direct {v2, p0, p3}, Lcom/android/camera/module/CameraModule$4;-><init>(Lcom/android/camera/module/CameraModule;Ljava/lang/Object;)V

    .line 1344
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getSettingPanel()Lcom/android/camera/ui/V6SettingPanel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/V6SettingPanel;->backTopControl()Z

    .line 1345
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 1346
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6ShutterButton;->onPause()V

    .line 1347
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getBottomControlPanel()Lcom/android/camera/ui/V6BottomControlPanel;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/V6BottomControlPanel;->animationSwitchToVideo(Ljava/lang/Runnable;)V

    .line 1348
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->switchModule()V

    goto/16 :goto_0

    .line 1354
    :sswitch_5
    if-nez p1, :cond_6

    .line 1355
    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->onReviewDoneClicked(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1357
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->onReviewCancelClicked(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1362
    :sswitch_6
    if-nez p1, :cond_7

    .line 1363
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v1, :cond_0

    .line 1364
    check-cast p3, Landroid/graphics/Point;

    .line 1365
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    iget v2, p3, Landroid/graphics/Point;->x:I

    iget v3, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/FocusManager;->setPreviewSize(II)V

    goto/16 :goto_0

    .line 1367
    :cond_7
    if-ne p1, v0, :cond_0

    .line 1368
    check-cast p3, Landroid/view/View;

    check-cast p4, Landroid/graphics/Rect;

    invoke-direct {p0, p3, p4}, Lcom/android/camera/module/CameraModule;->onFrameLayoutChange(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1372
    :sswitch_7
    if-ne p1, v3, :cond_8

    .line 1373
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    goto/16 :goto_0

    .line 1374
    :cond_8
    if-ne p1, v0, :cond_0

    .line 1375
    const-string v1, "pref_audio_capture"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1376
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 1377
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v1}, Lcom/android/camera/AudioCaptureManager;->onClick()V

    goto/16 :goto_0

    .line 1378
    :cond_9
    const-string v1, "pref_settings"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1379
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->openSettingActivity()V

    goto/16 :goto_0

    .line 1301
    :sswitch_data_0
    .sparse-switch
        0x7f0c0029 -> :sswitch_2
        0x7f0c002c -> :sswitch_3
        0x7f0c002f -> :sswitch_4
        0x7f0c0031 -> :sswitch_0
        0x7f0c0034 -> :sswitch_1
        0x7f0c0035 -> :sswitch_5
        0x7f0c0044 -> :sswitch_6
        0x7f0c004c -> :sswitch_7
    .end sparse-switch
.end method

.method protected isFaceBeautyOn()Z
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x0

    return v0
.end method

.method public isInCameraApp()Z
    .locals 1

    .prologue
    .line 3010
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mShowCameraAppView:Z

    return v0
.end method

.method protected isLongShotMode()Z
    .locals 1

    .prologue
    .line 1052
    const/4 v0, 0x0

    return v0
.end method

.method protected isSupportSceneMode()Z
    .locals 1

    .prologue
    .line 2981
    const/4 v0, 0x0

    return v0
.end method

.method protected isZeroShotMode()Z
    .locals 1

    .prologue
    .line 1048
    const/4 v0, 0x0

    return v0
.end method

.method public multiCapture()Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 1057
    iget-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1101
    :cond_0
    :goto_0
    return v2

    .line 1062
    :cond_1
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v4}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1063
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const v4, 0x7f0d0187

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1068
    :cond_2
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/ScreenHint;->isLowStorageSpace()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1069
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not enough space or storage not ready. remaining="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1074
    :cond_3
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result v1

    .line 1075
    .local v1, pictureFormat:I
    const/4 v0, 0x0

    .line 1076
    .local v0, loc:Landroid/location/Location;
    const/16 v4, 0x100

    if-ne v4, v1, :cond_4

    .line 1077
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1079
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    .line 1080
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v4}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1081
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v4, v0}, Lcom/android/camera/Util;->setGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 1083
    iget v4, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    iget v5, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-static {v4, v5}, Lcom/android/camera/Util;->getJpegRotation(II)I

    move-result v4

    iput v4, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    .line 1084
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v5, p0, Lcom/android/camera/module/CameraModule;->mJpegRotation:I

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1085
    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->applyMultiShutParameters(Z)V

    .line 1087
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1088
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->saveStatusBeforeBurst()V

    .line 1090
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getBurstCount()I

    move-result v4

    iput v4, p0, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    .line 1091
    iput v2, p0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 1092
    iput-object v8, p0, Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;

    .line 1093
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mMutliSnapStopRequest:Z

    .line 1094
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    .line 1096
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v5, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;

    invoke-direct {v5, p0, v8}, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iget-object v6, p0, Lcom/android/camera/module/CameraModule;->mRawPictureCallback:Lcom/android/camera/module/CameraModule$RawPictureCallback;

    new-instance v7, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;

    invoke-direct {v7, p0, v0}, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V

    invoke-virtual {v4, v5, v6, v8, v7}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1099
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getMultiSnapNum()Lcom/android/camera/ui/RotateTextView;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/RotateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1100
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getMultiSnapNum()Lcom/android/camera/ui/RotateTextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    move v2, v3

    .line 1101
    goto/16 :goto_0
.end method

.method protected needAutoFocusBeforeCapture()Z
    .locals 1

    .prologue
    .line 1629
    const/4 v0, 0x0

    return v0
.end method

.method protected needSetupPreview()Z
    .locals 1

    .prologue
    .line 695
    const/4 v0, 0x1

    return v0
.end method

.method protected needSwitchZeroShotMode()Z
    .locals 1

    .prologue
    .line 1625
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1948
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/module/BaseModule;->onActivityResult(IILandroid/content/Intent;)V

    .line 1949
    packed-switch p1, :pswitch_data_0

    .line 1966
    :goto_0
    return-void

    .line 1951
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1952
    if-eqz p3, :cond_0

    .line 1953
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1954
    if-eqz v1, :cond_0

    .line 1955
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1958
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, p2, v0}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 1959
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->finish()V

    .line 1960
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const-string v1, "crop-temp"

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1961
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1949
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x1

    .line 2019
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 2021
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isSelectingCapturedImage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2023
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getReviewCancledView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->onReviewCancelClicked(Landroid/view/View;)V

    .line 2058
    :cond_0
    :goto_0
    return v0

    .line 2027
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v1, v2, :cond_0

    .line 2031
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/zxing/QRCodeManager;->onBackPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2035
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2039
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 2040
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mShowCameraAppView:Z

    if-eqz v1, :cond_4

    .line 2041
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2042
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto :goto_0

    .line 2048
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingPanel()Lcom/android/camera/ui/V6SettingPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingPanel;->onBack()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v1, v2, :cond_0

    .line 2055
    :cond_4
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v1}, Lcom/android/camera/AudioCaptureManager;->onBackPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2058
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onCameraPickerClicked(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 2716
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-eqz v1, :cond_1

    .line 2717
    :cond_0
    const/4 v0, 0x0

    .line 2730
    :goto_0
    return v0

    .line 2719
    :cond_1
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start to copy texture. cameraId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2722
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->animateSwitchCopyTexture()V

    .line 2723
    iput p1, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    .line 2725
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 2726
    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    .line 2727
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingPanel()Lcom/android/camera/ui/V6SettingPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingPanel;->backTopControl()Z

    .line 2728
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    .line 2729
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    goto :goto_0
.end method

.method public onCreate(Lcom/android/camera/Camera;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1133
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onCreate(Lcom/android/camera/Camera;)V

    .line 1134
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 1135
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 1137
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getPreferredCameraId()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    .line 1138
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    .line 1139
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isScanQRCodeIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsScanQRCodeIntent:Z

    .line 1140
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getPreferencesLocalId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 1142
    invoke-static {v2}, Lcom/android/camera/ui/V6ModulePicker;->setCurrentMoudle(I)V

    .line 1143
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onCreate()V

    .line 1144
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->prepareUIByPreviewSize()V

    .line 1145
    new-instance v0, Lcom/android/camera/MotionFocusManager;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMotionFocusListener:Lcom/android/camera/MotionFocusManager$MotionFocusListener;

    iget-object v5, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/android/camera/MotionFocusManager;-><init>(Landroid/content/Context;Lcom/android/camera/MotionFocusManager$MotionFocusListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    .line 1148
    new-instance v0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/camera/module/CameraModule$CameraStartUpThread;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    .line 1149
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->start()V

    .line 1152
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/module/CameraModule;->mIsScanQRCodeIntent:Z

    invoke-virtual {v0, v3, v4, p0, v5}, Lcom/android/zxing/QRCodeManager;->onCreate(Landroid/app/Activity;Landroid/os/Looper;Lcom/android/zxing/QRCodeManager$QRCodeManagerListener;Z)V

    .line 1154
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsScanQRCodeIntent:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0, v2}, Lcom/android/camera/Camera;->createCameraScreenNail(ZZ)V

    .line 1158
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 1160
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 1161
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setupCaptureParams()V

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "android.intent.extra.quickCapture"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mQuickCapture:Z

    .line 1165
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->initializeMutexMode()V

    .line 1167
    new-instance v0, Lcom/android/camera/AudioCaptureManager;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/AudioCaptureManager;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/ActivityBase;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    .line 1169
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    .line 1170
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 1171
    return-void

    :cond_1
    move v0, v2

    .line 1154
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1170
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 2489
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onDestroy()V

    .line 2490
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->onDestroy()V

    .line 2491
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 3
    .parameter "faces"
    .parameter "camera"

    .prologue
    .line 562
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mShowCameraAppView:Z

    if-nez v1, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/android/camera/hardware/QcomCamera$QcomFace;->convertQcomFace([Landroid/hardware/Camera$Face;)[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    move-result-object v0

    .line 567
    .local v0, cameraFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/FaceView;->setFaces([Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->isFaceStable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->focusFaceArea()Z

    goto :goto_0

    .line 565
    .end local v0           #cameraFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    :cond_2
    invoke-static {p1}, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->convertCameraHardwareFace([Landroid/hardware/Camera$Face;)[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    move-result-object v0

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 2078
    sparse-switch p1, :sswitch_data_0

    .line 2102
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1

    .line 2080
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2081
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    goto :goto_0

    .line 2085
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2086
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick()V

    goto :goto_0

    .line 2091
    :sswitch_2
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isPreviewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2095
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/module/CameraModule;->handleVolumeKeyEvent(ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 2078
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1b -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongPress(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1547
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->onSingleTapUp(II)V

    .line 1548
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1549
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewFrame;->performHapticFeedback(I)Z

    .line 1550
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 1392
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 1403
    :cond_0
    :goto_0
    return-void

    .line 1393
    :cond_1
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    invoke-static {p1, v1}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    .line 1397
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mOrientation:I

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .line 1399
    .local v0, orientationCompensation:I
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mOrientationCompensation:I

    if-eq v1, v0, :cond_0

    .line 1400
    iput v0, p0, Lcom/android/camera/module/CameraModule;->mOrientationCompensation:I

    .line 1401
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mOrientationCompensation:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/module/CameraModule;->setOrientationIndicator(IZ)V

    goto :goto_0
.end method

.method public onPauseAfterSuper()V
    .locals 0

    .prologue
    .line 1908
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPauseAfterSuper()V

    .line 1909
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1779
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPauseBeforeSuper()V

    .line 1781
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1782
    invoke-direct {p0, v1}, Lcom/android/camera/module/CameraModule;->showHDRExit(Z)V

    .line 1783
    invoke-direct {p0, v1}, Lcom/android/camera/module/CameraModule;->hideLoadUI(Z)V

    .line 1784
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1785
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    .line 1788
    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_7

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 1791
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v0, :cond_1

    .line 1792
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    .line 1793
    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 1794
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getMultiSnapNum()Lcom/android/camera/ui/RotateTextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/ui/RotateTextView;->setVisibility(I)V

    .line 1797
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    .line 1798
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->onPause()V

    .line 1801
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->waitCameraStartUpThread()V

    .line 1805
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_2

    .line 1806
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 1809
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->stopFaceDetection(Z)V

    .line 1810
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->stopPreview()V

    .line 1812
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->closeCamera()V

    .line 1813
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataAnalytics;->uploadToServer()V

    .line 1814
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onPause()V

    .line 1816
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_3

    .line 1817
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    if-eqz v0, :cond_3

    .line 1818
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    invoke-virtual {v0}, Lcom/android/camera/storage/ImageSaver;->finish()V

    .line 1819
    iput-object v4, p0, Lcom/android/camera/module/CameraModule;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    .line 1823
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    if-eqz v0, :cond_4

    .line 1824
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-virtual {v0, v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->setImageSaver(Lcom/android/camera/storage/ImageSaver;)V

    .line 1825
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->release()V

    .line 1826
    iput-object v4, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 1829
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mDidRegister:Z

    if-eqz v0, :cond_5

    .line 1830
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1831
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mDidRegister:Z

    .line 1834
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-eqz v0, :cond_6

    .line 1835
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->removeMessages()V

    .line 1839
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1840
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1841
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1842
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1843
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1844
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1845
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1846
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1847
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1848
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1849
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mIsRecreateCameraScreenNail:Z

    .line 1850
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 1851
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/MotionFocusManager;->reset()V

    .line 1852
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->resetScreenOn()V

    .line 1855
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->onPause()V

    .line 1856
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mPendingSwitchCameraId:I

    .line 1857
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    .line 1861
    iput-object v4, p0, Lcom/android/camera/module/CameraModule;->mJpegImageData:[B

    .line 1863
    return-void

    :cond_7
    move v0, v2

    .line 1788
    goto/16 :goto_0
.end method

.method public onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 2783
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2784
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1747
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResumeAfterSuper()V

    .line 1748
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDisabled:Z

    if-eqz v0, :cond_1

    .line 1775
    :cond_0
    :goto_0
    return-void

    .line 1749
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onResume()V

    .line 1750
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J

    .line 1752
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    if-nez v0, :cond_2

    .line 1753
    new-instance v0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/module/CameraModule$CameraStartUpThread;-><init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    .line 1754
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->start()V

    .line 1757
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_3

    .line 1758
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    .line 1763
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-nez v0, :cond_4

    .line 1764
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1768
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->keepScreenOnAwhile()V

    .line 1771
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 1772
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 1773
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 1774
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->onResume()V

    goto :goto_0

    .line 1766
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->initializeSecondTime()V

    goto :goto_1
.end method

.method public onResumeBeforeSuper()V
    .locals 0

    .prologue
    .line 1742
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResumeBeforeSuper()V

    .line 1743
    return-void
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1433
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isSelectingCapturedImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1434
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->previewBecomeVisible()V

    .line 1435
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 1437
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->hidePostCaptureAlert()V

    .line 1443
    :goto_0
    return-void

    .line 1440
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 1441
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1448
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->doAttach()V

    .line 1449
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 2

    .prologue
    .line 2697
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 2701
    :goto_0
    return-void

    .line 2698
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isRecordLocation(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 2699
    .local v0, recordLocation:Z
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 2700
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->setCameraParametersWhenIdle(I)V

    goto :goto_0
.end method

.method public onShutterButtonClick()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1587
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isShutterButtonClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v1, :cond_0

    .line 1588
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 1589
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    .line 1590
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 1591
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    .line 1592
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 1594
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->isLowStorageSpace()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1595
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough space or storage not ready. remaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    :cond_0
    :goto_0
    return-void

    .line 1600
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->needAutoFocusBeforeCapture()Z

    move-result v0

    .line 1601
    .local v0, needAutoFocus:Z
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1603
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 1604
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1605
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    goto :goto_0

    .line 1609
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/module/CameraModule;->mLastShutterButtounClickTime:J

    .line 1610
    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    .line 1611
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/FocusManager;->prepareCapture(ZI)V

    .line 1612
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->doSnap()V

    .line 1613
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1614
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v3}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 1615
    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    goto :goto_0
.end method

.method public onShutterButtonFocus(ZI)V
    .locals 2
    .parameter "pressed"
    .parameter "fromWhat"

    .prologue
    const/16 v1, 0xc

    .line 1553
    if-nez p1, :cond_3

    .line 1554
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v0, :cond_1

    .line 1555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMutliSnapStopRequest:Z

    .line 1584
    :cond_0
    :goto_0
    return-void

    .line 1558
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPendingCapture:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1559
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1560
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPendingCapture:Z

    .line 1561
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ShutterButton;->isCancled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1562
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1568
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1574
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->canTakePicture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1576
    :cond_4
    if-eqz p1, :cond_6

    .line 1577
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->needSwitchZeroShotMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1578
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 1580
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterDown()V

    goto :goto_0

    .line 1582
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterUp()V

    goto :goto_0
.end method

.method public onShutterButtonLongClick()Z
    .locals 5

    .prologue
    const/16 v4, 0xc

    const/4 v3, 0x1

    .line 1633
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isBurstShootingEnable(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1639
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1644
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 1645
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 1646
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    .line 1647
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    .line 1648
    return v3

    .line 1641
    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mPendingCapture:Z

    .line 1642
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->requestAutoFocus()V

    goto :goto_0
.end method

.method public onSingleTapUp(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1997
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v0, :cond_1

    .line 2015
    :cond_0
    :goto_0
    return-void

    .line 2004
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 2007
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 2010
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isSelectingCapturedImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2013
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    .line 2014
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusManager;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1415
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onStop()V

    .line 1416
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 1418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 1420
    :cond_0
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1424
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->tryRemoveCountDownMessage()V

    .line 1425
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->gotoGallery()V

    .line 1428
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 2816
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onUserInteraction()V

    .line 2817
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->keepScreenOnAwhile()V

    .line 2818
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 1718
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onWindowFocusChanged(Z)V

    .line 1719
    if-eqz p1, :cond_0

    .line 1720
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/MotionFocusManager;->register()V

    .line 1725
    :goto_0
    return-void

    .line 1723
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/MotionFocusManager;->unregister()V

    goto :goto_0
.end method

.method protected openSettingActivity()V
    .locals 4

    .prologue
    .line 2619
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPanel()Lcom/android/camera/ui/V6SettingPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPanel;->backTopControl()Z

    .line 2620
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2621
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    const-class v2, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2622
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 2623
    const-string v2, "pref_camera_id_key"

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 2624
    invoke-static {v1}, Lcom/android/camera/CameraPreferenceActivity;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2625
    const-string v1, "IsCaptureIntent"

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2626
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 2627
    return-void
.end method

.method protected performShutterClick()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2108
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isShutterButtonClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2109
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    .line 2110
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick()V

    .line 2111
    invoke-virtual {p0, v2, v2}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    .line 2113
    :cond_0
    return-void
.end method

.method protected playAnimationBeforeCapture()Z
    .locals 1

    .prologue
    .line 970
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isZeroShotMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNeedComposed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isFaceBeautyOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isBigForBeautify(Landroid/hardware/Camera$Size;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playSound(I)V
    .locals 1
    .parameter "soundId"

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 1127
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule;->playCameraSound(I)V

    .line 1129
    :cond_1
    return-void
.end method

.method protected prepareCapture()V
    .locals 0

    .prologue
    .line 1110
    return-void
.end method

.method public readyToAudioCapture()Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2993
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3001
    :goto_0
    return v7

    .line 2996
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2997
    .local v0, now:J
    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v2, v6, :cond_2

    :cond_1
    iget-wide v2, p0, Lcom/android/camera/module/CameraModule;->mLastShutterButtounClickTime:J

    const-wide/16 v4, 0x1f4

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J

    const-wide/16 v4, 0xc8

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    if-eqz v2, :cond_2

    .local v6, ready:Z
    :goto_1
    move v7, v6

    .line 3001
    goto :goto_0

    .end local v6           #ready:Z
    :cond_2
    move v6, v7

    .line 2997
    goto :goto_1
.end method

.method public requestAutoFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2876
    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->stopFaceDetection(Z)V

    .line 2877
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-ne v0, v1, :cond_0

    .line 2878
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->autoFocus()V

    .line 2880
    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mUpdateSettingView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1286
    return-void
.end method

.method public scanQRCodeEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2860
    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mShowCameraAppView:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isHDRExitShow()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getShowBeforeKeyguard()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendDelayedCaptureMessage(II)V
    .locals 3
    .parameter "period"
    .parameter "times"

    .prologue
    const/16 v2, 0x14

    .line 2986
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2987
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2988
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2990
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .parameter "parameters"
    .parameter "value"

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, p2}, Lcom/android/camera/CameraSettings;->setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1043
    :cond_0
    return-void
.end method

.method protected setCameraParameters(I)V
    .locals 2
    .parameter "updateSet"

    .prologue
    .line 2528
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2530
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 2531
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersInitialize()V

    .line 2534
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 2535
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    .line 2538
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2539
    return-void
.end method

.method protected setCameraParametersWhenIdle(I)V
    .locals 4
    .parameter "additionalUpdateSet"

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 2544
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    .line 2545
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 2548
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    .line 2563
    :cond_0
    :goto_0
    return-void

    .line 2550
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2551
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 2552
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setPreviewFrameLayoutAspectRatio()V

    .line 2553
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->updateSceneModeUI()V

    .line 2554
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->exitWhiteBalanceLockMode()Z

    .line 2555
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    .line 2556
    iput v1, p0, Lcom/android/camera/module/CameraModule;->mUpdateSet:I

    goto :goto_0

    .line 2558
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2559
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected setCameraState(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 954
    iput p1, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    .line 955
    packed-switch p1, :pswitch_data_0

    .line 967
    :goto_0
    :pswitch_0
    return-void

    .line 959
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 960
    invoke-virtual {p0, v1}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    goto :goto_0

    .line 963
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->enableCameraControls(Z)V

    .line 964
    iget-object v2, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v3, :cond_0

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 955
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setFocusParameters()V
    .locals 2

    .prologue
    .line 1118
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1119
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 1121
    :cond_0
    return-void
.end method

.method protected setHDRSceneMode(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter "parameters"

    .prologue
    .line 1045
    return-void
.end method

.method protected setOrientationIndicator(IZ)V
    .locals 7
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 1406
    const/4 v5, 0x2

    new-array v3, v5, [Lcom/android/camera/ui/Rotatable;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v6

    aput-object v6, v3, v5

    .line 1407
    .local v3, indicators:[Lcom/android/camera/ui/Rotatable;
    move-object v0, v3

    .local v0, arr$:[Lcom/android/camera/ui/Rotatable;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 1408
    .local v2, indicator:Lcom/android/camera/ui/Rotatable;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 1407
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1411
    .end local v2           #indicator:Lcom/android/camera/ui/Rotatable;
    :cond_1
    return-void
.end method

.method protected setupPreview()V
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 679
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->needSetupPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 690
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 691
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    .line 692
    return-void

    .line 682
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    if-eqz v0, :cond_1

    .line 683
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 686
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManager;->setAeAwbLock(Z)V

    .line 687
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    goto :goto_0
.end method

.method public startFaceDetection()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 530
    iget-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eq v3, v1, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v3

    if-lez v3, :cond_0

    .line 533
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    .line 534
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 535
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 536
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mDisplayOrientation:I

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/FaceView;->setDisplayOrientation(I)V

    .line 537
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/module/CameraModule;->mCameraId:I

    aget-object v0, v3, v4

    .line 538
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v3

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v1, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/camera/ui/FaceView;->setMirror(Z)V

    .line 539
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 540
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusManager;->setFaceView(Lcom/android/camera/ui/FaceView;)V

    .line 541
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 542
    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->startFaceDetection()V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 538
    goto :goto_1
.end method

.method protected startPreview()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2142
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2143
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 2146
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 2150
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->stopPreview()V

    .line 2152
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;->setDisplayOrientation()V

    .line 2153
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 2155
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    if-nez v0, :cond_3

    .line 2158
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2159
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2161
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusManager;->setAeAwbLock(Z)V

    .line 2164
    :cond_3
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFoundFace:Z

    .line 2165
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 2167
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 2168
    const-string v0, "Camera"

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreview()V

    .line 2170
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onPreviewStarted()V

    .line 2171
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2172
    invoke-virtual {p0, v3}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 2176
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSnapshotOnIdle:Z

    if-eqz v0, :cond_4

    .line 2177
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2179
    :cond_4
    return-void

    .line 2174
    :cond_5
    iput v3, p0, Lcom/android/camera/module/CameraModule;->mCameraState:I

    goto :goto_0
.end method

.method public stopFaceDetection(Z)V
    .locals 2
    .parameter "clearFaces"

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    .line 552
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionStarted:Z

    .line 553
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 554
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FaceView;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto :goto_0
.end method

.method public tryRemoveCountDownMessage()V
    .locals 2

    .prologue
    .line 3005
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3006
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->hideDelayNumber()V

    .line 3007
    return-void
.end method

.method protected updateCameraParametersPreference()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2218
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mAeLockSupported:Z

    if-eqz v0, :cond_0

    .line 2219
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v3}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 2222
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_1

    .line 2223
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v3}, Lcom/android/camera/FocusManager;->getAeAwbLock()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 2226
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getMaxPictureSize()I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/android/camera/PictureSizeManager;->initialize(Lcom/android/camera/ActivityBase;Ljava/util/List;I)V

    .line 2231
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize()Lcom/android/camera/PictureSize;

    move-result-object v0

    .line 2233
    if-eqz v0, :cond_2

    .line 2234
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pictureSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v4, v0, Lcom/android/camera/PictureSize;->width:I

    iget v5, v0, Lcom/android/camera/PictureSize;->height:I

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 2240
    :cond_2
    if-nez v0, :cond_3

    .line 2241
    const-string v3, "Camera"

    const-string v4, "get null pictureSize"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    :cond_3
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    .line 2244
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget v5, v0, Lcom/android/camera/PictureSize;->width:I

    iget v0, v0, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v5, v0}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(II)D

    move-result-wide v5

    invoke-static {v4, v3, v5, v6}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2246
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 2247
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v4

    .line 2248
    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    if-eq v3, v4, :cond_6

    .line 2249
    :cond_4
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v5, v6}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2252
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v5, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v5}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2253
    iget v3, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    if-eq v3, v4, :cond_5

    .line 2254
    iput v4, p0, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    .line 2255
    iget-boolean v3, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-eqz v3, :cond_1b

    .line 2256
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mHasPendingSwitching:Z

    .line 2261
    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2264
    :cond_6
    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iput v3, p0, Lcom/android/camera/module/CameraModule;->mPreviewWidth:I

    .line 2265
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/android/camera/module/CameraModule;->mPreviewHeight:I

    .line 2268
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v3, "pref_camera_scenemode_key"

    const v4, 0x7f0d00b8

    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    .line 2271
    const-string v0, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msceneMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getMutexMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v4}, Lcom/android/camera/MutexModeManager;->getMutexMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isMTKHdr()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2273
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->setHDRSceneMode(Landroid/hardware/Camera$Parameters;)V

    .line 2295
    :cond_7
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v0, :cond_1e

    const-string v0, "low"

    .line 2299
    :goto_2
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 2305
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v0

    .line 2306
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EV : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v3

    .line 2308
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v4

    .line 2309
    if-lt v0, v4, :cond_1f

    if-gt v0, v3, :cond_1f

    .line 2310
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 2316
    :goto_3
    invoke-static {}, Lcom/android/camera/Device;->isSupporteShaderEffect()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2317
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v3, "pref_camera_shader_coloreffect_key"

    const v4, 0x7f0d008c

    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2320
    const-string v0, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Shader color effect value ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    const/4 v0, -0x1

    .line 2323
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2327
    :goto_4
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    .line 2329
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    if-nez v0, :cond_8

    .line 2330
    new-instance v0, Lcom/android/camera/effect/renders/SnapshotEffectRender;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-boolean v4, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    invoke-direct {v0, v3, v4}, Lcom/android/camera/effect/renders/SnapshotEffectRender;-><init>(Lcom/android/camera/ActivityBase;Z)V

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 2331
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mImageSaver:Lcom/android/camera/storage/ImageSaver;

    invoke-virtual {v0, v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->setImageSaver(Lcom/android/camera/storage/ImageSaver;)V

    .line 2334
    :cond_8
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    if-eqz v0, :cond_9

    .line 2335
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getJpegQuality()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->setQuality(I)V

    .line 2348
    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v3, "pref_camera_autoexposure_key"

    const v4, 0x7f0d0132

    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2351
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "autoExposure value ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v3, v0}, Lcom/android/camera/module/CameraModule;->setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2356
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v3, "pref_camera_antibanding_key"

    const v4, 0x7f0d00e0

    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->getDefaultPreferenceId(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2359
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "antiBanding value ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2361
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 2364
    :cond_a
    const-string v0, "auto"

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2365
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2367
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 2368
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getRequestFlashMode()Ljava/lang/String;

    move-result-object v3

    .line 2369
    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v4

    .line 2370
    invoke-static {v3, v4}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2371
    iget-object v5, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2374
    :cond_b
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "off"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2375
    const-string v0, "off"

    invoke-static {v0, v4}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2376
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "off"

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2377
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2378
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2382
    :cond_c
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFocusModeSwitching()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2383
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 2384
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetFocusStateIfNeeded()V

    .line 2388
    :cond_d
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, v7}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 2389
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsScanQRCodeIntent:Z

    if-eqz v0, :cond_21

    :cond_e
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_21

    const-string v0, "auto"

    .line 2392
    :goto_6
    if-eqz v0, :cond_f

    .line 2393
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2395
    :cond_f
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Focus mode value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    :cond_10
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v3, "pref_camera_whitebalance_key"

    const v4, 0x7f0d007a

    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2402
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2404
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 2429
    :cond_11
    :goto_7
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_12

    .line 2430
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v3}, Lcom/android/camera/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 2433
    :cond_12
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_13

    .line 2435
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v3}, Lcom/android/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 2438
    :cond_13
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mContinousFocusSupported:Z

    if-eqz v0, :cond_14

    .line 2439
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "continuous-picture"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2440
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mAutoFocusMoveCallback:Lcom/android/camera/module/CameraModule$AutoFocusMoveCallback;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 2447
    :cond_14
    :goto_8
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v0, :cond_27

    const-string v0, "off"

    .line 2452
    :goto_9
    const-string v3, "on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2453
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    if-nez v0, :cond_15

    .line 2454
    iput-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    .line 2455
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    .line 2464
    :cond_15
    :goto_a
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2465
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getZoomValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2468
    :cond_16
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    if-eqz v0, :cond_18

    .line 2469
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    const-string v0, "auto"

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v4}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "macro"

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v4}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_17
    move v0, v2

    :goto_b
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mShowCameraAppView:Z

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/MotionFocusManager;->setEnabled(ZZ)V

    .line 2479
    :cond_18
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule;->addMuteToParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2481
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    if-eqz v0, :cond_19

    sget-boolean v0, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v0, :cond_1a

    .line 2482
    :cond_19
    iget v0, p0, Lcom/android/camera/module/CameraModule;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/module/CameraModule;->mPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/CameraModule;->updateCameraScreenNailSize(II)V

    .line 2485
    :cond_1a
    return-void

    .line 2258
    :cond_1b
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2274
    :cond_1c
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2275
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2276
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2277
    const-string v0, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSceneMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pas="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 2283
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2284
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    goto/16 :goto_1

    .line 2287
    :cond_1d
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    .line 2288
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 2289
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/module/CameraModule;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_1

    .line 2295
    :cond_1e
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v3, "pref_camera_jpegquality_key"

    const v4, 0x7f0d0055

    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 2312
    :cond_1f
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid exposure range: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2338
    :cond_20
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v3, "pref_camera_coloreffect_key"

    const v4, 0x7f0d008b

    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2341
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Color effect value ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2343
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2389
    :cond_21
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 2406
    :cond_22
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 2407
    if-nez v0, :cond_11

    .line 2408
    const-string v0, "auto"

    goto/16 :goto_7

    .line 2412
    :cond_23
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->getRequestFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 2413
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v3

    .line 2414
    invoke-static {v0, v3}, Lcom/android/camera/module/CameraModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2415
    iget-object v3, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2418
    :cond_24
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFocusModeSwitching()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2419
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 2420
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetFocusStateIfNeeded()V

    .line 2422
    :cond_25
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "continuous-picture"

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2423
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    const-string v3, "continuous-picture"

    invoke-virtual {v0, v3}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2442
    :cond_26
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v7}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto/16 :goto_8

    .line 2447
    :cond_27
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v3, "pref_camera_facedetection_key"

    const v4, 0x7f0d0153

    invoke-virtual {p0, v4}, Lcom/android/camera/module/CameraModule;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 2458
    :cond_28
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    if-ne v0, v2, :cond_15

    .line 2459
    invoke-virtual {p0, v2}, Lcom/android/camera/module/CameraModule;->stopFaceDetection(Z)V

    .line 2460
    iput-boolean v1, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    goto/16 :goto_a

    :cond_29
    move v0, v1

    .line 2469
    goto/16 :goto_b

    .line 2324
    :catch_0
    move-exception v3

    goto/16 :goto_4
.end method
