.class Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;
.super Ljava/lang/Thread;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestartVideoRecordingThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1643
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1646
    const-string v4, "videocamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RestartVideoRecordingThread run mMediaRecorderRecording = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z
    invoke-static {v6}, Lcom/android/camera/module/VideoModule;->access$300(Lcom/android/camera/module/VideoModule;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    iget-object v4, p0, Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;->this$0:Lcom/android/camera/module/VideoModule;

    iput-boolean v1, v4, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 1648
    iget-object v4, p0, Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;->this$0:Lcom/android/camera/module/VideoModule;

    #calls: Lcom/android/camera/module/VideoModule;->subStopRecording()Z
    invoke-static {v4}, Lcom/android/camera/module/VideoModule;->access$2200(Lcom/android/camera/module/VideoModule;)Z

    move-result v0

    .line 1649
    .local v0, shouldAddToMediaStoreNow:Z
    iget-object v4, p0, Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z
    invoke-static {v4}, Lcom/android/camera/module/VideoModule;->access$300(Lcom/android/camera/module/VideoModule;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1650
    const/4 v2, 0x0

    .line 1651
    .local v2, values:Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 1652
    new-instance v2, Landroid/content/ContentValues;

    .end local v2           #values:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;
    invoke-static {v4}, Lcom/android/camera/module/VideoModule;->access$2300(Lcom/android/camera/module/VideoModule;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1653
    .restart local v2       #values:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v4}, Lcom/android/camera/module/VideoModule;->access$2404(Lcom/android/camera/module/VideoModule;)I

    .line 1655
    :cond_0
    invoke-static {}, Lcom/android/camera/storage/Storage;->switchStoragePathIfNeeded()V

    .line 1656
    iget-object v4, p0, Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v4, v4, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/ScreenHint;->isLowStorageSpace()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;->this$0:Lcom/android/camera/module/VideoModule;

    #calls: Lcom/android/camera/module/VideoModule;->startRecordVideo()Z
    invoke-static {v4}, Lcom/android/camera/module/VideoModule;->access$2500(Lcom/android/camera/module/VideoModule;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1657
    .local v1, stop:Z
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 1658
    iget-object v4, p0, Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;->this$0:Lcom/android/camera/module/VideoModule;

    #calls: Lcom/android/camera/module/VideoModule;->addVideoToMediaStore(Landroid/content/ContentValues;)Z
    invoke-static {v4, v2}, Lcom/android/camera/module/VideoModule;->access$2600(Lcom/android/camera/module/VideoModule;Landroid/content/ContentValues;)Z

    .line 1660
    :cond_2
    if-eqz v1, :cond_4

    .line 1661
    iget-object v4, p0, Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;->this$0:Lcom/android/camera/module/VideoModule;

    #setter for: Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;
    invoke-static {v4, v8}, Lcom/android/camera/module/VideoModule;->access$2302(Lcom/android/camera/module/VideoModule;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 1662
    iget-object v4, p0, Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v5, p0, Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;->this$0:Lcom/android/camera/module/VideoModule;

    #calls: Lcom/android/camera/module/VideoModule;->getThumbnail()Lcom/android/camera/Thumbnail;
    invoke-static {v5}, Lcom/android/camera/module/VideoModule;->access$2700(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/Thumbnail;

    move-result-object v5

    #setter for: Lcom/android/camera/module/VideoModule;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v4, v5}, Lcom/android/camera/module/VideoModule;->access$2102(Lcom/android/camera/module/VideoModule;Lcom/android/camera/Thumbnail;)Lcom/android/camera/Thumbnail;

    .line 1663
    iget-object v4, p0, Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v4, v4, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.camera.action.stop_video_recording"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1664
    iget-object v4, p0, Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v4, v4, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v4, :cond_3

    .line 1665
    iget-object v4, p0, Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v4, v4, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mUIRestoreRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/camera/module/VideoModule;->access$2800(Lcom/android/camera/module/VideoModule;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1667
    :cond_3
    iget-object v4, p0, Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;->this$0:Lcom/android/camera/module/VideoModule;

    #setter for: Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z
    invoke-static {v4, v3}, Lcom/android/camera/module/VideoModule;->access$302(Lcom/android/camera/module/VideoModule;Z)Z

    .line 1668
    const-string v4, "videocamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stop recording at restart thread, space = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v6, v6, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    .end local v1           #stop:Z
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_4
    iget-object v4, p0, Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;->this$0:Lcom/android/camera/module/VideoModule;

    iput-boolean v3, v4, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 1672
    iget-object v3, p0, Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;->this$0:Lcom/android/camera/module/VideoModule;

    #setter for: Lcom/android/camera/module/VideoModule;->mRestartVideoRecordingThread:Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;
    invoke-static {v3, v8}, Lcom/android/camera/module/VideoModule;->access$2902(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;)Lcom/android/camera/module/VideoModule$RestartVideoRecordingThread;

    .line 1673
    return-void

    .restart local v2       #values:Landroid/content/ContentValues;
    :cond_5
    move v1, v3

    .line 1656
    goto :goto_0
.end method
