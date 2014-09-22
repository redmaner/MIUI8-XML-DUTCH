.class Lcom/android/camera/module/CameraModule$CameraStartUpThread;
.super Ljava/lang/Thread;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStartUpThread"
.end annotation


# instance fields
.field private volatile mCancelled:Z

.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$CameraStartUpThread;-><init>(Lcom/android/camera/module/CameraModule;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->mCancelled:Z

    .line 284
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 291
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->mCancelled:Z

    if-eqz v1, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string v2, "open_camera_times_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEventTime(Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mCameraId:I

    invoke-static {v2, v3}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 294
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 298
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    #calls: Lcom/android/camera/module/CameraModule;->initializeCapabilities()V
    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$600(Lcom/android/camera/module/CameraModule;)V

    .line 299
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$700(Lcom/android/camera/module/CameraModule;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 300
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    #calls: Lcom/android/camera/module/CameraModule;->initializeFocusManager()V
    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$800(Lcom/android/camera/module/CameraModule;)V

    .line 301
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->mCancelled:Z

    if-nez v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/module/CameraModule;->setCameraParameters(I)V

    .line 305
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 306
    iget-boolean v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->mCancelled:Z

    if-nez v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->startPreview()V

    .line 308
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 309
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    #setter for: Lcom/android/camera/module/CameraModule;->mOnResumeTime:J
    invoke-static {v1, v2, v3}, Lcom/android/camera/module/CameraModule;->access$902(Lcom/android/camera/module/CameraModule;J)J

    .line 310
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, e:Lcom/android/camera/CameraHardwareException;
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 313
    .end local v0           #e:Lcom/android/camera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 314
    .local v0, e:Lcom/android/camera/CameraDisabledException;
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$CameraStartUpThread;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
