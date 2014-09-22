.class Lcom/android/camera/module/VideoModule$MainHandler;
.super Landroid/os/Handler;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/android/camera/module/VideoModule$MainHandler;-><init>(Lcom/android/camera/module/VideoModule;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v2, 0x80

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 232
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 310
    :pswitch_0
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 235
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getShutterButton()Lcom/android/camera/ui/V6ShutterButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/V6ShutterButton;->setEnabled(Z)V

    goto :goto_0

    .line 239
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 245
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 246
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 248
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 252
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    #calls: Lcom/android/camera/module/VideoModule;->updateRecordingTime()V
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$100(Lcom/android/camera/module/VideoModule;)V

    goto :goto_0

    .line 262
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mDisplayRotation:I
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$200(Lcom/android/camera/module/VideoModule;)I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$300(Lcom/android/camera/module/VideoModule;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$400(Lcom/android/camera/module/VideoModule;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    #calls: Lcom/android/camera/module/VideoModule;->startPreview()V
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$500(Lcom/android/camera/module/VideoModule;)V

    .line 266
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mOnResumeTime:J
    invoke-static {v2}, Lcom/android/camera/module/VideoModule;->access$600(Lcom/android/camera/module/VideoModule;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 273
    :pswitch_6
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    #calls: Lcom/android/camera/module/VideoModule;->switchCamera()V
    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->access$700(Lcom/android/camera/module/VideoModule;)V

    goto/16 :goto_0

    .line 278
    :pswitch_7
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateSwitchCameraBefore()V

    goto/16 :goto_0

    .line 283
    :pswitch_8
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v0, v0, Lcom/android/camera/module/VideoModule;->mHasPendingSwitching:Z

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget v1, v1, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;I)V

    .line 285
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mDesiredPreviewWidth:I
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$800(Lcom/android/camera/module/VideoModule;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    #getter for: Lcom/android/camera/module/VideoModule;->mDesiredPreviewHeight:I
    invoke-static {v2}, Lcom/android/camera/module/VideoModule;->access$900(Lcom/android/camera/module/VideoModule;)I

    move-result v2

    #calls: Lcom/android/camera/module/VideoModule;->updateCameraScreenNailSize(II)V
    invoke-static {v0, v1, v2}, Lcom/android/camera/module/VideoModule;->access$1000(Lcom/android/camera/module/VideoModule;II)V

    .line 286
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iput-boolean v3, v0, Lcom/android/camera/module/VideoModule;->mHasPendingSwitching:Z

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    #setter for: Lcom/android/camera/module/VideoModule;->mSwitchingCamera:Z
    invoke-static {v0, v3}, Lcom/android/camera/module/VideoModule;->access$402(Lcom/android/camera/module/VideoModule;Z)Z

    .line 289
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateSwitchCameraAfter()V

    goto/16 :goto_0

    .line 294
    :pswitch_9
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget v1, v1, Lcom/android/camera/module/VideoModule;->mUIStyle:I

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;I)V

    goto/16 :goto_0

    .line 300
    :pswitch_a
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    iget v1, p1, Landroid/os/Message;->what:I

    #calls: Lcom/android/camera/module/VideoModule;->showUserMsg(I)V
    invoke-static {v0, v1}, Lcom/android/camera/module/VideoModule;->access$1100(Lcom/android/camera/module/VideoModule;I)V

    goto/16 :goto_0

    .line 304
    :pswitch_b
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/V6PreviewFrame;->setVisibility(I)V

    goto/16 :goto_0

    .line 307
    :pswitch_c
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$MainHandler;->this$0:Lcom/android/camera/module/VideoModule;

    #setter for: Lcom/android/camera/module/VideoModule;->mIsTouchFocused:Z
    invoke-static {v0, v3}, Lcom/android/camera/module/VideoModule;->access$1202(Lcom/android/camera/module/VideoModule;Z)Z

    goto/16 :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_3
        :pswitch_9
        :pswitch_8
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
