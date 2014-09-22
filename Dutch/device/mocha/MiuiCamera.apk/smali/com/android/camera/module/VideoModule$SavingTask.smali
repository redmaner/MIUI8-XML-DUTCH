.class public Lcom/android/camera/module/VideoModule$SavingTask;
.super Ljava/lang/Thread;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SavingTask"
.end annotation


# instance fields
.field private mSavingResult:Z

.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method protected constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1952
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/module/VideoModule$SavingTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1952
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mSavingResult:Z

    return v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1956
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SavingTask.run() begin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    iput-boolean v4, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mSavingResult:Z

    .line 1958
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$300(Lcom/android/camera/module/VideoModule;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1959
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    #calls: Lcom/android/camera/module/VideoModule;->subStopRecording()Z
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$2200(Lcom/android/camera/module/VideoModule;)Z

    move-result v0

    .line 1960
    .local v0, shouldAddToMediaStoreNow:Z
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    #setter for: Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z
    invoke-static {v1, v4}, Lcom/android/camera/module/VideoModule;->access$302(Lcom/android/camera/module/VideoModule;Z)Z

    .line 1962
    if-eqz v0, :cond_1

    .line 1964
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$2400(Lcom/android/camera/module/VideoModule;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$2404(Lcom/android/camera/module/VideoModule;)I

    .line 1965
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    #calls: Lcom/android/camera/module/VideoModule;->addVideoToMediaStore()Z
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$3000(Lcom/android/camera/module/VideoModule;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mSavingResult:Z

    .line 1967
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$1800(Lcom/android/camera/module/VideoModule;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    #setter for: Lcom/android/camera/module/VideoModule;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v2, v1}, Lcom/android/camera/module/VideoModule;->access$2102(Lcom/android/camera/module/VideoModule;Lcom/android/camera/Thumbnail;)Lcom/android/camera/Thumbnail;

    .line 1969
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.stop_video_recording"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1972
    .end local v0           #shouldAddToMediaStoreNow:Z
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$3100(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/module/VideoModule$SavingTask;

    move-result-object v2

    monitor-enter v2

    .line 1973
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$3100(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/module/VideoModule$SavingTask;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1974
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mVideoSavedRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->access$3200(Lcom/android/camera/module/VideoModule;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1975
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mVideoSavedRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/camera/module/VideoModule;->access$3200(Lcom/android/camera/module/VideoModule;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1976
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1977
    return-void

    .line 1967
    .restart local v0       #shouldAddToMediaStoreNow:Z
    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    #calls: Lcom/android/camera/module/VideoModule;->getThumbnail()Lcom/android/camera/Thumbnail;
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$2700(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/Thumbnail;

    move-result-object v1

    goto :goto_0

    .line 1976
    .end local v0           #shouldAddToMediaStoreNow:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
