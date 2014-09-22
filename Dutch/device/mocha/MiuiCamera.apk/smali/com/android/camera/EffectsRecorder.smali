.class public Lcom/android/camera/EffectsRecorder;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/EffectsRecorder$EffectsListener;
    }
.end annotation


# instance fields
.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCameraDisplayOrientation:I

.field private mCameraFacing:I

.field private mCameraSound:Landroid/media/MediaActionSound;

.field private mCaptureRate:D

.field private mContext:Landroid/content/Context;

.field private mCurrentEffect:I

.field private mEffect:I

.field private mEffectParameter:Ljava/lang/Object;

.field private mEffectsListener:Lcom/android/camera/EffectsRecorder$EffectsListener;

.field private mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private mFd:Ljava/io/FileDescriptor;

.field private mGraphEnv:Landroid/filterfw/GraphEnvironment;

.field private mGraphId:I

.field private mHandler:Landroid/os/Handler;

.field private mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

.field private mLogVerbose:Z

.field private mMaxDurationMs:I

.field private mMaxFileSize:J

.field private mOldRunner:Landroid/filterfw/core/GraphRunner;

.field private mOrientationHint:I

.field private mOutputFile:Ljava/lang/String;

.field private mPreviewHeight:I

.field private mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mPreviewWidth:I

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

.field private mRunner:Landroid/filterfw/core/GraphRunner;

.field private mRunnerDoneCallback:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

.field private mSourceReadyCallback:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

.field private mState:I

.field private mTextureSource:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/EffectsRecorder;->mCaptureRate:D

    .line 84
    iput v2, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/EffectsRecorder;->mMaxFileSize:J

    .line 86
    iput v2, p0, Lcom/android/camera/EffectsRecorder;->mMaxDurationMs:I

    .line 87
    iput v2, p0, Lcom/android/camera/EffectsRecorder;->mCameraFacing:I

    .line 90
    iput v2, p0, Lcom/android/camera/EffectsRecorder;->mEffect:I

    .line 91
    iput v2, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    .line 98
    iput-object v4, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 99
    iput-object v4, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    .line 109
    iput v2, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    .line 111
    const-string v0, "EffectsRecorder"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    .line 547
    new-instance v0, Lcom/android/camera/EffectsRecorder$1;

    invoke-direct {v0, p0}, Lcom/android/camera/EffectsRecorder$1;-><init>(Lcom/android/camera/EffectsRecorder;)V

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mSourceReadyCallback:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

    .line 613
    new-instance v0, Lcom/android/camera/EffectsRecorder$2;

    invoke-direct {v0, p0}, Lcom/android/camera/EffectsRecorder$2;-><init>(Lcom/android/camera/EffectsRecorder;)V

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

    .line 626
    new-instance v0, Lcom/android/camera/EffectsRecorder$3;

    invoke-direct {v0, p0}, Lcom/android/camera/EffectsRecorder$3;-><init>(Lcom/android/camera/EffectsRecorder;)V

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

    .line 836
    new-instance v0, Lcom/android/camera/EffectsRecorder$4;

    invoke-direct {v0, p0}, Lcom/android/camera/EffectsRecorder$4;-><init>(Lcom/android/camera/EffectsRecorder;)V

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mRunnerDoneCallback:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    .line 131
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EffectsRecorder created ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mContext:Landroid/content/Context;

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mHandler:Landroid/os/Handler;

    .line 134
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraSound:Landroid/media/MediaActionSound;

    .line 135
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0, v3}, Landroid/media/MediaActionSound;->load(I)V

    .line 136
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/EffectsRecorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/EffectsRecorder;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/EffectsRecorder;)Lcom/android/camera/EffectsRecorder$EffectsListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mEffectsListener:Lcom/android/camera/EffectsRecorder$EffectsListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/EffectsRecorder;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/EffectsRecorder;)Ljava/io/FileDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/EffectsRecorder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/EffectsRecorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/EffectsRecorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/EffectsRecorder;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/EffectsRecorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/EffectsRecorder;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/camera/EffectsRecorder;->sendMessage(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/EffectsRecorder;Landroid/filterfw/core/GraphRunner;)Landroid/filterfw/core/GraphRunner;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/camera/EffectsRecorder;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/camera/EffectsRecorder;->raiseError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/EffectsRecorder;)Landroid/filterfw/GraphEnvironment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    return-object v0
.end method

.method private declared-synchronized initializeEffect(Z)V
    .locals 11
    .parameter "forceReset"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 427
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget v4, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    iget v5, p0, Lcom/android/camera/EffectsRecorder;->mEffect:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    if-ne v4, v8, :cond_5

    .line 431
    :cond_0
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "previewSurfaceTexture"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/camera/EffectsRecorder;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "previewWidth"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget v7, p0, Lcom/android/camera/EffectsRecorder;->mPreviewWidth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "previewHeight"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget v7, p0, Lcom/android/camera/EffectsRecorder;->mPreviewHeight:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "orientation"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget v7, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    .line 436
    iget v4, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-eq v4, v10, :cond_1

    iget v4, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-ne v4, v8, :cond_2

    .line 439
    :cond_1
    iget v4, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    const/4 v5, 0x2

    invoke-direct {p0, v4, v5}, Lcom/android/camera/EffectsRecorder;->sendMessage(II)V

    .line 442
    :cond_2
    iget v4, p0, Lcom/android/camera/EffectsRecorder;->mEffect:I

    packed-switch v4, :pswitch_data_0

    .line 451
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown effect ID"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/EffectsRecorder;->mEffect:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 444
    :pswitch_0
    :try_start_1
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder;->mContext:Landroid/content/Context;

    const v6, 0x7f070002

    invoke-virtual {v4, v5, v6}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/android/camera/EffectsRecorder;->mGraphId:I

    .line 453
    :goto_0
    iget v4, p0, Lcom/android/camera/EffectsRecorder;->mEffect:I

    iput v4, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    .line 455
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    iput-object v4, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    .line 456
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget v5, p0, Lcom/android/camera/EffectsRecorder;->mGraphId:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/filterfw/GraphEnvironment;->getRunner(II)Landroid/filterfw/core/GraphRunner;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 457
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder;->mRunnerDoneCallback:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    invoke-virtual {v4, v5}, Landroid/filterfw/core/GraphRunner;->setDoneCallback(Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;)V

    .line 458
    iget-boolean v4, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v4, :cond_3

    .line 459
    const-string v4, "EffectsRecorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New runner: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Old runner: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_3
    iget v4, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-eq v4, v10, :cond_4

    iget v4, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-ne v4, v8, :cond_5

    .line 466
    :cond_4
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    :try_start_2
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 472
    :try_start_3
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v4}, Landroid/filterfw/core/GraphRunner;->stop()V

    .line 476
    :cond_5
    iget v4, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    packed-switch v4, :pswitch_data_1

    .line 498
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->setFaceDetectOrientation()V

    .line 499
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->setRecordingOrientation()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 500
    monitor-exit p0

    return-void

    .line 447
    :pswitch_1
    const/4 v4, 0x2

    const/4 v5, 0x0

    :try_start_4
    invoke-direct {p0, v4, v5}, Lcom/android/camera/EffectsRecorder;->sendMessage(II)V

    .line 448
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder;->mContext:Landroid/content/Context;

    const/high16 v6, 0x7f07

    invoke-virtual {v4, v5, v6}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/android/camera/EffectsRecorder;->mGraphId:I

    goto :goto_0

    .line 469
    :catch_0
    move-exception v1

    .line 470
    .local v1, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unable to connect camera to effect input"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 478
    .end local v1           #e:Ljava/io/IOException;
    :pswitch_2
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/camera/EffectsRecorder;->tryEnableVideoStabilization(Z)Z

    .line 479
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v4}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v4

    const-string v5, "goofyrenderer"

    invoke-virtual {v4, v5}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v2

    .line 480
    .local v2, goofyFilter:Landroid/filterfw/core/Filter;
    const-string v5, "currentEffect"

    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 484
    .end local v2           #goofyFilter:Landroid/filterfw/core/Filter;
    :pswitch_3
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/camera/EffectsRecorder;->tryEnableVideoStabilization(Z)Z

    .line 485
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v4}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v4

    const-string v5, "background"

    invoke-virtual {v4, v5}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 486
    .local v0, backgroundSrc:Landroid/filterfw/core/Filter;
    const-string v4, "sourceUrl"

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 489
    iget v4, p0, Lcom/android/camera/EffectsRecorder;->mCameraFacing:I

    if-ne v4, v9, :cond_6

    .line 490
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v4}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v4

    const-string v5, "replacer"

    invoke-virtual {v4, v5}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v3

    .line 491
    .local v3, replacer:Landroid/filterfw/core/Filter;
    const-string v4, "mirrorBg"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 492
    iget-boolean v4, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v4, :cond_6

    const-string v4, "EffectsRecorder"

    const-string v5, "Setting the background to be mirrored"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 442
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 476
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initializeFilterFramework()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 403
    new-instance v3, Landroid/filterfw/GraphEnvironment;

    invoke-direct {v3}, Landroid/filterfw/GraphEnvironment;-><init>()V

    iput-object v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    .line 404
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    invoke-virtual {v3}, Landroid/filterfw/GraphEnvironment;->createGLEnvironment()V

    .line 406
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 407
    .local v2, videoFrameWidth:I
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 408
    .local v1, videoFrameHeight:I
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mCameraDisplayOrientation:I

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mCameraDisplayOrientation:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_1

    .line 409
    :cond_0
    move v0, v2

    .line 410
    .local v0, tmp:I
    move v2, v1

    .line 411
    move v1, v0

    .line 414
    .end local v0           #tmp:I
    :cond_1
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "textureSourceCallback"

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/camera/EffectsRecorder;->mSourceReadyCallback:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "recordingWidth"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "recordingHeight"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "recordingProfile"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "learningDoneListener"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/android/camera/EffectsRecorder;->mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "recordingDoneListener"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/android/camera/EffectsRecorder;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    .line 421
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 422
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/camera/EffectsRecorder;->mGraphId:I

    .line 423
    iput v7, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    .line 424
    return-void
.end method

.method private raiseError(Ljava/lang/Exception;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mEffectsListener:Lcom/android/camera/EffectsRecorder$EffectsListener;

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/EffectsRecorder$6;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/EffectsRecorder$6;-><init>(Lcom/android/camera/EffectsRecorder;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 950
    :cond_0
    return-void
.end method

.method private sendMessage(II)V
    .locals 2
    .parameter "effect"
    .parameter "msg"

    .prologue
    .line 927
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mEffectsListener:Lcom/android/camera/EffectsRecorder$EffectsListener;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/EffectsRecorder$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/EffectsRecorder$5;-><init>(Lcom/android/camera/EffectsRecorder;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 935
    :cond_0
    return-void
.end method

.method private setFaceDetectOrientation()V
    .locals 5

    .prologue
    .line 308
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 309
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v3}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v3

    const-string v4, "rotate"

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v2

    .line 310
    .local v2, rotateFilter:Landroid/filterfw/core/Filter;
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v3}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v3

    const-string v4, "metarotate"

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 311
    .local v0, metaRotateFilter:Landroid/filterfw/core/Filter;
    const-string v3, "rotation"

    iget v4, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 312
    iget v3, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    rsub-int v3, v3, 0x168

    rem-int/lit16 v1, v3, 0x168

    .line 313
    .local v1, reverseDegrees:I
    const-string v3, "rotation"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 315
    .end local v0           #metaRotateFilter:Landroid/filterfw/core/Filter;
    .end local v1           #reverseDegrees:I
    .end local v2           #rotateFilter:Landroid/filterfw/core/Filter;
    :cond_0
    return-void
.end method

.method private setRecordingOrientation()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 318
    iget v6, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v6, :cond_0

    .line 319
    new-instance v0, Landroid/filterfw/geometry/Point;

    invoke-direct {v0, v8, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 320
    .local v0, bl:Landroid/filterfw/geometry/Point;
    new-instance v1, Landroid/filterfw/geometry/Point;

    invoke-direct {v1, v9, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 321
    .local v1, br:Landroid/filterfw/geometry/Point;
    new-instance v4, Landroid/filterfw/geometry/Point;

    invoke-direct {v4, v8, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 322
    .local v4, tl:Landroid/filterfw/geometry/Point;
    new-instance v5, Landroid/filterfw/geometry/Point;

    invoke-direct {v5, v9, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 324
    .local v5, tr:Landroid/filterfw/geometry/Point;
    iget v6, p0, Lcom/android/camera/EffectsRecorder;->mCameraFacing:I

    if-nez v6, :cond_1

    .line 326
    new-instance v3, Landroid/filterfw/geometry/Quad;

    invoke-direct {v3, v0, v1, v4, v5}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 338
    .local v3, recordingRegion:Landroid/filterfw/geometry/Quad;
    :goto_0
    iget-object v6, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v6}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v6

    const-string v7, "recorder"

    invoke-virtual {v6, v7}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v2

    .line 339
    .local v2, recorder:Landroid/filterfw/core/Filter;
    const-string v6, "inputRegion"

    invoke-virtual {v2, v6, v3}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    .end local v0           #bl:Landroid/filterfw/geometry/Point;
    .end local v1           #br:Landroid/filterfw/geometry/Point;
    .end local v2           #recorder:Landroid/filterfw/core/Filter;
    .end local v3           #recordingRegion:Landroid/filterfw/geometry/Quad;
    .end local v4           #tl:Landroid/filterfw/geometry/Point;
    .end local v5           #tr:Landroid/filterfw/geometry/Point;
    :cond_0
    return-void

    .line 330
    .restart local v0       #bl:Landroid/filterfw/geometry/Point;
    .restart local v1       #br:Landroid/filterfw/geometry/Point;
    .restart local v4       #tl:Landroid/filterfw/geometry/Point;
    .restart local v5       #tr:Landroid/filterfw/geometry/Point;
    :cond_1
    iget v6, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    const/16 v7, 0xb4

    if-ne v6, v7, :cond_3

    .line 332
    :cond_2
    new-instance v3, Landroid/filterfw/geometry/Quad;

    invoke-direct {v3, v1, v0, v5, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .restart local v3       #recordingRegion:Landroid/filterfw/geometry/Quad;
    goto :goto_0

    .line 335
    .end local v3           #recordingRegion:Landroid/filterfw/geometry/Quad;
    :cond_3
    new-instance v3, Landroid/filterfw/geometry/Quad;

    invoke-direct {v3, v4, v5, v0, v1}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .restart local v3       #recordingRegion:Landroid/filterfw/geometry/Quad;
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized disconnectCamera()V
    .locals 2

    .prologue
    .line 732
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    const-string v1, "Disconnecting the effects from Camera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/EffectsRecorder;->stopCameraPreview()V

    .line 734
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    monitor-exit p0

    return-void

    .line 732
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectDisplay()V
    .locals 3

    .prologue
    .line 718
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "EffectsRecorder"

    const-string v2, "Disconnecting the graph from the SurfaceTexture"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_0
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v1}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v1

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    check-cast v0, Landroid/filterpacks/videosrc/SurfaceTextureTarget;

    .line 722
    .local v0, display:Landroid/filterpacks/videosrc/SurfaceTextureTarget;
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    invoke-virtual {v1}, Landroid/filterfw/GraphEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterpacks/videosrc/SurfaceTextureTarget;->disconnect(Landroid/filterfw/core/FilterContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    monitor-exit p0

    return-void

    .line 718
    .end local v0           #display:Landroid/filterpacks/videosrc/SurfaceTextureTarget;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized enable3ALocks(Z)V
    .locals 3
    .parameter "toggle"

    .prologue
    .line 825
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "EffectsRecorder"

    const-string v2, "Enable3ALocks"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_0
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_2

    .line 827
    const-string v1, "EffectsRecorder"

    const-string v2, "Camera already null. Not enabling 3A locks."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    :cond_1
    monitor-exit p0

    return-void

    .line 830
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 831
    .local v0, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {p0, p1}, Lcom/android/camera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 832
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Attempt to lock 3A on camera with no locking support!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 825
    .end local v0           #params:Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized release()V
    .locals 3

    .prologue
    .line 908
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Releasing ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 917
    :goto_0
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_1

    .line 918
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 919
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraSound:Landroid/media/MediaActionSound;

    .line 921
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    monitor-exit p0

    return-void

    .line 914
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/EffectsRecorder;->stopPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 908
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 910
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setCamera(Landroid/hardware/Camera;)V
    .locals 2
    .parameter "cameraDevice"

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 151
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    .line 142
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCamera cannot be called while previewing!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 144
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCamera cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCamera called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCameraDisplayOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 357
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-eqz v0, :cond_0

    .line 358
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCameraDisplayOrientation called after configuration!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_0
    iput p1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDisplayOrientation:I

    .line 362
    return-void
.end method

.method public setCameraFacing(I)V
    .locals 2
    .parameter "facing"

    .prologue
    .line 365
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 372
    iput p1, p0, Lcom/android/camera/EffectsRecorder;->mCameraFacing:I

    .line 373
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->setRecordingOrientation()V

    .line 374
    return-void

    .line 367
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCameraFacing called on alrady released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public setCaptureRate(D)V
    .locals 3
    .parameter "fps"

    .prologue
    .line 232
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 242
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting time lapse capture rate to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    iput-wide p1, p0, Lcom/android/camera/EffectsRecorder;->mCaptureRate:D

    .line 244
    return-void

    .line 234
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCaptureRate cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCaptureRate called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEffect(ILjava/lang/Object;)V
    .locals 3
    .parameter "effect"
    .parameter "effectParameter"

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEffect: effect ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 289
    iput p1, p0, Lcom/android/camera/EffectsRecorder;->mEffect:I

    .line 290
    iput-object p2, p0, Lcom/android/camera/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    .line 292
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 294
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/EffectsRecorder;->initializeEffect(Z)V

    .line 296
    :cond_2
    return-void

    .line 282
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setEffect cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setEffect called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEffectsListener(Lcom/android/camera/EffectsRecorder$EffectsListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mEffectsListener:Lcom/android/camera/EffectsRecorder$EffectsListener;

    .line 305
    return-void
.end method

.method public declared-synchronized setMaxDuration(I)V
    .locals 2
    .parameter "maxDurationMs"

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 227
    iput p1, p0, Lcom/android/camera/EffectsRecorder;->mMaxDurationMs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 220
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxDuration cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 222
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxDuration called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized setMaxFileSize(J)V
    .locals 2
    .parameter "maxFileSize"

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 210
    iput-wide p1, p0, Lcom/android/camera/EffectsRecorder;->mMaxFileSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 203
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxFileSize cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 205
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setMaxFileSize called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
    .locals 2
    .parameter "errorListener"

    .prologue
    .line 390
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 399
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 400
    return-void

    .line 392
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setErrorListener cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setErrorListener called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .locals 2
    .parameter "infoListener"

    .prologue
    .line 377
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 386
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 387
    return-void

    .line 379
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setInfoListener cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setInfoListener called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOrientationHint(I)V
    .locals 3
    .parameter "degrees"

    .prologue
    .line 343
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 350
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting orientation hint to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    iput p1, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    .line 352
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->setFaceDetectOrientation()V

    .line 353
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->setRecordingOrientation()V

    .line 354
    return-void

    .line 345
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOrientationHint called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public setOutputFile(Ljava/io/FileDescriptor;)V
    .locals 2
    .parameter "fd"

    .prologue
    .line 181
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    .line 191
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 192
    return-void

    .line 183
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 2
    .parameter "outputFile"

    .prologue
    .line 167
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 176
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    .line 178
    return-void

    .line 169
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setOutputFile called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .parameter "previewSurfaceTexture"
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewSurfaceTexture("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 261
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 262
    iput p2, p0, Lcom/android/camera/EffectsRecorder;->mPreviewWidth:I

    .line 263
    iput p3, p0, Lcom/android/camera/EffectsRecorder;->mPreviewHeight:I

    .line 265
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_1

    .line 274
    :goto_0
    return-void

    .line 252
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setPreviewSurfaceTexture cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setPreviewSurfaceTexture called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/EffectsRecorder;->startPreview()V

    goto :goto_0

    .line 271
    :pswitch_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/EffectsRecorder;->initializeEffect(Z)V

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 265
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setProfile(Landroid/media/CamcorderProfile;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 155
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 163
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    .line 164
    return-void

    .line 157
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setProfile cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setProfile called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized startPreview()V
    .locals 3

    .prologue
    .line 503
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting preview ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 519
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mEffect:I

    if-nez v0, :cond_1

    .line 520
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No effect selected!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 509
    :pswitch_0
    :try_start_1
    const-string v0, "EffectsRecorder"

    const-string v1, "startPreview called when already running preview"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 545
    :goto_0
    monitor-exit p0

    return-void

    .line 512
    :pswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot start preview when already recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setEffect called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 523
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No effect parameter provided!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_2
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    if-nez v0, :cond_3

    .line 526
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No recording profile provided!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_3
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_5

    .line 529
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_4

    const-string v0, "EffectsRecorder"

    const-string v1, "Passed a null surface; waiting for valid one"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_4
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    goto :goto_0

    .line 533
    :cond_5
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_6

    .line 534
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No camera to record from!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_7

    const-string v0, "EffectsRecorder"

    const-string v1, "Initializing filter framework and running the graph."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/EffectsRecorder;->initializeFilterFramework()V

    .line 540
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/EffectsRecorder;->initializeEffect(Z)V

    .line 542
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    .line 543
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v0}, Landroid/filterfw/core/GraphRunner;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 505
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized startRecording()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 637
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v4, :cond_0

    const-string v4, "EffectsRecorder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting recording ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_0
    iget v4, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 649
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    if-nez v4, :cond_1

    .line 650
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "No output file name or descriptor provided!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 641
    :pswitch_0
    :try_start_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Already recording, cannot begin anew!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 643
    :pswitch_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "startRecording called on an already released recorder!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 653
    :cond_1
    iget v4, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    if-nez v4, :cond_2

    .line 654
    invoke-virtual {p0}, Lcom/android/camera/EffectsRecorder;->startPreview()V

    .line 657
    :cond_2
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v4}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v4

    const-string v5, "recorder"

    invoke-virtual {v4, v5}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v1

    .line 658
    .local v1, recorder:Landroid/filterfw/core/Filter;
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    if-eqz v4, :cond_5

    .line 659
    const-string v4, "outputFileDescriptor"

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 665
    :goto_0
    const-string v4, "audioSource"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 667
    const-string v4, "recordingProfile"

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 668
    const-string v4, "orientationHint"

    iget v5, p0, Lcom/android/camera/EffectsRecorder;->mOrientationHint:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 673
    iget-wide v4, p0, Lcom/android/camera/EffectsRecorder;->mCaptureRate:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_6

    .line 674
    .local v0, captureTimeLapse:Z
    :goto_1
    if-eqz v0, :cond_7

    .line 675
    const-wide/high16 v4, 0x3ff0

    iget-wide v6, p0, Lcom/android/camera/EffectsRecorder;->mCaptureRate:D

    div-double v2, v4, v6

    .line 676
    .local v2, timeBetweenFrameCapture:D
    const-string v4, "timelapseRecordingIntervalUs"

    const-wide v5, 0x412e848000000000L

    mul-double/2addr v5, v2

    double-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 682
    .end local v2           #timeBetweenFrameCapture:D
    :goto_2
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    if-eqz v4, :cond_3

    .line 683
    const-string v4, "infoListener"

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 685
    :cond_3
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    if-eqz v4, :cond_4

    .line 686
    const-string v4, "errorListener"

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 688
    :cond_4
    const-string v4, "maxFileSize"

    iget-wide v5, p0, Lcom/android/camera/EffectsRecorder;->mMaxFileSize:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 689
    const-string v4, "maxDurationMs"

    iget v5, p0, Lcom/android/camera/EffectsRecorder;->mMaxDurationMs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 690
    const-string v4, "recording"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 691
    iget-object v4, p0, Lcom/android/camera/EffectsRecorder;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/media/MediaActionSound;->play(I)V

    .line 692
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/camera/EffectsRecorder;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 693
    monitor-exit p0

    return-void

    .line 661
    .end local v0           #captureTimeLapse:Z
    :cond_5
    :try_start_2
    const-string v4, "outputFile"

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 673
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 679
    .restart local v0       #captureTimeLapse:Z
    :cond_7
    const-string v4, "timelapseRecordingIntervalUs"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 639
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized stopCameraPreview()V
    .locals 3

    .prologue
    .line 741
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "EffectsRecorder"

    const-string v2, "Stopping camera preview."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_0
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    .line 743
    const-string v1, "EffectsRecorder"

    const-string v2, "Camera already null. Nothing to disconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    :goto_0
    monitor-exit p0

    return-void

    .line 746
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 748
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 749
    :catch_0
    move-exception v0

    .line 750
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to disconnect camera"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 741
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopPreview()V
    .locals 3

    .prologue
    .line 756
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping preview ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_0
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    sparse-switch v0, :sswitch_data_0

    .line 767
    iget v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 768
    invoke-virtual {p0}, Lcom/android/camera/EffectsRecorder;->stopRecording()V

    .line 771
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I

    .line 774
    invoke-virtual {p0}, Lcom/android/camera/EffectsRecorder;->stopCameraPreview()V

    .line 776
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    .line 777
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    .line 778
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v0}, Landroid/filterfw/core/GraphRunner;->stop()V

    .line 779
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    :goto_0
    monitor-exit p0

    return-void

    .line 759
    :sswitch_0
    :try_start_1
    const-string v0, "EffectsRecorder"

    const-string v1, "StopPreview called when preview not active!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 756
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 762
    :sswitch_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stopPreview called on released EffectsRecorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 757
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public declared-synchronized stopRecording()V
    .locals 4

    .prologue
    .line 696
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "EffectsRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop recording ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_0
    iget v1, p0, Lcom/android/camera/EffectsRecorder;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 709
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v1}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v1

    const-string v2, "recorder"

    invoke-virtual {v1, v2}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 710
    .local v0, recorder:Landroid/filterfw/core/Filter;
    const-string v1, "recording"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 711
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaActionSound;->play(I)V

    .line 712
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/camera/EffectsRecorder;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    .end local v0           #recorder:Landroid/filterfw/core/Filter;
    :goto_0
    monitor-exit p0

    return-void

    .line 702
    :pswitch_1
    :try_start_1
    const-string v1, "EffectsRecorder"

    const-string v2, "StopRecording called when recording not active!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 696
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 705
    :pswitch_2
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "stopRecording called on released EffectsRecorder!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 698
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method declared-synchronized tryEnable3ALocks(Z)Z
    .locals 4
    .parameter "toggle"

    .prologue
    const/4 v1, 0x0

    .line 806
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v2, :cond_0

    const-string v2, "EffectsRecorder"

    const-string v3, "tryEnable3ALocks"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_0
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v2, :cond_2

    .line 808
    const-string v2, "EffectsRecorder"

    const-string v3, "Camera already null. Not tryenabling 3A locks."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 811
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 812
    .local v0, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 814
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 815
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 816
    iget-object v1, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 817
    const/4 v1, 0x1

    goto :goto_0

    .line 806
    .end local v0           #params:Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method tryEnableVideoStabilization(Z)Z
    .locals 5
    .parameter "toggle"

    .prologue
    const/4 v2, 0x0

    .line 786
    iget-boolean v3, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_0

    const-string v3, "EffectsRecorder"

    const-string v4, "tryEnableVideoStabilization."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_0
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v3, :cond_2

    .line 788
    const-string v3, "EffectsRecorder"

    const-string v4, "Camera already null. Not enabling video stabilization."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_1
    :goto_0
    return v2

    .line 791
    :cond_2
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 793
    .local v0, params:Landroid/hardware/Camera$Parameters;
    const-string v3, "video-stabilization-supported"

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 794
    .local v1, vstabSupported:Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 795
    iget-boolean v2, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v2, :cond_3

    const-string v2, "EffectsRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting video stabilization to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_3
    const-string v3, "video-stabilization"

    if-eqz p1, :cond_4

    const-string v2, "true"

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 798
    const/4 v2, 0x1

    goto :goto_0

    .line 796
    :cond_4
    const-string v2, "false"

    goto :goto_1

    .line 800
    :cond_5
    iget-boolean v3, p0, Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z

    if-eqz v3, :cond_1

    const-string v3, "EffectsRecorder"

    const-string v4, "Video stabilization not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
