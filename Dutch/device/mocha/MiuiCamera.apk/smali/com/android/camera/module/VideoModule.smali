.class public Lcom/android/camera/module/VideoModule;
.super Lcom/android/camera/module/BaseModule;
.source "VideoModule.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/android/camera/EffectsRecorder$EffectsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/VideoModule$SavingTask;,
        Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;,
        Lcom/android/camera/module/VideoModule$MyBroadcastReceiver;,
        Lcom/android/camera/module/VideoModule$MainHandler;
    }
.end annotation


# static fields
.field private static HOLD_WHEN_SAVING_VIDEO:Z

.field private static final VIDEO_MIN_SINGLE_FILE_SIZE:J


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBaseFileName:Ljava/lang/String;

.field private mCameraDisplayOrientation:I

.field private mCaptureTimeLapse:Z

.field private volatile mCurrentFileNumber:I

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mDesiredPreviewHeight:I

.field private mDesiredPreviewWidth:I

.field private mDisplayRotation:I

.field private mEffectParameter:Ljava/lang/Object;

.field private mEffectType:I

.field private mEffectUriFromGallery:Ljava/lang/String;

.field private mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

.field private mFocusAreaSupported:Z

.field private mFocusManager:Lcom/android/camera/FocusManagerSimple;

.field protected final mHandler:Landroid/os/Handler;

.field protected mHfr:Ljava/lang/String;

.field private mIsFromStop:Z

.field private mIsTouchFocused:Z

.field private mIsVideoCaptureIntent:Z

.field private mLastBackPressedTime:J

.field protected mMaxVideoDurationInMs:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private volatile mMediaRecorderRecording:Z

.field private mMeteringAreaSupported:Z

.field private mOnResumeTime:J

.field private mOrientationCompensationAtRecordStart:I

.field private mPrefVideoEffectDefault:Ljava/lang/String;

.field protected mPreviewing:Z

.field private mProfile:Landroid/media/CamcorderProfile;

.field protected mQuality:I

.field private mQuickCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field public volatile mRecorderBusy:Z

.field private mRecorderCameraReleased:Z

.field private mRecordingStartTime:J

.field private mRecordingTimeCountsDown:Z

.field private mResetEffect:Z

.field protected mRestartPreview:Z

.field private mRestartVideoRecordingThread:Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;

.field private mSnapshotInProgress:Z

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mSwitchingCamera:Z

.field private mThumbnail:Lcom/android/camera/Thumbnail;

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mUIRestoreRunnable:Ljava/lang/Runnable;

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mVideoFocusMode:Ljava/lang/String;

.field protected mVideoHeight:I

.field private mVideoSavedRunnable:Ljava/lang/Runnable;

.field private mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

.field protected mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 124
    const-wide/32 v0, 0x800000

    const-wide/32 v2, 0x3200000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/android/camera/module/VideoModule;->VIDEO_MIN_SINGLE_FILE_SIZE:J

    .line 160
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/module/VideoModule;->HOLD_WHEN_SAVING_VIDEO:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 94
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    .line 139
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    .line 156
    iput-object v3, p0, Lcom/android/camera/module/VideoModule;->mRestartVideoRecordingThread:Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;

    .line 158
    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderCameraReleased:Z

    .line 165
    iput v2, p0, Lcom/android/camera/module/VideoModule;->mEffectType:I

    .line 166
    iput-object v3, p0, Lcom/android/camera/module/VideoModule;->mEffectParameter:Ljava/lang/Object;

    .line 167
    iput-object v3, p0, Lcom/android/camera/module/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    .line 169
    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mResetEffect:Z

    .line 170
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/module/VideoModule;->mLastBackPressedTime:J

    .line 173
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    .line 175
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mRecordingTimeCountsDown:Z

    .line 177
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 199
    iput v2, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 210
    new-instance v0, Lcom/android/camera/module/VideoModule$MainHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/camera/module/VideoModule$MainHandler;-><init>(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    .line 215
    const-string v0, "normal"

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    .line 216
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    .line 316
    iput-object v3, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1624
    new-instance v0, Lcom/android/camera/module/VideoModule$3;

    invoke-direct {v0, p0}, Lcom/android/camera/module/VideoModule$3;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mUIRestoreRunnable:Ljava/lang/Runnable;

    .line 1980
    new-instance v0, Lcom/android/camera/module/VideoModule$8;

    invoke-direct {v0, p0}, Lcom/android/camera/module/VideoModule$8;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavedRunnable:Ljava/lang/Runnable;

    .line 2701
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/module/VideoModule;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->updateCameraScreenNailSize(II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/module/VideoModule;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->showUserMsg(I)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/camera/module/VideoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mIsTouchFocused:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/module/VideoModule;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->switchToOtherMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/module/VideoModule;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/module/VideoModule;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->showRecordingUI(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/module/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->keepScreenOnAwhile()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/module/VideoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/module/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->effectsActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/Thumbnail;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mThumbnail:Lcom/android/camera/Thumbnail;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/camera/module/VideoModule;Lcom/android/camera/Thumbnail;)Lcom/android/camera/Thumbnail;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mThumbnail:Lcom/android/camera/Thumbnail;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/camera/module/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->subStopRecording()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/camera/module/VideoModule;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/camera/module/VideoModule;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/camera/module/VideoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    return v0
.end method

.method static synthetic access$2404(Lcom/android/camera/module/VideoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/module/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startRecordVideo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/camera/module/VideoModule;Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->addVideoToMediaStore(Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/Thumbnail;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/module/VideoModule;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mUIRestoreRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;)Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/camera/module/VideoModule;->mRestartVideoRecordingThread:Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/module/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/camera/module/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->addVideoToMediaStore()Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/module/VideoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/module/VideoModule$SavingTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/camera/module/VideoModule;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/camera/module/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mQuickCapture:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/camera/module/VideoModule;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->doReturnToCaller(Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->animateSlide()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/module/VideoModule;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/module/VideoModule;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startPreview()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/module/VideoModule;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/android/camera/module/VideoModule;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/module/VideoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/module/VideoModule;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    return v0
.end method

.method private addVideoToMediaStore()Z
    .locals 2

    .prologue
    .line 1569
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-direct {p0, v1}, Lcom/android/camera/module/VideoModule;->addVideoToMediaStore(Landroid/content/ContentValues;)Z

    move-result v0

    .line 1570
    .local v0, fail:Z
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1571
    return v0
.end method

.method private addVideoToMediaStore(Landroid/content/ContentValues;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1517
    .line 1518
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_4

    .line 1519
    const-string v0, "_size"

    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1521
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->getDuration(Ljava/lang/String;)J

    move-result-wide v0

    .line 1522
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    .line 1523
    iget-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v4, :cond_0

    .line 1524
    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/VideoModule;->getTimeLapseVideoLength(J)J

    move-result-wide v0

    .line 1526
    :cond_0
    const-string v4, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1533
    :try_start_0
    const-string v0, "_data"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1534
    iget v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    if-lez v1, :cond_1

    .line 1535
    const-string v1, "_%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1536
    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/VideoModule;->insertPostfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1537
    const-string v4, "_data"

    invoke-virtual {p1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    const-string v4, "title"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mBaseFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    const-string v4, "_display_name"

    const-string v5, "_display_name"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/android/camera/module/VideoModule;->insertPostfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1544
    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1548
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->addSecureNum(I)V

    .line 1549
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1550
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.hardware.action.NEW_VIDEO"

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1552
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/storage/Storage;->saveToCloudAlbum(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1562
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current video URI: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :goto_1
    move v2, v0

    .line 1565
    :goto_2
    return v2

    .line 1528
    :cond_2
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video duration <= 0 delete file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 1546
    :cond_3
    :try_start_1
    const-string v0, "_data"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1553
    :catch_0
    move-exception v0

    .line 1556
    :try_start_2
    const-string v1, "videocamera"

    const-string v2, "failed to add video to media store"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1557
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->addSecureNum(I)V

    .line 1558
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1559
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1562
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current video URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 1563
    goto :goto_1

    .line 1562
    :catchall_0
    move-exception v0

    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current video URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method private animateHold()V
    .locals 2

    .prologue
    .line 2011
    sget-boolean v0, Lcom/android/camera/module/VideoModule;->HOLD_WHEN_SAVING_VIDEO:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 2012
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateHold(I)V

    .line 2014
    :cond_0
    return-void
.end method

.method private animateSlide()V
    .locals 1

    .prologue
    .line 2017
    sget-boolean v0, Lcom/android/camera/module/VideoModule;->HOLD_WHEN_SAVING_VIDEO:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 2018
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->clearAnimation()V

    .line 2020
    :cond_0
    return-void
.end method

.method private autoFocus(IIZ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0xe

    .line 2661
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2662
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_3

    .line 2663
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->cancelAutoFocus()V

    .line 2664
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2666
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_1

    .line 2667
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/FocusManagerSimple;->getFocusArea(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 2669
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_2

    .line 2670
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusManagerSimple;->getMeteringsArea(II)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 2672
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2673
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/FocusView;->setPosition(II)V

    .line 2674
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showStart()V

    .line 2675
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 2676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsTouchFocused:Z

    .line 2677
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2678
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2681
    :cond_3
    return-void

    .line 2670
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelAutoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2632
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2633
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2635
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 2636
    const-string v1, "macro"

    invoke-static {v1, v0}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2637
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "macro"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2640
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_1

    .line 2641
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 2643
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_2

    .line 2644
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 2646
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2648
    return-void
.end method

.method private checkQualityAndStartPreview()V
    .locals 3

    .prologue
    .line 2590
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    .line 2591
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2592
    .local v0, size:Landroid/hardware/Camera$Size;
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    if-eq v1, v2, :cond_1

    .line 2594
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->resizeForPreviewAspectRatio()V

    .line 2597
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startPreview()V

    .line 2598
    return-void
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1212
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1213
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1214
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty video file deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1218
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 1

    .prologue
    .line 983
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->closeCamera(Z)V

    .line 984
    return-void
.end method

.method private closeCamera(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 998
    const-string v0, "videocamera"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1001
    const-string v0, "videocamera"

    const-string v1, "already stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :goto_0
    return-void

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v0, :cond_1

    .line 1008
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->disconnectCamera()V

    .line 1009
    if-eqz p1, :cond_1

    .line 1010
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->closeEffects()V

    .line 1013
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopPreview()V

    .line 1014
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1015
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1016
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->removeAllAsyncMessage()V

    .line 1017
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 1018
    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 1019
    iput-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    .line 1020
    iput-boolean v3, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    goto :goto_0
.end method

.method private closeEffects()V
    .locals 2

    .prologue
    .line 971
    const-string v0, "videocamera"

    const-string v1, "Closing effects"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-nez v0, :cond_0

    .line 973
    const-string v0, "videocamera"

    const-string v1, "Effects are already closed. Nothing to do"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 978
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mEffectType:I

    .line 979
    return-void
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 2780
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 2782
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2786
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2788
    :cond_0
    return-void

    .line 2783
    :catch_0
    move-exception v0

    .line 2784
    const-string v1, "videocamera"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2761
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2762
    const-string v0, ".mp4"

    .line 2764
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ".3gp"

    goto :goto_0
.end method

.method private convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2754
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2755
    const-string v0, "video/mp4"

    .line 2757
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "video/3gpp"

    goto :goto_0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 3
    .parameter "dateTaken"

    .prologue
    .line 341
    iget v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    if-gtz v2, :cond_0

    .line 342
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 343
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0d00e9

    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 346
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mBaseFileName:Ljava/lang/String;

    .line 347
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mBaseFileName:Ljava/lang/String;

    .line 349
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #dateFormat:Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mBaseFileName:Ljava/lang/String;

    goto :goto_0
.end method

.method private deleteCurrentVideo()V
    .locals 1

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1577
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->deleteVideoFile(Ljava/lang/String;)V

    .line 1578
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1580
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 1581
    return-void
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1584
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1586
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1587
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    :cond_0
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 3
    .parameter "valid"

    .prologue
    .line 1198
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1200
    .local v1, resultIntent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1201
    const/4 v0, -0x1

    .line 1202
    .local v0, resultCode:I
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1206
    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 1207
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->finish()V

    .line 1208
    return-void

    .line 1204
    .end local v0           #resultCode:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #resultCode:I
    goto :goto_0
.end method

.method private effectsActive()Z
    .locals 1

    .prologue
    .line 2442
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mEffectType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private generateVideoFilename(I)V
    .locals 9
    .parameter

    .prologue
    .line 1475
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1476
    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/VideoModule;->createName(J)Ljava/lang/String;

    move-result-object v2

    .line 1478
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1479
    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 1480
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1481
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1482
    new-instance v7, Landroid/content/ContentValues;

    const/4 v8, 0x7

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v7, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1483
    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v8, "title"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v7, "_display_name"

    invoke-virtual {v2, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1486
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "mime_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_data"

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "resolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1492
    if-eqz v0, :cond_0

    .line 1493
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "latitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1494
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "longitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1496
    :cond_0
    iput-object v6, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1497
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New video filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    return-void
.end method

.method private getDesiredPreviewSize()V
    .locals 6

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 729
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    .line 731
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    .line 749
    :goto_0
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDesiredPreviewWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". mDesiredPreviewHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    return-void

    .line 733
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 734
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 735
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v0

    .line 736
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 738
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 739
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 740
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v4

    if-le v0, v2, :cond_2

    .line 741
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 744
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 746
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    .line 747
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    goto :goto_0
.end method

.method private getDuration(Ljava/lang/String;)J
    .locals 3
    .parameter "filePath"

    .prologue
    .line 1501
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1502
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1503
    .local v0, retriever:Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1504
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1506
    .end local v0           #retriever:Landroid/media/MediaMetadataRetriever;
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method private getThumbnail()Lcom/android/camera/Thumbnail;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1836
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 1837
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    const/16 v2, 0x200

    invoke-static {v1, v2}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1839
    .local v0, videoFrame:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1840
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-static {v1, v0, v3, v3}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;IZ)Lcom/android/camera/Thumbnail;

    move-result-object v1

    .line 1843
    .end local v0           #videoFrame:Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTimeLapseVideoLength(J)J
    .locals 6
    .parameter "deltaMs"

    .prologue
    .line 2119
    long-to-double v2, p1

    iget v4, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 2120
    .local v0, numberOfFrames:D
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-double v2, v2

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method private hideAlert()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1875
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->ingoreTouchEvent(Z)V

    .line 1876
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 1877
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewPlayView()Lcom/android/camera/ui/RotateImageView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 1879
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingsStatusBar;->show()V

    .line 1880
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/camera/ui/V6BottomAnimationImageView;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 1881
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/camera/ui/V6ShutterButton;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 1882
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getTopControlPanel()Lcom/android/camera/ui/V6TopControlPanel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6TopControlPanel;->animateIn(Ljava/lang/Runnable;)V

    .line 1883
    return-void
.end method

.method private initializeCapabilities()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2340
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "auto"

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mFocusAreaSupported:Z

    .line 2343
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMeteringAreaSupported:Z

    .line 2344
    return-void

    :cond_0
    move v0, v2

    .line 2340
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2343
    goto :goto_1
.end method

.method private initializeEffectsPreview()V
    .locals 4

    .prologue
    .line 1352
    const-string v0, "videocamera"

    const-string v1, "initializeEffectsPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1392
    :goto_0
    return-void

    .line 1355
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    aget-object v0, v0, v1

    .line 1357
    new-instance v1, Lcom/android/camera/EffectsRecorder;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v1, v2}, Lcom/android/camera/EffectsRecorder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    .line 1361
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/EffectsRecorder;->setCameraDisplayOrientation(I)V

    .line 1362
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/EffectsRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1363
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v1, v0}, Lcom/android/camera/EffectsRecorder;->setCameraFacing(I)V

    .line 1364
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v0, v1}, Lcom/android/camera/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1365
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0, p0}, Lcom/android/camera/EffectsRecorder;->setEffectsListener(Lcom/android/camera/EffectsRecorder$EffectsListener;)V

    .line 1366
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0, p0}, Lcom/android/camera/EffectsRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1367
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0, p0}, Lcom/android/camera/EffectsRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1373
    const/4 v0, 0x0

    .line 1374
    iget v1, p0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1375
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    .line 1377
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1, v0}, Lcom/android/camera/EffectsRecorder;->setOrientationHint(I)V

    .line 1379
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mOrientationCompensation:I

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mOrientationCompensationAtRecordStart:I

    .line 1381
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mSurfaceWidth:I

    iget v3, p0, Lcom/android/camera/module/VideoModule;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/EffectsRecorder;->setPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    .line 1386
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mEffectType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mEffectParameter:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "gallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1388
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mEffectType:I

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1390
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mEffectType:I

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private initializeEffectsRecording()V
    .locals 11

    .prologue
    const-wide v4, 0xdac00000L

    const-wide/16 v2, 0x0

    .line 1395
    const-string v0, "videocamera"

    const-string v1, "initializeEffectsRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1398
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1401
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->closeVideoFileDescriptor()V

    .line 1402
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 1403
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1404
    if-eqz v0, :cond_0

    .line 1406
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "rw"

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1408
    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1414
    :cond_0
    :goto_0
    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1417
    :goto_1
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v6, v7}, Lcom/android/camera/EffectsRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1421
    iget-boolean v6, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v6, :cond_2

    .line 1422
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    const-wide v7, 0x408f400000000000L

    iget v9, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v9, v9

    div-double/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/EffectsRecorder;->setCaptureRate(D)V

    .line 1428
    :goto_2
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v6, :cond_3

    .line 1429
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/camera/EffectsRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1436
    :goto_3
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v6

    const-wide/32 v8, 0x3200000

    sub-long/2addr v6, v8

    .line 1437
    cmp-long v8, v4, v6

    if-gez v8, :cond_5

    .line 1440
    :goto_4
    sget-wide v6, Lcom/android/camera/module/VideoModule;->VIDEO_MIN_SINGLE_FILE_SIZE:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_1

    .line 1441
    sget-wide v4, Lcom/android/camera/module/VideoModule;->VIDEO_MIN_SINGLE_FILE_SIZE:J

    .line 1443
    :cond_1
    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    cmp-long v2, v0, v4

    if-gez v2, :cond_4

    .line 1446
    :goto_5
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/EffectsRecorder;->setMaxFileSize(J)V

    .line 1447
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    invoke-virtual {v0, v1}, Lcom/android/camera/EffectsRecorder;->setMaxDuration(I)V

    .line 1448
    return-void

    .line 1409
    :catch_0
    move-exception v0

    .line 1411
    const-string v6, "videocamera"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1424
    :cond_2
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/EffectsRecorder;->setCaptureRate(D)V

    goto :goto_2

    .line 1431
    :cond_3
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v6}, Lcom/android/camera/module/VideoModule;->generateVideoFilename(I)V

    .line 1432
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/camera/EffectsRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-wide v0, v4

    goto :goto_5

    :cond_5
    move-wide v4, v6

    goto :goto_4

    :cond_6
    move-wide v0, v2

    goto :goto_1
.end method

.method private initializeFocusManager()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 2324
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    aget-object v1, v5, v6

    .line 2325
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    iget v5, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, v2, :cond_0

    .line 2326
    .local v2, mirror:Z
    :goto_0
    iget v5, p0, Lcom/android/camera/module/VideoModule;->mCameraDisplayOrientation:I

    iget v6, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-static {v5, v6}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v3

    .line 2327
    .local v3, orientation:I
    new-instance v5, Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/V6PreviewFrame;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/ui/V6PreviewFrame;->getHeight()I

    move-result v7

    invoke-direct {v5, v6, v7, v2, v3}, Lcom/android/camera/FocusManagerSimple;-><init>(IIZI)V

    iput-object v5, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    .line 2332
    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2333
    .local v0, display:Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 2334
    .local v4, point:Landroid/graphics/Point;
    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2335
    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/FocusManagerSimple;->setPreviewSize(II)V

    .line 2336
    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/FocusManagerSimple;->setRenderSize(II)V

    .line 2337
    return-void

    .line 2325
    .end local v0           #display:Landroid/view/Display;
    .end local v2           #mirror:Z
    .end local v3           #orientation:I
    .end local v4           #point:Landroid/graphics/Point;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initializeMiscControls()V
    .locals 0

    .prologue
    .line 2390
    return-void
.end method

.method private initializeRecorder()V
    .locals 12

    .prologue
    const-wide v4, 0xdac00000L

    const-wide/16 v2, 0x0

    const/4 v9, 0x5

    const/4 v11, 0x1

    .line 1222
    const-string v0, "videocamera"

    const-string v1, "initializeRecorder"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 1349
    :goto_0
    return-void

    .line 1226
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 1227
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1229
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mVideoWidth:I

    .line 1230
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mVideoHeight:I

    .line 1232
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->closeVideoFileDescriptor()V

    .line 1233
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    .line 1234
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1235
    if-eqz v0, :cond_1

    .line 1237
    :try_start_0
    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "rw"

    invoke-virtual {v7, v0, v8}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1239
    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1245
    :cond_1
    :goto_1
    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1247
    :goto_2
    new-instance v7, Landroid/media/MediaRecorder;

    invoke-direct {v7}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v7, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1250
    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v7}, Lcom/android/camera/CameraManager$CameraProxy;->unlock()V

    .line 1251
    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v8}, Lcom/android/camera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1253
    iget-boolean v7, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    if-nez v7, :cond_2

    .line 1254
    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, v9}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1257
    :cond_2
    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, v11}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1258
    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    iput v8, v7, Landroid/media/CamcorderProfile;->duration:I

    .line 1260
    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v8, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1261
    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v8, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 1263
    const-string v7, "android.intent.extra.videoQuality"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1264
    iget v6, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0020

    invoke-virtual {p0, v8}, Lcom/android/camera/module/VideoModule;->getDefaultPreferenceId(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/CameraSettings;->getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1266
    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v8, "pref_video_quality_key"

    invoke-virtual {v7, v8, v6}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1269
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1270
    if-ne v6, v9, :cond_7

    .line 1271
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v7, 0x7a1200

    invoke-virtual {v6, v7}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 1277
    :cond_3
    :goto_3
    iget-boolean v6, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v6, :cond_4

    .line 1278
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide v7, 0x408f400000000000L

    iget v9, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v9, v9

    div-double/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1281
    :cond_4
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    .line 1282
    if-eqz v6, :cond_5

    .line 1283
    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    double-to-float v8, v8

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    double-to-float v6, v9

    invoke-virtual {v7, v8, v6}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 1291
    :cond_5
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v6, :cond_8

    .line 1292
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1299
    :goto_4
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v6

    const-wide/32 v8, 0x3200000

    sub-long/2addr v6, v8

    .line 1300
    cmp-long v8, v4, v6

    if-gez v8, :cond_c

    .line 1301
    const-string v8, "videocamera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "need reduce , now maxFileSize = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    :goto_5
    sget-wide v6, Lcom/android/camera/module/VideoModule;->VIDEO_MIN_SINGLE_FILE_SIZE:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_6

    .line 1305
    sget-wide v4, Lcom/android/camera/module/VideoModule;->VIDEO_MIN_SINGLE_FILE_SIZE:J

    .line 1307
    :cond_6
    cmp-long v2, v0, v2

    if-lez v2, :cond_b

    cmp-long v2, v0, v4

    if-gez v2, :cond_b

    .line 1311
    :goto_6
    :try_start_1
    const-string v2, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maxFileSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1326
    :goto_7
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    aget-object v0, v0, v1

    .line 1327
    iget v1, p0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    .line 1328
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v11, :cond_9

    .line 1329
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 1336
    :goto_8
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 1337
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mOrientationCompensation:I

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mOrientationCompensationAtRecordStart:I

    .line 1340
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1347
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1348
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto/16 :goto_0

    .line 1240
    :catch_0
    move-exception v0

    .line 1242
    const-string v7, "videocamera"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1272
    :cond_7
    const/4 v7, 0x6

    if-ne v6, v7, :cond_3

    .line 1273
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v7, 0xe4e1c0

    invoke-virtual {v6, v7}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    goto/16 :goto_3

    .line 1294
    :cond_8
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v6}, Lcom/android/camera/module/VideoModule;->generateVideoFilename(I)V

    .line 1295
    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1331
    :cond_9
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    goto :goto_8

    .line 1334
    :cond_a
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    goto :goto_8

    .line 1341
    :catch_1
    move-exception v0

    .line 1342
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1343
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    .line 1344
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1313
    :catch_2
    move-exception v0

    goto/16 :goto_7

    :cond_b
    move-wide v0, v4

    goto/16 :goto_6

    :cond_c
    move-wide v4, v6

    goto/16 :goto_5

    :cond_d
    move-wide v0, v2

    goto/16 :goto_2
.end method

.method private insertPostfix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1511
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1512
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1513
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isSelectingCapturedVideo()Z
    .locals 1

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

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

.method private isVideoProcessing()Z
    .locals 1

    .prologue
    .line 2032
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule$SavingTask;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2067
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2068
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2069
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    .line 2062
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2063
    return-void
.end method

.method private static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 17
    .parameter "milliSeconds"
    .parameter "displayCentiSeconds"

    .prologue
    .line 2072
    const-wide/16 v13, 0x3e8

    div-long v10, p0, v13

    .line 2073
    .local v10, seconds:J
    const-wide/16 v13, 0x3c

    div-long v2, v10, v13

    .line 2074
    .local v2, minutes:J
    const-wide/16 v13, 0x3c

    div-long v0, v2, v13

    .line 2075
    .local v0, hours:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v0

    sub-long v6, v2, v13

    .line 2076
    .local v6, remainderMinutes:J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v2

    sub-long v8, v10, v13

    .line 2078
    .local v8, remainderSeconds:J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2081
    .local v12, timeStringBuilder:Ljava/lang/StringBuilder;
    const-wide/16 v13, 0x0

    cmp-long v13, v0, v13

    if-lez v13, :cond_1

    .line 2082
    const-wide/16 v13, 0xa

    cmp-long v13, v0, v13

    if-gez v13, :cond_0

    .line 2083
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2085
    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2087
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2091
    :cond_1
    const-wide/16 v13, 0xa

    cmp-long v13, v6, v13

    if-gez v13, :cond_2

    .line 2092
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2094
    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2095
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2098
    const-wide/16 v13, 0xa

    cmp-long v13, v8, v13

    if-gez v13, :cond_3

    .line 2099
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2101
    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2104
    if-eqz p2, :cond_5

    .line 2105
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2106
    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v10

    sub-long v13, p0, v13

    const-wide/16 v15, 0xa

    div-long v4, v13, v15

    .line 2107
    .local v4, remainderCentiSeconds:J
    const-wide/16 v13, 0xa

    cmp-long v13, v4, v13

    if-gez v13, :cond_4

    .line 2108
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2110
    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2113
    .end local v4           #remainderCentiSeconds:J
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private onFrameLayoutChange(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "v"
    .parameter "rect"

    .prologue
    .line 2768
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/Camera;->onLayoutChange(Landroid/view/View;IIII)V

    .line 2769
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2770
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->setRenderSize(II)V

    .line 2771
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManagerSimple;->setRenderSize(II)V

    .line 2774
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManagerSimple;->setPreviewSize(II)V

    .line 2777
    :cond_0
    return-void
.end method

.method private onRestartVideoRecording()V
    .locals 1

    .prologue
    .line 1688
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRestartVideoRecordingThread:Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;

    if-nez v0, :cond_0

    .line 1689
    new-instance v0, Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;

    invoke-direct {v0, p0}, Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mRestartVideoRecordingThread:Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;

    .line 1690
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRestartVideoRecordingThread:Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;->start()V

    .line 1692
    :cond_0
    return-void
.end method

.method private onSettingsBack()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 1060
    sget-object v0, Lcom/android/camera/CameraSettings;->sVideoChangeManager:Lcom/android/camera/ChangeManager;

    .line 1061
    .local v0, cm:Lcom/android/camera/ChangeManager;
    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1062
    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 1063
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->restorePreferences()V

    .line 1068
    :cond_0
    :goto_0
    return-void

    .line 1064
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1065
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 1066
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    goto :goto_0
.end method

.method private onStopVideoRecording(Z)V
    .locals 0
    .parameter "sync"

    .prologue
    .line 545
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->waitAsyncVideoRecording()V

    .line 546
    if-eqz p1, :cond_0

    .line 547
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoOnPause()V

    .line 551
    :goto_0
    return-void

    .line 549
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    goto :goto_0
.end method

.method private prepareUIByPreviewSize()V
    .locals 7

    .prologue
    .line 754
    sget-boolean v4, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v4, :cond_1

    .line 755
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 758
    :cond_1
    iget v4, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0020

    invoke-virtual {p0, v6}, Lcom/android/camera/module/VideoModule;->getDefaultPreferenceId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, defaultQuality:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v5, "pref_video_quality_key"

    invoke-virtual {v4, v5, v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 763
    .local v3, videoQuality:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 765
    .local v1, quality:I
    const/4 v4, 0x4

    if-ne v1, v4, :cond_2

    .line 766
    const/4 v2, 0x0

    .line 770
    .local v2, uiStyle:I
    :goto_1
    iget v4, p0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    if-eq v2, v4, :cond_0

    .line 771
    iput v2, p0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    .line 772
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget v5, p0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;I)V

    goto :goto_0

    .line 768
    .end local v2           #uiStyle:I
    :cond_2
    const/4 v2, 0x1

    .restart local v2       #uiStyle:I
    goto :goto_1
.end method

.method private releaseEffectsRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1464
    const-string v0, "videocamera"

    const-string v1, "Releasing effects recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 1466
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->cleanupEmptyFile()V

    .line 1467
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 1468
    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    .line 1469
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mEffectType:I

    .line 1471
    :cond_0
    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1472
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1452
    const-string v0, "videocamera"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1454
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->cleanupEmptyFile()V

    .line 1455
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1456
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1457
    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1459
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderCameraReleased:Z

    .line 1460
    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1461
    return-void
.end method

.method private resetEffect()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 2741
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mResetEffect:Z

    if-eqz v2, :cond_0

    .line 2742
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v3, "pref_video_effect_key"

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mPrefVideoEffectDefault:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2744
    .local v0, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mPrefVideoEffectDefault:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2745
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->writeDefaultEffectToPrefs()V

    .line 2750
    .end local v0           #value:Ljava/lang/String;
    :goto_0
    return v1

    .line 2749
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mResetEffect:Z

    .line 2750
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2057
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2058
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2059
    return-void
.end method

.method private resizeForPreviewAspectRatio()V
    .locals 7

    .prologue
    .line 777
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    aget-object v1, v2, v3

    .line 778
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 781
    .local v0, degrees:I
    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, v0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_0

    .line 782
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v3, v3

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/V6PreviewFrame;->setAspectRatio(D)V

    .line 789
    :goto_0
    return-void

    .line 786
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v3, v3

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/V6PreviewFrame;->setAspectRatio(D)V

    goto :goto_0
.end method

.method private restorePreferences()V
    .locals 1

    .prologue
    .line 2432
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2433
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->setZoomValue(I)V

    .line 2435
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFlashButton()Lcom/android/camera/ui/V6FlashButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6FlashButton;->reloadPreference()V

    .line 2436
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPanel()Lcom/android/camera/ui/V6SettingPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPanel;->reloadPreferences()V

    .line 2437
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    .line 2438
    return-void
.end method

.method private setDisplayOrientation()V
    .locals 2

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mDisplayRotation:I

    .line 926
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDisplayOrientation:I

    .line 927
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManagerSimple;->setDisplayOrientation(I)V

    .line 930
    :cond_0
    return-void
.end method

.method private showAlert()V
    .locals 9

    .prologue
    const/16 v8, 0x64

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 1847
    const/4 v0, 0x0

    .line 1848
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v5, :cond_2

    .line 1849
    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/V6PreviewFrame;->getWidth()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1855
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1858
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    .line 1859
    .local v1, info:[Landroid/hardware/Camera$CameraInfo;
    iget v5, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    aget-object v5, v1, v5

    iget v5, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, v3, :cond_3

    move v2, v3

    .line 1860
    .local v2, mirror:Z
    :goto_1
    iget v5, p0, Lcom/android/camera/module/VideoModule;->mOrientationCompensationAtRecordStart:I

    neg-int v5, v5

    invoke-static {v0, v5, v2}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1862
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getReviewImageView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1863
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getReviewImageView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1865
    .end local v1           #info:[Landroid/hardware/Camera$CameraInfo;
    .end local v2           #mirror:Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getReviewPlayView()Lcom/android/camera/ui/RotateImageView;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 1867
    invoke-virtual {p0, v3}, Lcom/android/camera/module/VideoModule;->ingoreTouchEvent(Z)V

    .line 1868
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6SettingsStatusBar;->hide()V

    .line 1869
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v4

    invoke-virtual {v4, v7, v8, v3}, Lcom/android/camera/ui/V6ShutterButton;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 1870
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v4

    invoke-virtual {v4, v7, v8, v3}, Lcom/android/camera/ui/V6BottomAnimationImageView;->animateIn(Ljava/lang/Runnable;IZ)V

    .line 1871
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getTopControlPanel()Lcom/android/camera/ui/V6TopControlPanel;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/camera/ui/V6TopControlPanel;->animateOut(Ljava/lang/Runnable;)V

    .line 1872
    return-void

    .line 1851
    :cond_2
    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1852
    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/V6PreviewFrame;->getWidth()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    .restart local v1       #info:[Landroid/hardware/Camera$CameraInfo;
    :cond_3
    move v2, v4

    .line 1859
    goto :goto_1
.end method

.method private showRecordingUI(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x64

    const/4 v3, 0x1

    .line 1776
    if-eqz p1, :cond_1

    .line 1777
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const v1, 0x7f0201d3

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setImageResource(I)V

    .line 1778
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/V6ShutterButton;->enableControls(Z)V

    .line 1779
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6RecordingTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 1781
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getVideoCaptureButton()Lcom/android/camera/ui/V6VideoCaptureButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6VideoCaptureButton;->setVisibility(I)V

    .line 1783
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getTopControlPanel()Lcom/android/camera/ui/V6TopControlPanel;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/VideoModule$4;

    invoke-direct {v1, p0}, Lcom/android/camera/module/VideoModule$4;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6TopControlPanel;->animateOut(Ljava/lang/Runnable;)V

    .line 1790
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getThumbnailButton()Lcom/android/camera/ui/V6ThumbnailButton;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/VideoModule$5;

    invoke-direct {v1, p0}, Lcom/android/camera/module/VideoModule$5;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/camera/ui/V6ThumbnailButton;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 1798
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 1799
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewCancledView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0, v5, v4, v3}, Lcom/android/camera/ui/V6BottomAnimationImageView;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 1833
    :goto_0
    return-void

    .line 1801
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModulePicker()Lcom/android/camera/ui/V6ModulePicker;

    move-result-object v0

    invoke-virtual {v0, v5, v4, v3}, Lcom/android/camera/ui/V6ModulePicker;->animateOut(Ljava/lang/Runnable;IZ)V

    goto :goto_0

    .line 1805
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const v1, 0x7f0201d2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setImageResource(I)V

    .line 1806
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getVideoCaptureButton()Lcom/android/camera/ui/V6VideoCaptureButton;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6VideoCaptureButton;->setVisibility(I)V

    .line 1808
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/VideoModule$6;

    invoke-direct {v1, p0}, Lcom/android/camera/module/VideoModule$6;-><init>(Lcom/android/camera/module/VideoModule;)V

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/V6RecordingTimeView;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 1818
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPauseRecordingButton()Lcom/android/camera/ui/V6PauseRecordingButton;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/VideoModule$7;

    invoke-direct {v1, p0}, Lcom/android/camera/module/VideoModule$7;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/camera/ui/V6PauseRecordingButton;->animateOut(Ljava/lang/Runnable;IZ)V

    .line 1826
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_2

    .line 1827
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->showAlert()V

    .line 1828
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewCancledView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0, v5, v4, v3}, Lcom/android/camera/ui/V6BottomAnimationImageView;->animateIn(Ljava/lang/Runnable;IZ)V

    goto :goto_0

    .line 1830
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getModulePicker()Lcom/android/camera/ui/V6ModulePicker;

    move-result-object v0

    invoke-virtual {v0, v5, v4, v3}, Lcom/android/camera/ui/V6ModulePicker;->animateIn(Ljava/lang/Runnable;IZ)V

    goto :goto_0
.end method

.method private showUserMsg(I)V
    .locals 4
    .parameter

    .prologue
    .line 2791
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 2792
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const v2, 0x7f0d0119

    iget v3, p0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 2798
    :cond_0
    :goto_0
    return-void

    .line 2794
    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 2795
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const v2, 0x7f0d011a

    iget v3, p0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateTextToast;->show()V

    goto :goto_0
.end method

.method private startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 502
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 503
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v3}, Lcom/android/camera/module/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2, v1}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :goto_0
    return-void

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 933
    const-string v0, "videocamera"

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 935
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    if-ne v0, v2, :cond_0

    .line 936
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopPreview()V

    .line 937
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->release()V

    .line 942
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->setDisplayOrientation()V

    .line 943
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 944
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->setCameraParameters()V

    .line 946
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 947
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 948
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    .line 961
    return-void

    .line 950
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mSurfaceWidth:I

    .line 951
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mSurfaceHeight:I

    .line 952
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeEffectsPreview()V

    .line 953
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->startPreview()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 955
    :catch_0
    move-exception v0

    .line 956
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    .line 957
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview or setPreviewSurfaceTexture failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private startRecordVideo()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1696
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->effectsActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1697
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeEffectsRecording()V

    .line 1698
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    if-nez v1, :cond_1

    .line 1699
    const-string v1, "videocamera"

    const-string v2, "Fail to initialize effect recorder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    :goto_0
    return v0

    .line 1703
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeRecorder()V

    .line 1704
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_1

    .line 1705
    const-string v1, "videocamera"

    const-string v2, "Fail to initialize media recorder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1710
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->effectsActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1712
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v1}, Lcom/android/camera/EffectsRecorder;->startRecording()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1729
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1713
    :catch_0
    move-exception v1

    .line 1714
    const-string v2, "videocamera"

    const-string v3, "Could not start effects recorder. "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1715
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseEffectsRecorder()V

    goto :goto_0

    .line 1720
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1721
    :catch_1
    move-exception v1

    .line 1722
    const-string v2, "videocamera"

    const-string v3, "Could not start media recorder. "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1723
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    .line 1725
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->lock()V

    goto :goto_0
.end method

.method private startVideoRecording()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1747
    const-string v0, "videocamera"

    const-string v2, "startVideoRecording"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    iput-object v5, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1749
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    .line 1751
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startRecordVideo()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1773
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 1749
    goto :goto_0

    .line 1752
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 1754
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 1755
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    .line 1757
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v5, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1762
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1763
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.start_video_recording"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1764
    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    .line 1765
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v2, "video_recorded_key"

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 1766
    iput-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    .line 1767
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mRecorderCameraReleased:Z

    .line 1768
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/VideoModule;->mRecordingStartTime:J

    .line 1769
    invoke-direct {p0, v4}, Lcom/android/camera/module/VideoModule;->showRecordingUI(Z)V

    .line 1771
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateRecordingTime()V

    .line 1772
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->keepScreenOn()V

    goto :goto_1
.end method

.method private stopPreview()V
    .locals 2

    .prologue
    .line 964
    const-string v0, "videocamera"

    const-string v1, "Guru : Stop Preview"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 966
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    .line 967
    return-void
.end method

.method private stopVideoOnPause()V
    .locals 4

    .prologue
    .line 2036
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopVideoOnPause() mMediaRecorderRecording =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRecorderBusy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    const/4 v0, 0x0

    .line 2038
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_0

    .line 2039
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    .line 2040
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isVideoProcessing()Z

    move-result v0

    .line 2045
    :goto_0
    if-eqz v0, :cond_1

    .line 2046
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->waitForRecorder()V

    .line 2051
    :goto_1
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopVideoOnPause()  videoSaving="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mVideoSavingTask="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mMediaRecorderRecording="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    return-void

    .line 2043
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    goto :goto_0

    .line 2049
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->closeVideoFileDescriptor()V

    goto :goto_1
.end method

.method private stopVideoRecordingAsync()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2023
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_1

    .line 2029
    :cond_0
    :goto_0
    return-void

    .line 2024
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->updateLoadUI(Z)V

    .line 2025
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->animateHold()V

    .line 2026
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 2027
    new-instance v0, Lcom/android/camera/module/VideoModule$SavingTask;

    invoke-direct {v0, p0}, Lcom/android/camera/module/VideoModule$SavingTask;-><init>(Lcom/android/camera/module/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    .line 2028
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule$SavingTask;->start()V

    goto :goto_0
.end method

.method private subStopRecording()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1886
    monitor-enter p0

    .line 1888
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 1890
    :try_start_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1895
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->stopRecording()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v2

    .line 1902
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1903
    const-string v0, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopVideoRecording: Setting current video filename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v1

    .line 1923
    :goto_1
    :try_start_3
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v1, :cond_1

    .line 1926
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->effectsActive()Z

    move-result v1

    if-nez v1, :cond_0

    move v2, v3

    .line 1927
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/module/VideoModule;->closeCamera(Z)V

    :cond_1
    move v2, v0

    .line 1932
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1933
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    .line 1935
    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v2

    .line 1897
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1898
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1899
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    move v1, v3

    .line 1900
    goto :goto_0

    .line 1905
    :catch_0
    move-exception v0

    move v1, v2

    .line 1906
    :goto_2
    :try_start_5
    const-string v4, "videocamera"

    const-string v5, "stop fail"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1907
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->deleteVideoFile(Ljava/lang/String;)V

    .line 1908
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    .line 1909
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isVideoProcessing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1910
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mUIRestoreRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_6
    move v0, v1

    goto :goto_1

    .line 1936
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 1905
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private switchCamera()V
    .locals 2

    .prologue
    .line 2496
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2528
    :goto_0
    return-void

    .line 2498
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2499
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    .line 2501
    :cond_1
    const-string v0, "videocamera"

    const-string v1, "Start to switch camera."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mPendingSwitchCameraId:I

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    .line 2503
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mPendingSwitchCameraId:I

    .line 2504
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 2505
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->resetZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 2506
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    .line 2507
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getPreferencesLocalId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 2508
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    .line 2509
    new-instance v0, Lcom/android/camera/module/BaseModule$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 2510
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;->start()V

    .line 2512
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2516
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    .line 2517
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startPreview()V

    .line 2518
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onCameraOpen()V

    .line 2519
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeCapabilities()V

    .line 2522
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->initializeZoom()V

    .line 2523
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->initializeExposureCompensation()V

    .line 2524
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mOrientationCompensation:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/VideoModule;->setOrientationIndicator(IZ)V

    .line 2527
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->animateSwitchCameraBefore()V

    goto :goto_0

    .line 2513
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private switchToOtherMode(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 2347
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2349
    :goto_0
    return v0

    .line 2348
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->switchToOtherModule(I)V

    .line 2349
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateCameraScreenNailSize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2309
    iget v1, p0, Lcom/android/camera/module/VideoModule;->mCameraDisplayOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-eqz v1, :cond_0

    .line 2310
    move v0, p1

    .line 2311
    .local v0, tmp:I
    move p1, p2

    .line 2312
    move p2, v0

    .line 2314
    .end local v0           #tmp:I
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getHeight()I

    move-result v1

    if-ne v1, p2, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    if-eqz v1, :cond_2

    .line 2317
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/CameraScreenNail;->setSize(II)V

    .line 2318
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/FocusManagerSimple;->setRenderSize(II)V

    .line 2321
    :cond_2
    return-void
.end method

.method private updateEffectSelection()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2548
    iget v2, p0, Lcom/android/camera/module/VideoModule;->mEffectType:I

    .line 2549
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mEffectParameter:Ljava/lang/Object;

    .line 2550
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->readEffectType(Landroid/content/SharedPreferences;)I

    move-result v4

    iput v4, p0, Lcom/android/camera/module/VideoModule;->mEffectType:I

    .line 2551
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/module/VideoModule;->mEffectParameter:Ljava/lang/Object;

    .line 2553
    iget v4, p0, Lcom/android/camera/module/VideoModule;->mEffectType:I

    if-ne v4, v2, :cond_2

    .line 2554
    iget v4, p0, Lcom/android/camera/module/VideoModule;->mEffectType:I

    if-nez v4, :cond_1

    .line 2584
    :cond_0
    :goto_0
    return v0

    .line 2555
    :cond_1
    iget-object v4, p0, Lcom/android/camera/module/VideoModule;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2557
    :cond_2
    const-string v3, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New effect selection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v6, "pref_video_effect_key"

    const-string v7, "none"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    iget v3, p0, Lcom/android/camera/module/VideoModule;->mEffectType:I

    if-nez v3, :cond_3

    .line 2562
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v2}, Lcom/android/camera/EffectsRecorder;->stopPreview()V

    .line 2563
    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    move v0, v1

    .line 2564
    goto :goto_0

    .line 2566
    :cond_3
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mEffectType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mEffectParameter:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v3, "gallery"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2569
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2570
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "video/*"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2572
    const-string v2, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2573
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3}, Lcom/android/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 2574
    goto :goto_0

    .line 2576
    :cond_4
    if-nez v2, :cond_5

    .line 2578
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopPreview()V

    .line 2579
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->checkQualityAndStartPreview()V

    :goto_1
    move v0, v1

    .line 2584
    goto :goto_0

    .line 2582
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mEffectType:I

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/EffectsRecorder;->setEffect(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private updateParametersAfterRecording()V
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 603
    :cond_1
    sget-boolean v0, Lcom/android/camera/Device;->IS_PAD1:Z

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMovieSolidOn(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    const-string v0, "videocamera"

    const-string v1, "set video stabilization to false"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 608
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 609
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->setVideoStabilizationCropped(Z)V

    goto :goto_0
.end method

.method private updateParametersBeforeRecording()V
    .locals 3

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsTouchFocused:Z

    if-nez v0, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6PreviewFrame;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/module/VideoModule;->autoFocus(IIZ)V

    .line 597
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private updateRecordingTime()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 2124
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    .line 2164
    :goto_0
    return-void

    .line 2127
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2128
    iget-wide v2, p0, Lcom/android/camera/module/VideoModule;->mRecordingStartTime:J

    sub-long v2, v0, v2

    .line 2132
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    const v1, 0xea60

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_2

    move v5, v4

    .line 2136
    :goto_1
    if-eqz v5, :cond_4

    .line 2137
    const-wide/16 v0, 0x0

    iget v7, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    int-to-long v7, v7

    sub-long/2addr v7, v2

    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v7, 0x3e7

    add-long/2addr v0, v7

    .line 2142
    :goto_2
    iget-boolean v7, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    if-nez v7, :cond_3

    .line 2143
    invoke-static {v0, v1, v6}, Lcom/android/camera/module/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v4

    .line 2144
    const-wide/16 v0, 0x3e8

    .line 2153
    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/UIController;->getVideoRecordingTimeView()Lcom/android/camera/ui/V6RecordingTimeView;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/camera/ui/V6RecordingTimeView;->setText(Ljava/lang/CharSequence;)V

    .line 2155
    iget-boolean v4, p0, Lcom/android/camera/module/VideoModule;->mRecordingTimeCountsDown:Z

    if-eq v4, v5, :cond_1

    .line 2158
    iput-boolean v5, p0, Lcom/android/camera/module/VideoModule;->mRecordingTimeCountsDown:Z

    .line 2161
    :cond_1
    rem-long/2addr v2, v0

    sub-long/2addr v0, v2

    .line 2162
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    move v5, v6

    .line 2132
    goto :goto_1

    .line 2149
    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/android/camera/module/VideoModule;->getTimeLapseVideoLength(J)J

    move-result-wide v0

    invoke-static {v0, v1, v4}, Lcom/android/camera/module/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v4

    .line 2150
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-long v0, v0

    goto :goto_3

    :cond_4
    move-wide v0, v2

    goto :goto_2
.end method

.method private waitAsyncVideoRecording()V
    .locals 2

    .prologue
    .line 1677
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mRestartVideoRecordingThread:Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;

    if-eqz v1, :cond_0

    .line 1679
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mRestartVideoRecordingThread:Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;

    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;->join()V

    .line 1680
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mRestartVideoRecordingThread:Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1685
    :cond_0
    :goto_0
    return-void

    .line 1681
    :catch_0
    move-exception v0

    .line 1682
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private writeDefaultEffectToPrefs()V
    .locals 3

    .prologue
    .line 721
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 722
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_video_effect_key"

    const v2, 0x7f0d010a

    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 724
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 725
    return-void
.end method


# virtual methods
.method public animateSwitchCameraAfter()V
    .locals 2

    .prologue
    .line 2544
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2545
    return-void
.end method

.method protected animateSwitchCameraBefore()V
    .locals 2

    .prologue
    .line 2539
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2540
    return-void
.end method

.method protected fetchProfile(II)Landroid/media/CamcorderProfile;
    .locals 1
    .parameter "cameraId"
    .parameter "quality"

    .prologue
    .line 717
    invoke-static {p1, p2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    return-object v0
.end method

.method protected getCameraRotation()I
    .locals 2

    .prologue
    .line 554
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mOrientationCompensation:I

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
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
    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v0, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 431
    const-string v1, "pref_camera_coloreffect_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    const-string v1, "pref_camera_whitebalance_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isHasExtradVideoQuality()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    const-string v1, "pref_video_quality_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    const-string v1, "pref_video_speed_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getShowBeforeKeyguard()Z

    move-result v1

    if-nez v1, :cond_2

    .line 440
    const-string v1, "pref_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_2
    :goto_0
    return-object v0

    .line 443
    :cond_3
    const-string v1, "pref_camera_coloreffect_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    const-string v1, "pref_camera_whitebalance_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isHasExtradVideoQuality()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 447
    const-string v1, "pref_video_quality_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_4
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 450
    const-string v1, "pref_video_speed_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_5
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getShowBeforeKeyguard()Z

    move-result v1

    if-nez v1, :cond_2

    .line 453
    const-string v1, "pref_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 10
    .parameter "what"
    .parameter "sender"
    .parameter "extra1"
    .parameter "extra2"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 1072
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/module/BaseModule;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1145
    .end local p3
    .end local p4
    :cond_0
    :goto_0
    return v4

    .line 1075
    .restart local p3
    .restart local p4
    :cond_1
    sparse-switch p2, :sswitch_data_0

    move v4, v5

    .line 1145
    goto :goto_0

    .line 1077
    :sswitch_0
    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v5}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v5}, Lcom/android/camera/MutexModeManager;->isSupportedFlashOn()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1078
    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v5}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto :goto_0

    .line 1081
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onSharedPreferenceChanged()V

    goto :goto_0

    .line 1085
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getSettingPanel()Lcom/android/camera/ui/V6SettingPanel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6SettingPanel;->backTopControl()Z

    .line 1086
    check-cast p3, Ljava/lang/Integer;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/camera/module/VideoModule;->onCameraPickerClicked(I)Z

    move-result v4

    goto :goto_0

    .line 1089
    .restart local p3
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getSettingPanel()Lcom/android/camera/ui/V6SettingPanel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/V6SettingPanel;->backTopControl()Z

    .line 1090
    invoke-virtual {p0, v7}, Lcom/android/camera/module/VideoModule;->onThumbnailClicked(Landroid/view/View;)V

    goto :goto_0

    .line 1094
    :sswitch_3
    if-nez p1, :cond_3

    .line 1095
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getSettingPanel()Lcom/android/camera/ui/V6SettingPanel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/V6SettingPanel;->backTopControl()Z

    .line 1096
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1097
    :cond_3
    if-ne p1, v4, :cond_4

    .line 1098
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getSettingPanel()Lcom/android/camera/ui/V6SettingPanel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/V6SettingPanel;->backTopControl()Z

    .line 1099
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onShutterButtonLongClick()Z

    goto :goto_0

    .line 1100
    :cond_4
    const/4 v5, 0x2

    if-ne p1, v5, :cond_0

    .line 1101
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isBackCamera()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v3, p3

    .line 1102
    check-cast v3, Landroid/graphics/Point;

    .local v3, start:Landroid/graphics/Point;
    move-object v0, p4

    .line 1103
    check-cast v0, Landroid/graphics/Point;

    .line 1104
    .local v0, center:Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getSmartShutterButton()Lcom/android/camera/ui/V6SmartShutterButton;

    move-result-object v5

    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    iget v8, v0, Landroid/graphics/Point;->x:I

    iget v9, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/camera/ui/V6SmartShutterButton;->flyin(IIII)V

    goto/16 :goto_0

    .line 1110
    .end local v0           #center:Landroid/graphics/Point;
    .end local v3           #start:Landroid/graphics/Point;
    :sswitch_4
    new-instance v2, Lcom/android/camera/module/VideoModule$2;

    invoke-direct {v2, p0, p3}, Lcom/android/camera/module/VideoModule$2;-><init>(Lcom/android/camera/module/VideoModule;Ljava/lang/Object;)V

    .line 1116
    .local v2, r:Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 1117
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getBottomControlPanel()Lcom/android/camera/ui/V6BottomControlPanel;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/camera/ui/V6BottomControlPanel;->animationSwitchToCamera(Ljava/lang/Runnable;)V

    .line 1118
    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraScreenNail;->switchModule()V

    goto/16 :goto_0

    .line 1122
    .end local v2           #r:Ljava/lang/Runnable;
    :sswitch_5
    if-nez p1, :cond_5

    .line 1123
    invoke-virtual {p0, v7}, Lcom/android/camera/module/VideoModule;->onReviewDoneClicked(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1125
    :cond_5
    invoke-virtual {p0, v7}, Lcom/android/camera/module/VideoModule;->onReviewCancelClicked(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1130
    :sswitch_6
    if-nez p1, :cond_6

    .line 1131
    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz v5, :cond_0

    move-object v1, p3

    .line 1132
    check-cast v1, Landroid/graphics/Point;

    .line 1133
    .local v1, p:Landroid/graphics/Point;
    iget-object v5, p0, Lcom/android/camera/module/VideoModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v7, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/FocusManagerSimple;->setPreviewSize(II)V

    goto/16 :goto_0

    .line 1135
    .end local v1           #p:Landroid/graphics/Point;
    :cond_6
    if-ne p1, v4, :cond_0

    .line 1136
    check-cast p3, Landroid/view/View;

    .end local p3
    check-cast p4, Landroid/graphics/Rect;

    .end local p4
    invoke-direct {p0, p3, p4}, Lcom/android/camera/module/VideoModule;->onFrameLayoutChange(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1141
    .restart local p3
    .restart local p4
    :sswitch_7
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startPlayVideoActivity()V

    goto/16 :goto_0

    .line 1075
    :sswitch_data_0
    .sparse-switch
        0x7f0c0029 -> :sswitch_2
        0x7f0c002c -> :sswitch_3
        0x7f0c002f -> :sswitch_4
        0x7f0c0031 -> :sswitch_0
        0x7f0c0034 -> :sswitch_1
        0x7f0c0035 -> :sswitch_5
        0x7f0c0044 -> :sswitch_6
        0x7f0c004a -> :sswitch_7
    .end sparse-switch
.end method

.method protected isHasExtradVideoQuality()Z
    .locals 2

    .prologue
    .line 1190
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1191
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1192
    const/4 v1, 0x0

    .line 1194
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isVideoRecording()Z
    .locals 1

    .prologue
    .line 1734
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsFromStop:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2353
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/module/BaseModule;->onActivityResult(IILandroid/content/Intent;)V

    .line 2354
    packed-switch p1, :pswitch_data_0

    .line 2369
    :goto_0
    return-void

    .line 2356
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2359
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    .line 2360
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received URI from gallery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mResetEffect:Z

    goto :goto_0

    .line 2363
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mEffectUriFromGallery:Ljava/lang/String;

    .line 2364
    const-string v0, "videocamera"

    const-string v1, "No URI from gallery"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mResetEffect:Z

    goto :goto_0

    .line 2354
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1
    .parameter "success"
    .parameter "camera"

    .prologue
    .line 2653
    if-eqz p1, :cond_0

    .line 2654
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showSuccess()V

    .line 2658
    :goto_0
    return-void

    .line 2656
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->showFail()V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x1

    .line 1031
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v1, :cond_1

    .line 1056
    :cond_0
    :goto_0
    return v0

    .line 1034
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_3

    .line 1035
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1036
    iget-wide v3, p0, Lcom/android/camera/module/VideoModule;->mLastBackPressedTime:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0xbb8

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 1037
    iput-wide v1, p0, Lcom/android/camera/module/VideoModule;->mLastBackPressedTime:J

    .line 1038
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const v2, 0x7f0d0182

    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1041
    :cond_2
    invoke-direct {p0, v7}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    goto :goto_0

    .line 1045
    :cond_3
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mShowCameraAppView:Z

    if-eqz v1, :cond_4

    .line 1046
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingPanel()Lcom/android/camera/ui/V6SettingPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingPanel;->onBack()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1050
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1051
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto :goto_0

    .line 1056
    :cond_4
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onCameraPickerClicked(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 2482
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mPendingSwitchCameraId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    if-eqz v1, :cond_1

    .line 2483
    :cond_0
    const/4 v0, 0x0

    .line 2492
    :goto_0
    return v0

    .line 2485
    :cond_1
    const-string v1, "videocamera"

    const-string v2, "Start to copy texture."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->animateSwitchCopyTexture()V

    .line 2489
    iput p1, p0, Lcom/android/camera/module/VideoModule;->mPendingSwitchCameraId:I

    .line 2491
    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    goto :goto_0
.end method

.method public onCreate(Lcom/android/camera/Camera;)V
    .locals 12
    .parameter "activity"

    .prologue
    const v5, 0x7f0d0002

    const v6, 0x7f0d0001

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 355
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onCreate(Lcom/android/camera/Camera;)V

    .line 356
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 357
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 359
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getPreferredCameraId()I

    move-result v2

    iput v2, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    .line 360
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    .line 361
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getPreferencesLocalId()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 362
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    const/4 v7, -0x1

    invoke-virtual {v2, v7}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    .line 363
    const v2, 0x7f0d010a

    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mPrefVideoEffectDefault:Ljava/lang/String;

    .line 364
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->resetEffect()Z

    .line 365
    invoke-static {v3}, Lcom/android/camera/ui/V6ModulePicker;->setCurrentMoudle(I)V

    .line 366
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->onCreate()V

    .line 367
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->prepareUIByPreviewSize()V

    .line 368
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v2

    const-string v7, "open_camera_times_key"

    invoke-virtual {v2, v7}, Lcom/android/camera/CameraDataAnalytics;->trackEventTime(Ljava/lang/String;)V

    .line 369
    new-instance v0, Lcom/android/camera/module/BaseModule$CameraOpenThread;

    invoke-direct {v0, p0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 370
    .local v0, cameraOpenThread:Lcom/android/camera/module/BaseModule$CameraOpenThread;
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;->start()V

    .line 372
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeMiscControls()V

    .line 375
    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v7, v2, v4}, Lcom/android/camera/Camera;->createCameraScreenNail(ZZ)V

    .line 378
    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule$CameraOpenThread;->join()V

    .line 379
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mOpenCameraFail:Z

    if-eqz v2, :cond_2

    .line 380
    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera/CameraSettings;->updateOpenCameraFailTimes()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v2, v8, v10

    if-lez v2, :cond_1

    move v2, v5

    :goto_1
    invoke-static {v7, v2}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 425
    :goto_2
    return-void

    :cond_0
    move v2, v4

    .line 375
    goto :goto_0

    :cond_1
    move v2, v6

    .line 380
    goto :goto_1

    .line 385
    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDisabled:Z

    if-eqz v2, :cond_3

    .line 386
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const v7, 0x7f0d0003

    invoke-static {v2, v7}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 389
    :catch_0
    move-exception v2

    .line 392
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeFocusManager()V

    .line 393
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->initializeCapabilities()V

    .line 394
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/camera/module/VideoModule$1;

    invoke-direct {v2, p0}, Lcom/android/camera/module/VideoModule$1;-><init>(Lcom/android/camera/module/VideoModule;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 402
    .local v1, startPreviewThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 403
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v7, "android.intent.extra.quickCapture"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mQuickCapture:Z

    .line 406
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 407
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mOpenCameraFail:Z

    if-eqz v2, :cond_6

    .line 408
    iget-object v7, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera/CameraSettings;->updateOpenCameraFailTimes()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v2, v8, v10

    if-lez v2, :cond_5

    move v2, v5

    :goto_3
    invoke-static {v7, v2}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 417
    :catch_1
    move-exception v2

    .line 420
    :cond_4
    new-instance v2, Lcom/android/camera/module/VideoModule$MyBroadcastReceiver;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/android/camera/module/VideoModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$1;)V

    iput-object v2, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 422
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->resizeForPreviewAspectRatio()V

    .line 423
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget-boolean v5, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v5, :cond_7

    :goto_4
    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 424
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->onCameraOpen()V

    goto :goto_2

    :cond_5
    move v2, v6

    .line 408
    goto :goto_3

    .line 413
    :cond_6
    :try_start_2
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDisabled:Z

    if-eqz v2, :cond_4

    .line 414
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const v5, 0x7f0d0003

    invoke-static {v2, v5}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :cond_7
    move v3, v4

    .line 423
    goto :goto_4
.end method

.method public declared-synchronized onEffectsError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2378
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2379
    invoke-direct {p0, p2}, Lcom/android/camera/module/VideoModule;->deleteVideoFile(Ljava/lang/String;)V

    .line 2381
    :cond_0
    instance-of v0, p1, Landroid/filterpacks/videosink/MediaRecorderStopException;

    if-eqz v0, :cond_1

    .line 2382
    const-string v0, "videocamera"

    const-string v1, "Problem recoding video file. Removing incomplete file."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2383
    monitor-exit p0

    return-void

    .line 2385
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error during recording!"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2378
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEffectsUpdate(II)V
    .locals 0
    .parameter "effectId"
    .parameter "effectMsg"

    .prologue
    .line 2372
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1594
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder error. what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1597
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    .line 1598
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 1600
    :cond_0
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1605
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 1606
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v3}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    .line 1622
    :cond_0
    :goto_0
    return-void

    .line 1607
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 1608
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 1609
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reached max size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    const/4 v0, -0x1

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I

    if-ge v0, v1, :cond_2

    .line 1611
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onRestartVideoRecording()V

    goto :goto_0

    .line 1613
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    .line 1614
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->isScreenHintVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1616
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const v1, 0x7f0d00eb

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1151
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1171
    :goto_0
    return v1

    .line 1155
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1171
    :cond_1
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1157
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1158
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1164
    :pswitch_2
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/camera/module/VideoModule;->handleVolumeKeyEvent(ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1155
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1181
    packed-switch p1, :pswitch_data_0

    .line 1186
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1183
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ShutterButton;->setPressed(Z)V

    .line 1184
    const/4 v0, 0x1

    goto :goto_0

    .line 1181
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public onOrientationChanged(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 465
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    iget v2, p0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    invoke-static {p1, v2}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v0

    .line 468
    .local v0, newOrientation:I
    iget v2, p0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    if-eq v2, v0, :cond_2

    .line 469
    iput v0, p0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    .line 475
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->effectsActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 476
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    iget v3, p0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/camera/EffectsRecorder;->setOrientationHint(I)V

    .line 482
    :cond_2
    iget v2, p0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v3}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    add-int/2addr v2, v3

    rem-int/lit16 v1, v2, 0x168

    .line 485
    .local v1, orientationCompensation:I
    iget v2, p0, Lcom/android/camera/module/VideoModule;->mOrientationCompensation:I

    if-eq v2, v1, :cond_0

    .line 486
    iput v1, p0, Lcom/android/camera/module/VideoModule;->mOrientationCompensation:I

    .line 487
    iget v2, p0, Lcom/android/camera/module/VideoModule;->mOrientationCompensation:I

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/module/VideoModule;->setOrientationIndicator(IZ)V

    goto :goto_0
.end method

.method public onPauseAfterSuper()V
    .locals 0

    .prologue
    .line 908
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPauseAfterSuper()V

    .line 909
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 860
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    :goto_0
    return-void

    .line 863
    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPauseBeforeSuper()V

    .line 864
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onPause()V

    .line 865
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_4

    .line 867
    invoke-direct {p0, v2}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    .line 874
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 878
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0}, Lcom/android/camera/EffectsRecorder;->disconnectDisplay()V

    .line 890
    :goto_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 891
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 892
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 894
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->resetScreenOn()V

    .line 895
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 896
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 897
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 898
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoSavedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 899
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoSavedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 900
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 902
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mPendingSwitchCameraId:I

    .line 903
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    goto :goto_0

    .line 869
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataAnalytics;->uploadToServer()V

    .line 870
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    .line 871
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->effectsActive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->releaseMediaRecorder()V

    goto :goto_1

    .line 887
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->closeVideoFileDescriptor()V

    goto :goto_2
.end method

.method public onPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 2534
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2535
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 799
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 800
    :cond_1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResumeAfterSuper()V

    .line 801
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDisabled:Z

    if-nez v0, :cond_0

    .line 802
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getReviewDoneView()Lcom/android/camera/ui/V6BottomAnimationImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 803
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->onResume()V

    .line 807
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    if-nez v0, :cond_7

    .line 808
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "open_camera_times_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEventTime(Ljava/lang/String;)V

    .line 809
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->openCamera()V

    .line 810
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mOpenCameraFail:Z

    if-eqz v0, :cond_5

    .line 811
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera/CameraSettings;->updateOpenCameraFailTimes()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    const v0, 0x7f0d0002

    :goto_1
    invoke-static {v1, v0}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_4
    const v0, 0x7f0d0001

    goto :goto_1

    .line 816
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDisabled:Z

    if-eqz v0, :cond_6

    .line 817
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const v1, 0x7f0d0003

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    goto :goto_0

    .line 821
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    .line 822
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->resizeForPreviewAspectRatio()V

    .line 823
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startPreview()V

    .line 827
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->initializeZoom()V

    .line 828
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->initializeExposureCompensation()V

    .line 829
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->keepScreenOnAwhile()V

    .line 832
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 834
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 835
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 836
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 837
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 838
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 839
    new-instance v1, Lcom/android/camera/module/VideoModule$MyBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/camera/module/VideoModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$1;)V

    iput-object v1, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 840
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 842
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_8

    .line 843
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    .line 846
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->onSettingsBack()V

    .line 848
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPreviewing:Z

    if-eqz v0, :cond_9

    .line 849
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/VideoModule;->mOnResumeTime:J

    .line 850
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 853
    :cond_9
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 855
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    goto/16 :goto_0
.end method

.method public onResumeBeforeSuper()V
    .locals 0

    .prologue
    .line 794
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResumeBeforeSuper()V

    .line 795
    return-void
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->isSelectingCapturedVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->deleteCurrentVideo()V

    .line 537
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->hideAlert()V

    .line 542
    :goto_0
    return-void

    .line 539
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopVideoRecordingAsync()V

    .line 540
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->doReturnToCaller(Z)V

    goto :goto_0
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 530
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/VideoModule;->doReturnToCaller(Z)V

    .line 531
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 5

    .prologue
    .line 2449
    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v2, :cond_0

    .line 2478
    :goto_0
    return-void

    .line 2450
    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    monitor-enter v3

    .line 2453
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v2, :cond_1

    monitor-exit v3

    goto :goto_0

    .line 2476
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2455
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isRecordLocation(Landroid/content/SharedPreferences;)Z

    move-result v0

    .line 2456
    .local v0, recordLocation:Z
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/LocationManager;->recordLocation(Z)V

    .line 2459
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateEffectSelection()Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v3

    goto :goto_0

    .line 2461
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    .line 2463
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2464
    .local v1, size:Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    if-ne v2, v4, :cond_3

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iget v4, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    if-ne v2, v4, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/module/VideoModule;->mRestartPreview:Z

    if-eqz v2, :cond_5

    .line 2466
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->effectsActive()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2467
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->stopPreview()V

    .line 2471
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->resizeForPreviewAspectRatio()V

    .line 2472
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startPreview()V

    .line 2476
    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2477
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getSettingsStatusBar()Lcom/android/camera/ui/V6SettingsStatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6SettingsStatusBar;->updateStatus()V

    goto :goto_0

    .line 2469
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/module/VideoModule;->mEffectsRecorder:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v2}, Lcom/android/camera/EffectsRecorder;->release()V

    goto :goto_1

    .line 2474
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->setCameraParameters()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public onShutterButtonClick()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 559
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6ShutterButton;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingPanel()Lcom/android/camera/ui/V6SettingPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6SettingPanel;->backTopControl()Z

    .line 564
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 565
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->isLowStorageSpace()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 566
    const-string v1, "videocamera"

    const-string v2, "Storage issue, ignore the start request"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 569
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    .line 571
    .local v0, stop:Z
    if-eqz v0, :cond_3

    .line 572
    invoke-direct {p0, v5}, Lcom/android/camera/module/VideoModule;->onStopVideoRecording(Z)V

    .line 573
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateParametersAfterRecording()V

    .line 574
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->playCameraSound(I)V

    .line 586
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/camera/ui/V6ShutterButton;->setEnabled(Z)V

    .line 587
    iput-boolean v5, p0, Lcom/android/camera/module/VideoModule;->mIsTouchFocused:Z

    goto :goto_0

    .line 576
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->updateParametersBeforeRecording()V

    .line 577
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/camera/module/VideoModule;->playCameraSound(I)V

    .line 578
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->startVideoRecording()V

    .line 583
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public onShutterButtonLongClick()Z
    .locals 1

    .prologue
    .line 615
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2623
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSnapshotInProgress:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2628
    :cond_0
    :goto_0
    return-void

    .line 2627
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/module/VideoModule;->autoFocus(IIZ)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 913
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onStop()V

    .line 915
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 916
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsFromStop:Z

    .line 917
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onPauseBeforeSuper()V

    .line 918
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->pause()V

    .line 919
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onPauseAfterSuper()V

    .line 920
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mIsFromStop:Z

    .line 922
    :cond_0
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->gotoGallery()V

    .line 517
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 1025
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onUserInteraction()V

    .line 1026
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->keepScreenOnAwhile()V

    .line 1027
    :cond_0
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 3
    .parameter

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mRestartVideoRecordingThread:Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;

    if-nez v0, :cond_0

    .line 1740
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->onZoomValueChanged(I)V

    .line 1744
    :goto_0
    return-void

    .line 1742
    :cond_0
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Spliting file, so ignore the change, value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected performShutterClick()V
    .locals 0

    .prologue
    .line 1176
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->onShutterButtonClick()V

    .line 1177
    return-void
.end method

.method protected readVideoPreferences()V
    .locals 14

    .prologue
    .line 623
    iget v10, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0020

    invoke-virtual {p0, v12}, Lcom/android/camera/module/VideoModule;->getDefaultPreferenceId(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/CameraSettings;->getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, defaultQuality:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v11, "pref_video_quality_key"

    invoke-virtual {v10, v11, v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 628
    .local v8, videoQuality:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 631
    .local v6, quality:I
    iget-object v10, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v10}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 632
    .local v4, intent:Landroid/content/Intent;
    const-string v10, "android.intent.extra.videoQuality"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 633
    const-string v10, "android.intent.extra.videoQuality"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 635
    .local v2, extraVideoQuality:I
    if-lez v2, :cond_5

    .line 636
    const/4 v6, 0x1

    .line 644
    .end local v2           #extraVideoQuality:I
    :cond_0
    :goto_0
    const-string v10, "android.intent.extra.durationLimit"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 645
    const-string v10, "android.intent.extra.durationLimit"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 647
    .local v7, seconds:I
    mul-int/lit16 v10, v7, 0x3e8

    iput v10, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    .line 653
    .end local v7           #seconds:I
    :goto_1
    iget-object v10, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v10}, Lcom/android/camera/CameraSettings;->readEffectType(Landroid/content/SharedPreferences;)I

    move-result v10

    iput v10, p0, Lcom/android/camera/module/VideoModule;->mEffectType:I

    .line 654
    iget v10, p0, Lcom/android/camera/module/VideoModule;->mEffectType:I

    if-eqz v10, :cond_7

    .line 655
    iget-object v10, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v10}, Lcom/android/camera/CameraSettings;->readEffectParameter(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/module/VideoModule;->mEffectParameter:Ljava/lang/Object;

    .line 657
    iget v10, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-virtual {p0, v10, v6}, Lcom/android/camera/module/VideoModule;->fetchProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v5

    .line 658
    .local v5, profile:Landroid/media/CamcorderProfile;
    iget v10, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v11, 0x1e0

    if-le v10, v11, :cond_1

    .line 659
    const/4 v6, 0x4

    .line 664
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/ui/UIController;->getSettingPanel()Lcom/android/camera/ui/V6SettingPanel;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "pref_video_quality_key"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x4

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lcom/android/camera/ui/V6SettingPanel;->overrideSettings([Ljava/lang/String;)V

    .line 674
    .end local v5           #profile:Landroid/media/CamcorderProfile;
    :goto_2
    const-string v3, "0"

    .line 675
    .local v3, frameIntervalStr:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v11, "pref_video_speed_key"

    const v12, 0x7f0d00f7

    invoke-virtual {p0, v12}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 678
    .local v9, videoSpeed:Ljava/lang/String;
    const-string v10, "slow"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 680
    iget-object v10, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v11, "pref_video_time_lapse_frame_interval_key"

    const v12, 0x7f0d002b

    invoke-virtual {p0, v12}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 683
    const-string v10, "off"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 684
    const-string v10, "slow"

    iput-object v10, p0, Lcom/android/camera/module/VideoModule;->mHfr:Ljava/lang/String;

    .line 692
    :cond_2
    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 694
    iget v10, p0, Lcom/android/camera/module/VideoModule;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    :goto_4
    iput-boolean v10, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    .line 696
    iget-boolean v10, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    if-eqz v10, :cond_4

    .line 697
    add-int/lit16 v6, v6, 0x3e8

    .line 698
    const/16 v10, 0x3e8

    if-lt v6, v10, :cond_3

    const/16 v10, 0x3fa

    if-le v6, v10, :cond_4

    .line 700
    :cond_3
    add-int/lit16 v6, v6, -0x3e8

    .line 701
    const-string v3, "0"

    .line 702
    iget-object v10, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v10}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 703
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v10, "pref_video_speed_key"

    const-string v11, "normal"

    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 704
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 705
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/camera/module/VideoModule;->mCaptureTimeLapse:Z

    .line 706
    new-instance v10, Lcom/android/camera/ui/RotateTextToast;

    iget-object v11, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    const v12, 0x7f0d0189

    iget v13, p0, Lcom/android/camera/module/VideoModule;->mOrientation:I

    invoke-direct {v10, v11, v12, v13}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v10}, Lcom/android/camera/ui/RotateTextToast;->show()V

    .line 708
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/ui/UIController;->getSettingPanel()Lcom/android/camera/ui/V6SettingPanel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/ui/V6SettingPanel;->reload()V

    .line 711
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_4
    rem-int/lit16 v10, v6, 0x3e8

    iput v10, p0, Lcom/android/camera/module/VideoModule;->mQuality:I

    .line 712
    iget v10, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    invoke-virtual {p0, v10, v6}, Lcom/android/camera/module/VideoModule;->fetchProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    .line 713
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;->getDesiredPreviewSize()V

    .line 714
    return-void

    .line 638
    .end local v3           #frameIntervalStr:Ljava/lang/String;
    .end local v9           #videoSpeed:Ljava/lang/String;
    .restart local v2       #extraVideoQuality:I
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 649
    .end local v2           #extraVideoQuality:I
    :cond_6
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/camera/module/VideoModule;->mMaxVideoDurationInMs:I

    goto/16 :goto_1

    .line 668
    :cond_7
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/camera/module/VideoModule;->mEffectParameter:Ljava/lang/Object;

    .line 669
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/ui/UIController;->getSettingPanel()Lcom/android/camera/ui/V6SettingPanel;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "pref_video_quality_key"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x0

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lcom/android/camera/ui/V6SettingPanel;->overrideSettings([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 686
    .restart local v3       #frameIntervalStr:Ljava/lang/String;
    .restart local v9       #videoSpeed:Ljava/lang/String;
    :cond_8
    const-string v10, "fast"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 687
    const/4 v10, 0x6

    if-ne v6, v10, :cond_2

    .line 688
    const/4 v6, 0x5

    goto/16 :goto_3

    .line 694
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_4
.end method

.method protected setCameraParameters()V
    .locals 2

    .prologue
    .line 2299
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->updateVideoParametersPreference()V

    .line 2300
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2302
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2303
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v0, :cond_1

    .line 2304
    :cond_0
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/VideoModule;->updateCameraScreenNailSize(II)V

    .line 2306
    :cond_1
    return-void
.end method

.method protected setOrientationIndicator(IZ)V
    .locals 7
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 493
    const/4 v5, 0x2

    new-array v3, v5, [Lcom/android/camera/ui/Rotatable;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v6

    aput-object v6, v3, v5

    .line 496
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

    .line 497
    .local v2, indicator:Lcom/android/camera/ui/Rotatable;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 496
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 499
    .end local v2           #indicator:Lcom/android/camera/ui/Rotatable;
    :cond_1
    return-void
.end method

.method protected updateLoadUI(Z)V
    .locals 4
    .parameter "show"

    .prologue
    const/16 v3, 0xd

    .line 2393
    if-eqz p1, :cond_0

    .line 2394
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2399
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/V6ShutterButton;->setEnabled(Z)V

    .line 2400
    return-void

    .line 2396
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2397
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getCaptureProgressBar()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2399
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected updateVideoParametersPreference()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2168
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preview dimension in App->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    iget v2, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 2170
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 2171
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mVideoWidth:I

    .line 2172
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/module/VideoModule;->mVideoHeight:I

    .line 2173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mVideoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mVideoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2175
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video dimension in App->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "video-size"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2181
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mShowCameraAppView:Z

    if-eqz v0, :cond_a

    .line 2182
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "off"

    .line 2189
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 2190
    invoke-static {v0, v1}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2191
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2194
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 2195
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v2, "pref_video_focusmode_key"

    const v3, 0x7f0d0071

    invoke-virtual {p0, v3}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2199
    invoke-static {v1, v0}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2200
    const-string v0, "continuous-video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2201
    const-string v0, "continuous-video"

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    .line 2205
    :goto_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2210
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v1, "pref_camera_coloreffect_key"

    const v2, 0x7f0d008b

    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2213
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Color effect value ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2215
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 2218
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v1, "pref_camera_whitebalance_key"

    const v2, 0x7f0d007a

    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2221
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2223
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 2232
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2233
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->getZoomValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 2236
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v6}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 2240
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMovieSolidOn(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2242
    const-string v0, "videocamera"

    const-string v1, "set video stabilization to true"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v6}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 2244
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/camera/CameraScreenNail;->setVideoStabilizationCropped(Z)V

    .line 2255
    :goto_3
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 2256
    iget v1, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    int-to-double v1, v1

    iget v3, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2258
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 2259
    if-nez v1, :cond_5

    .line 2260
    const-string v2, "videocamera"

    const-string v3, "get null pictureSize"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    :cond_5
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2263
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 2265
    :cond_6
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video snapshot size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5, v5}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 2271
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mCameraId:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 2273
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 2275
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->addMuteToParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2276
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/VideoModule;->resetFaceBeautyParams(Landroid/hardware/Camera$Parameters;)V

    .line 2279
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v1, "pref_camera_antibanding_key"

    const v2, 0x7f0d00e0

    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->getDefaultPreferenceId(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2282
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "antiBanding value ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/module/VideoModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2284
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 2286
    :cond_7
    iget v0, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I

    iget v1, p0, Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v0

    .line 2288
    iget v1, p0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    if-eq v1, v0, :cond_8

    .line 2289
    iput v0, p0, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    .line 2290
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z

    if-eqz v0, :cond_e

    .line 2291
    iput-boolean v6, p0, Lcom/android/camera/module/VideoModule;->mHasPendingSwitching:Z

    .line 2296
    :cond_8
    :goto_4
    return-void

    .line 2182
    :cond_9
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v1, "pref_camera_video_flashmode_key"

    const v2, 0x7f0d0079

    invoke-virtual {p0, v2}, Lcom/android/camera/module/VideoModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2187
    :cond_a
    const-string v0, "off"

    goto/16 :goto_0

    .line 2203
    :cond_b
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoFocusMode:Ljava/lang/String;

    goto/16 :goto_1

    .line 2225
    :cond_c
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 2226
    if-nez v0, :cond_3

    .line 2227
    const-string v0, "auto"

    goto/16 :goto_2

    .line 2246
    :cond_d
    const-string v0, "videocamera"

    const-string v1, "set video stabilization to false"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 2248
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/CameraScreenNail;->setVideoStabilizationCropped(Z)V

    goto/16 :goto_3

    .line 2293
    :cond_e
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4
.end method

.method protected waitForRecorder()V
    .locals 4

    .prologue
    .line 1940
    iget-object v1, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    monitor-enter v1

    .line 1941
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule;->mRecorderCameraReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1943
    :try_start_1
    const-string v0, "videocamera"

    const-string v2, "Wait for releasing camera done in MediaRecorder"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    iget-object v0, p0, Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1949
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 1950
    return-void

    .line 1945
    :catch_0
    move-exception v0

    .line 1946
    const-string v2, "videocamera"

    const-string v3, "Got notify from Media recorder()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1949
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
