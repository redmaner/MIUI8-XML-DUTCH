.class Lcom/android/camera/module/VideoModule$3;
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
    .line 1624
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1628
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 1629
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$1600(Lcom/android/camera/module/VideoModule;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1630
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/module/VideoModule;->showRecordingUI(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/module/VideoModule;->access$1700(Lcom/android/camera/module/VideoModule;Z)V

    .line 1631
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$1800(Lcom/android/camera/module/VideoModule;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1632
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0, v2}, Lcom/android/camera/module/VideoModule;->enableCameraControls(Z)V

    .line 1634
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    #calls: Lcom/android/camera/module/VideoModule;->keepScreenOnAwhile()V
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$1900(Lcom/android/camera/module/VideoModule;)V

    .line 1635
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 1636
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    #calls: Lcom/android/camera/module/VideoModule;->effectsActive()Z
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$2000(Lcom/android/camera/module/VideoModule;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$2100(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1637
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$2100(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/Thumbnail;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;)V

    .line 1638
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$3;->this$0:Lcom/android/camera/module/VideoModule;

    #setter for: Lcom/android/camera/module/VideoModule;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v0, v3}, Lcom/android/camera/module/VideoModule;->access$2102(Lcom/android/camera/module/VideoModule;Lcom/android/camera/Thumbnail;)Lcom/android/camera/Thumbnail;

    .line 1640
    :cond_1
    return-void
.end method
