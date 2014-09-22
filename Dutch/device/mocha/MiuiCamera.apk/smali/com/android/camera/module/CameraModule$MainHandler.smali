.class Lcom/android/camera/module/CameraModule$MainHandler;
.super Landroid/os/Handler;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$MainHandler;-><init>(Lcom/android/camera/module/CameraModule;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v6, 0x14

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 326
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 466
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 329
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 335
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 336
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 337
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 338
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 343
    :pswitch_3
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    #calls: Lcom/android/camera/module/CameraModule;->initializeFirstTime()V
    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$1000(Lcom/android/camera/module/CameraModule;)V

    goto :goto_0

    .line 348
    :pswitch_4
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1, v4}, Lcom/android/camera/module/CameraModule;->setCameraParametersWhenIdle(I)V

    goto :goto_0

    .line 358
    :pswitch_5
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mDisplayRotation:I
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$1100(Lcom/android/camera/module/CameraModule;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 359
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    #calls: Lcom/android/camera/module/CameraModule;->setDisplayOrientation()V
    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$1200(Lcom/android/camera/module/CameraModule;)V

    .line 361
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mOnResumeTime:J
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$900(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 368
    :pswitch_6
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->showFirstUseHint()V

    goto :goto_0

    .line 373
    :pswitch_7
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    #calls: Lcom/android/camera/module/CameraModule;->switchCamera()V
    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$1300(Lcom/android/camera/module/CameraModule;)V

    goto/16 :goto_0

    .line 379
    :pswitch_8
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    #calls: Lcom/android/camera/module/CameraModule;->initializeAfterCameraOpen()V
    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$1400(Lcom/android/camera/module/CameraModule;)V

    goto/16 :goto_0

    .line 384
    :pswitch_9
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    #setter for: Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;
    invoke-static {v1, v2}, Lcom/android/camera/module/CameraModule;->access$1502(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$CameraStartUpThread;)Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    .line 385
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->startPreviewDone()V

    .line 386
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->onCameraOpen()V

    .line 387
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1, v3}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 388
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    #calls: Lcom/android/camera/module/CameraModule;->onSettingsBack()V
    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$1600(Lcom/android/camera/module/CameraModule;)V

    .line 389
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->startFaceDetection()V

    .line 390
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    #calls: Lcom/android/camera/module/CameraModule;->takeAPhotoIfNeeded()V
    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$1700(Lcom/android/camera/module/CameraModule;)V

    goto/16 :goto_0

    .line 395
    :pswitch_a
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    #setter for: Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;
    invoke-static {v1, v2}, Lcom/android/camera/module/CameraModule;->access$1502(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$CameraStartUpThread;)Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    .line 396
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iput-boolean v3, v1, Lcom/android/camera/module/CameraModule;->mOpenCameraFail:Z

    .line 397
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->onOpenCameraException()V

    goto/16 :goto_0

    .line 402
    :pswitch_b
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    #setter for: Lcom/android/camera/module/CameraModule;->mCameraStartUpThread:Lcom/android/camera/module/CameraModule$CameraStartUpThread;
    invoke-static {v1, v2}, Lcom/android/camera/module/CameraModule;->access$1502(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$CameraStartUpThread;)Lcom/android/camera/module/CameraModule$CameraStartUpThread;

    .line 403
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iput-boolean v3, v1, Lcom/android/camera/module/CameraModule;->mCameraDisabled:Z

    .line 404
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->onOpenCameraException()V

    goto/16 :goto_0

    .line 409
    :pswitch_c
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusManager;->doMultiSnap()V

    goto/16 :goto_0

    .line 414
    :pswitch_d
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    #calls: Lcom/android/camera/module/CameraModule;->isShutterButtonClickable()Z
    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$1800(Lcom/android/camera/module/CameraModule;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 417
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v2, 0x3

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    .line 418
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->onShutterButtonClick()V

    .line 419
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1, v4, v4}, Lcom/android/camera/module/CameraModule;->onShutterButtonFocus(ZI)V

    goto/16 :goto_0

    .line 421
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I
    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$1900(Lcom/android/camera/module/CameraModule;)I

    move-result v1

    if-ge v1, v6, :cond_0

    .line 422
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$1908(Lcom/android/camera/module/CameraModule;)I

    .line 423
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retry do-capture: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mDoCaptureRetry:I
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$1900(Lcom/android/camera/module/CameraModule;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 431
    :pswitch_e
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v2, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;I)V

    goto/16 :goto_0

    .line 436
    :pswitch_f
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->animateSwitchCameraBefore()V

    goto/16 :goto_0

    .line 441
    :pswitch_10
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v1, v1, Lcom/android/camera/module/CameraModule;->mHasPendingSwitching:Z

    if-eqz v1, :cond_3

    .line 442
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v2, Lcom/android/camera/module/CameraModule;->mUIStyle:I

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->changeUIByPreviewSize(Lcom/android/camera/ActivityBase;I)V

    .line 443
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mPreviewWidth:I
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$2000(Lcom/android/camera/module/CameraModule;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mPreviewHeight:I
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$2100(Lcom/android/camera/module/CameraModule;)I

    move-result v3

    #calls: Lcom/android/camera/module/CameraModule;->updateCameraScreenNailSize(II)V
    invoke-static {v1, v2, v3}, Lcom/android/camera/module/CameraModule;->access$2200(Lcom/android/camera/module/CameraModule;II)V

    .line 444
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iput-boolean v4, v1, Lcom/android/camera/module/CameraModule;->mHasPendingSwitching:Z

    .line 446
    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iput-boolean v4, v1, Lcom/android/camera/module/CameraModule;->mSwitchingCamera:Z

    .line 447
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->animateSwitchCameraAfter()V

    goto/16 :goto_0

    .line 452
    :pswitch_11
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-lez v1, :cond_4

    .line 453
    invoke-virtual {p0, v6}, Lcom/android/camera/module/CameraModule$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 454
    .local v0, message:Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 455
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 456
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/camera/AudioCaptureManager;->setDelayStep(I)V

    .line 457
    iget v1, v0, Landroid/os/Message;->arg2:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/module/CameraModule$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 458
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/camera/module/CameraModule;->playSound(I)V

    goto/16 :goto_0

    .line 461
    .end local v0           #message:Landroid/os/Message;
    :cond_4
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v1}, Lcom/android/camera/AudioCaptureManager;->hideDelayNumber()V

    .line 462
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MainHandler;->this$0:Lcom/android/camera/module/CameraModule;

    const-wide/16 v2, 0x1

    #calls: Lcom/android/camera/module/CameraModule;->sendDoCaptureMessage(J)V
    invoke-static {v1, v2, v3}, Lcom/android/camera/module/CameraModule;->access$2300(Lcom/android/camera/module/CameraModule;J)V

    goto/16 :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_f
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_2
        :pswitch_e
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
