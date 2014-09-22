.class Lcom/android/camera/module/VideoModule$8;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1980
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$8;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1982
    const-string v0, "videocamera"

    const-string v1, "mVideoSavedRunnable.run() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$8;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$1600(Lcom/android/camera/module/VideoModule;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1984
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$8;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 1986
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$8;->this$0:Lcom/android/camera/module/VideoModule;

    #calls: Lcom/android/camera/module/VideoModule;->showRecordingUI(Z)V
    invoke-static {v0, v2}, Lcom/android/camera/module/VideoModule;->access$1700(Lcom/android/camera/module/VideoModule;Z)V

    .line 1987
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$8;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$1800(Lcom/android/camera/module/VideoModule;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1988
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$8;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0, v3}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    .line 1990
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$8;->this$0:Lcom/android/camera/module/VideoModule;

    #calls: Lcom/android/camera/module/VideoModule;->keepScreenOnAwhile()V
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$1900(Lcom/android/camera/module/VideoModule;)V

    .line 1992
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$8;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$1800(Lcom/android/camera/module/VideoModule;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1993
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$8;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$8;->this$0:Lcom/android/camera/module/VideoModule;

    #calls: Lcom/android/camera/module/VideoModule;->effectsActive()Z
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$2000(Lcom/android/camera/module/VideoModule;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$8;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mQuickCapture:Z
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$3300(Lcom/android/camera/module/VideoModule;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1994
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$8;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$8;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$3100(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/module/VideoModule$SavingTask;

    move-result-object v1

    #getter for: Lcom/android/camera/module/VideoModule$SavingTask;->mSavingResult:Z
    invoke-static {v1}, Lcom/android/camera/module/VideoModule$SavingTask;->access$3400(Lcom/android/camera/module/VideoModule$SavingTask;)Z

    move-result v1

    #calls: Lcom/android/camera/module/VideoModule;->doReturnToCaller(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/module/VideoModule;->access$3500(Lcom/android/camera/module/VideoModule;Z)V

    .line 2003
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$8;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 2004
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$8;->this$0:Lcom/android/camera/module/VideoModule;

    #calls: Lcom/android/camera/module/VideoModule;->animateSlide()V
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$3600(Lcom/android/camera/module/VideoModule;)V

    .line 2005
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$8;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0, v2}, Lcom/android/camera/module/VideoModule;->updateLoadUI(Z)V

    .line 2006
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$8;->this$0:Lcom/android/camera/module/VideoModule;

    iput-boolean v2, v0, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 2007
    return-void

    .line 1996
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$8;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$3100(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/module/VideoModule$SavingTask;

    move-result-object v0

    #getter for: Lcom/android/camera/module/VideoModule$SavingTask;->mSavingResult:Z
    invoke-static {v0}, Lcom/android/camera/module/VideoModule$SavingTask;->access$3400(Lcom/android/camera/module/VideoModule$SavingTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1998
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$8;->this$0:Lcom/android/camera/module/VideoModule;

    #calls: Lcom/android/camera/module/VideoModule;->effectsActive()Z
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$2000(Lcom/android/camera/module/VideoModule;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$8;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$2100(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1999
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$8;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$8;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$2100(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/Thumbnail;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;)V

    .line 2000
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$8;->this$0:Lcom/android/camera/module/VideoModule;

    #setter for: Lcom/android/camera/module/VideoModule;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v0, v4}, Lcom/android/camera/module/VideoModule;->access$2102(Lcom/android/camera/module/VideoModule;Lcom/android/camera/Thumbnail;)Lcom/android/camera/Thumbnail;

    goto :goto_0
.end method
