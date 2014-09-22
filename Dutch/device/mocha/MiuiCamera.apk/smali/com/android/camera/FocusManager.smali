.class public Lcom/android/camera/FocusManager;
.super Lcom/android/camera/FocusManagerAbstract;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/FocusManager$MainHandler;,
        Lcom/android/camera/FocusManager$Listener;
    }
.end annotation


# instance fields
.field private mAeAwbLock:Z

.field private mCafStartTime:J

.field private mCancelAutoFocusIfMove:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultFocusModes:[Ljava/lang/String;

.field private mFaceView:Lcom/android/camera/ui/FaceView;

.field private mFocusAreaSupported:Z

.field private mFocusMode:Ljava/lang/String;

.field private mFocusView:Lcom/android/camera/ui/FocusView;

.field private mHandler:Landroid/os/Handler;

.field private mLastFocusFrom:I

.field private mLastState:I

.field private mLatestFocusFace:Landroid/graphics/RectF;

.field private mLatestFocusTime:J

.field private mListener:Lcom/android/camera/FocusManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mMeteringAreaSupported:Z

.field private mOverrideFocusMode:Ljava/lang/String;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPendingMultiCapture:Z

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/preferences/CameraSettingPreferences;[Ljava/lang/String;Lcom/android/camera/ui/FocusView;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusManager$Listener;ZLandroid/os/Looper;)V
    .locals 1
    .parameter "context"
    .parameter "preferences"
    .parameter "defaultFocusModes"
    .parameter "focusView"
    .parameter "parameters"
    .parameter "listener"
    .parameter "mirror"
    .parameter "looper"

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-direct {p0}, Lcom/android/camera/FocusManagerAbstract;-><init>()V

    .line 74
    iput v0, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 75
    iput v0, p0, Lcom/android/camera/FocusManager;->mLastState:I

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    .line 155
    new-instance v0, Lcom/android/camera/FocusManager$MainHandler;

    invoke-direct {v0, p0, p8}, Lcom/android/camera/FocusManager$MainHandler;-><init>(Lcom/android/camera/FocusManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    .line 156
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mContext:Landroid/content/Context;

    .line 157
    iput-object p3, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    .line 158
    iput-object p4, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    .line 159
    invoke-virtual {p0, p5}, Lcom/android/camera/FocusManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 160
    iput-object p6, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    .line 161
    invoke-virtual {p0, p7}, Lcom/android/camera/FocusManager;->setMirror(Z)V

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/FocusManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/FocusManager;)Lcom/android/camera/FocusManager$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    return-object v0
.end method

.method private autoFocus(I)V
    .locals 4
    .parameter "from"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 604
    iput p1, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    .line 606
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    if-eq p1, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Lcom/android/camera/FocusManager$Listener;->stopFaceDetection(Z)V

    .line 607
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->autoFocus()V

    .line 611
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    if-eq p1, v1, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->pause()V

    .line 614
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 615
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 616
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 617
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 620
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 622
    return-void

    :cond_1
    move v0, v2

    .line 606
    goto :goto_0
.end method

.method private canTap()Z
    .locals 2

    .prologue
    .line 802
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, focusMode:Ljava/lang/String;
    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "edof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "manual"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private cancelAutoFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 625
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 626
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->cancelAutoFocus()V

    .line 627
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->resume()V

    .line 630
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 631
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 632
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    .line 633
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 634
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 635
    const-string v0, "FocusManager"

    const-string v1, "cancelAutoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    return-void
.end method

.method private capture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 639
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 641
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    .line 642
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    .line 643
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 645
    :cond_0
    return-void
.end method

.method private focusPoint(III)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "from"

    .prologue
    const/4 v3, 0x0

    .line 494
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->isAutoFocusMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 500
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    .line 503
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/FocusManager;->initializeParameters(III)V

    .line 506
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    .line 508
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_3

    .line 509
    invoke-direct {p0, p3}, Lcom/android/camera/FocusManager;->isFocusValide(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    invoke-direct {p0, p3}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    goto :goto_0

    .line 512
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 513
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 514
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 516
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 517
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private initializeFocusAreas(IIIIII)V
    .locals 9
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 437
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_0
    const/high16 v3, 0x3f80

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 443
    return-void
.end method

.method private initializeFocusIndicator(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/FocusView;->setPosition(II)V

    .line 467
    return-void
.end method

.method private initializeMeteringAreas(IIIIIII)V
    .locals 10
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "from"

    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    if-nez v1, :cond_0

    .line 448
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 449
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    new-instance v2, Landroid/hardware/Camera$Area;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_0
    const/4 v1, 0x1

    move/from16 v0, p7

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FaceView;->isFaceBigEnough()Z

    move-result v1

    if-nez v1, :cond_1

    .line 455
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 463
    :goto_0
    return-void

    .line 461
    :cond_1
    const v4, 0x3fe66666

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    iget-object v9, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lcom/android/camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private initializeParameters(III)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "from"

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 476
    iget v1, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_HEIGHT:I

    iget v5, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusManager;->initializeFocusAreas(IIIIII)V

    .line 480
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_1

    .line 481
    iget v1, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_HEIGHT:I

    iget v5, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/FocusManager;->initializeMeteringAreas(IIIIIII)V

    .line 484
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/FocusManager;->initializeFocusIndicator(II)V

    .line 485
    return-void
.end method

.method private isAutoFocusMode(Ljava/lang/String;)Z
    .locals 1
    .parameter "focusMode"

    .prologue
    .line 810
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "macro"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFocusEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 843
    iget-boolean v1, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFocusValide(I)Z
    .locals 7
    .parameter "from"

    .prologue
    const/4 v6, 0x1

    .line 588
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 589
    .local v0, now:J
    iget v2, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const-wide/16 v4, 0x1388

    .line 591
    .local v4, timeout:J
    :goto_0
    iget v2, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-ge p1, v2, :cond_0

    iget-wide v2, p0, Lcom/android/camera/FocusManager;->mLatestFocusTime:J

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 593
    :cond_0
    const-string v2, "FocusManager"

    const-string v3, "Start autofocus."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/FocusManager;->mLatestFocusTime:J

    move v2, v6

    .line 600
    :goto_1
    return v2

    .line 589
    .end local v4           #timeout:J
    :cond_1
    const-wide/16 v4, 0xfa0

    goto :goto_0

    .line 597
    .restart local v4       #timeout:J
    :cond_2
    iget v2, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-ne v2, v6, :cond_3

    .line 598
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 600
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isNeedCancelAutoFocus()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 825
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 789
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private multiCapture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 648
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->multiCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 650
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    .line 651
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    .line 652
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 654
    :cond_0
    return-void
.end method

.method private needAutoFocusCall()Z
    .locals 2

    .prologue
    .line 793
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 794
    .local v0, focusMode:Ljava/lang/String;
    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "edof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "manual"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resetFocusAreaToCenter()V
    .locals 7

    .prologue
    .line 427
    iget v1, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_HEIGHT:I

    iget v0, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    div-int/lit8 v4, v0, 0x2

    iget v5, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusManager;->initializeFocusAreas(IIIIII)V

    .line 430
    iget v0, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/camera/FocusManager;->initializeFocusIndicator(II)V

    .line 431
    return-void
.end method

.method private resetFocusAreaToFaceArea()Z
    .locals 8

    .prologue
    const/high16 v2, 0x4000

    .line 411
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->getFocusFaceRect()Landroid/graphics/RectF;

    move-result-object v7

    .line 414
    .local v7, rect:Landroid/graphics/RectF;
    if-eqz v7, :cond_0

    .line 415
    iput-object v7, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    .line 416
    iget v0, v7, Landroid/graphics/RectF;->left:F

    iget v1, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v3, v0

    .line 417
    .local v3, x:I
    iget v0, v7, Landroid/graphics/RectF;->top:F

    iget v1, v7, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v4, v0

    .line 418
    .local v4, y:I
    iget v1, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManager;->FOCUS_AREA_HEIGHT:I

    iget v5, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusManager;->initializeFocusAreas(IIIIII)V

    .line 420
    const/4 v0, 0x1

    .line 423
    .end local v3           #x:I
    .end local v4           #y:I
    .end local v7           #rect:Landroid/graphics/RectF;
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetFocusIndicator()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 471
    return-void
.end method

.method private setFocusState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 188
    iput p1, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 189
    return-void
.end method

.method private setLastFocusState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 192
    iput p1, p0, Lcom/android/camera/FocusManager;->mLastState:I

    .line 193
    return-void
.end method


# virtual methods
.method public doMultiSnap()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 293
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mMirror:Z

    if-eqz v0, :cond_3

    .line 299
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    goto :goto_0

    .line 300
    :cond_3
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-ne v0, v2, :cond_4

    .line 304
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 305
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    goto :goto_0

    .line 306
    :cond_4
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    .line 311
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    goto :goto_0
.end method

.method public doSnap()V
    .locals 2

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mMirror:Z

    if-eqz v0, :cond_3

    .line 277
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_0

    .line 278
    :cond_3
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 282
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    goto :goto_0

    .line 283
    :cond_4
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_0
.end method

.method public focusFaceArea()Z
    .locals 10

    .prologue
    const/high16 v9, 0x42a0

    const/high16 v8, 0x4000

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 551
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/camera/FocusManager;->isAutoFocusMode(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 565
    :cond_0
    :goto_0
    return v3

    .line 552
    :cond_1
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v5}, Lcom/android/camera/ui/FaceView;->getFocusFaceRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 553
    .local v0, rect:Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    .line 554
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-ne v5, v4, :cond_2

    .line 555
    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v9

    if-gez v5, :cond_2

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v9

    if-ltz v5, :cond_0

    .line 561
    :cond_2
    iput-object v0, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    .line 562
    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v5, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v5

    div-float/2addr v3, v8

    float-to-int v1, v3

    .line 563
    .local v1, x:I
    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v5

    div-float/2addr v3, v8

    float-to-int v2, v3

    .line 564
    .local v2, y:I
    invoke-direct {p0, v1, v2, v4}, Lcom/android/camera/FocusManager;->focusPoint(III)V

    move v3, v4

    .line 565
    goto :goto_0
.end method

.method public getAeAwbLock()Z
    .locals 1

    .prologue
    .line 785
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    return v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 8

    .prologue
    .line 671
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 713
    :goto_0
    return-object v5

    .line 672
    :cond_0
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    .line 674
    .local v4, supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 676
    iget-boolean v5, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 677
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    const-string v6, "manual"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 678
    const-string v5, "manual"

    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 684
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 686
    const/4 v1, 0x0

    .line 687
    .local v1, find:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 688
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    aget-object v3, v5, v2

    .line 689
    .local v3, mode:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 690
    iput-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 691
    const/4 v1, 0x1

    .line 695
    .end local v3           #mode:Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_3

    .line 698
    const-string v5, "auto"

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 700
    const-string v5, "auto"

    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 705
    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 706
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 707
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "pref_camera_focus_mode_key"

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 709
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 712
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #find:Z
    .end local v2           #i:I
    :cond_4
    const-string v5, "FocusManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FocusMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto/16 :goto_0

    .line 680
    :cond_5
    const-string v5, "auto"

    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_1

    .line 687
    .restart local v1       #find:Z
    .restart local v2       #i:I
    .restart local v3       #mode:Ljava/lang/String;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 702
    .end local v3           #mode:Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_3
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method public isFocusCompleted()Z
    .locals 2

    .prologue
    .line 760
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusingSnapOnFinish()Z
    .locals 2

    .prologue
    .line 768
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAutoFocus(Z)V
    .locals 5
    .parameter "focused"

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x1

    .line 316
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 320
    if-eqz p1, :cond_1

    .line 321
    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 322
    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    .line 327
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 328
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    if-eqz v0, :cond_2

    .line 329
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    .line 362
    :cond_0
    :goto_1
    return-void

    .line 324
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 325
    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    goto :goto_0

    .line 331
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_1

    .line 333
    :cond_3
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-ne v0, v1, :cond_7

    .line 337
    if-eqz p1, :cond_5

    .line 338
    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 339
    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    .line 343
    const-string v0, "continuous-picture"

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-eq v0, v1, :cond_4

    .line 346
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0, v1}, Lcom/android/camera/FocusManager$Listener;->playSound(I)V

    .line 352
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 355
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 356
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    goto :goto_1

    .line 349
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mMirror:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 350
    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    goto :goto_2

    :cond_6
    move v0, v2

    .line 349
    goto :goto_3

    .line 358
    :cond_7
    iget v0, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v0, :cond_0

    goto :goto_1
.end method

.method public onAutoFocusMoving(Z)V
    .locals 10
    .parameter "moving"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 365
    iget-boolean v2, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v2, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    const/4 v0, 0x1

    .line 371
    .local v0, showFocusIndicator:Z
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 372
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 373
    const/4 v0, 0x0

    .line 377
    :cond_2
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v2, :cond_0

    const-string v2, "continuous-picture"

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    if-eqz p1, :cond_4

    .line 382
    iget v2, p0, Lcom/android/camera/FocusManager;->mState:I

    if-eq v2, v8, :cond_3

    .line 383
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 385
    :cond_3
    const-string v2, "FocusManager"

    const-string v3, "Camera KPI: CAF start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/FocusManager;->mCafStartTime:J

    .line 387
    if-eqz v0, :cond_0

    .line 388
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->showStart()V

    goto :goto_0

    .line 391
    :cond_4
    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    .line 392
    .local v1, state:I
    const-string v2, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera KPI: CAF stop: Focus time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/FocusManager;->mCafStartTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-direct {p0, v9}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 394
    if-eqz v0, :cond_5

    .line 395
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->showSuccess()V

    .line 398
    :cond_5
    if-ne v1, v8, :cond_0

    .line 399
    invoke-direct {p0, v9}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 400
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->showSuccess()V

    .line 401
    iget-boolean v2, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    if-eqz v2, :cond_6

    .line 402
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    goto :goto_0

    .line 404
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto/16 :goto_0
.end method

.method public onCameraReleased()V
    .locals 0

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    .line 585
    return-void
.end method

.method public onDeviceKeepMoving(D)V
    .locals 2
    .parameter "a"

    .prologue
    const/4 v1, 0x0

    .line 836
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    .line 837
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 840
    :cond_0
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 574
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 575
    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 579
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 580
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 581
    return-void
.end method

.method public onShutter()V
    .locals 1

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 570
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    .line 571
    return-void
.end method

.method public onShutterDown()V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method public onShutterUp()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->canTap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/FocusManager;->focusPoint(III)V

    .line 491
    :cond_0
    return-void
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 0
    .parameter "focusMode"

    .prologue
    .line 777
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 778
    return-void
.end method

.method public prepareCapture(ZI)V
    .locals 5
    .parameter "autoFocus"
    .parameter "fromWhat"

    .prologue
    const/4 v4, 0x3

    .line 200
    iget-boolean v3, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v3, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    const/4 v2, 0x1

    .line 202
    .local v2, tryAutoFocus:Z
    const/4 v0, 0x0

    .line 203
    .local v0, autoFocusCalled:Z
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, focusMode:Ljava/lang/String;
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    const-string v3, "auto"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "macro"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 207
    :cond_2
    iget v3, p0, Lcom/android/camera/FocusManager;->mLastState:I

    if-ne v3, v4, :cond_3

    .line 208
    const/4 v2, 0x0

    .line 212
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->isFocusEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 214
    iget v3, p0, Lcom/android/camera/FocusManager;->mState:I

    if-eq v3, v4, :cond_4

    iget v3, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    .line 216
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FaceView;->faceExists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 217
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->focusFaceArea()Z

    .line 218
    const/4 v0, 0x1

    .line 228
    :cond_4
    :goto_1
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v3, "continuous-picture"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->requestAutoFocus()V

    .line 231
    const/4 v0, 0x1

    goto :goto_0

    .line 220
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->resetFocusAreaToCenter()V

    .line 221
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    .line 222
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public removeMessages()V
    .locals 2

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 773
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 774
    return-void
.end method

.method public requestAutoFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 523
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->canTap()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-nez v1, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    const/4 v0, 0x2

    .line 529
    .local v0, from:I
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->isNeedCancelAutoFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 531
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v1}, Lcom/android/camera/FocusManager$Listener;->cancelAutoFocus()V

    .line 532
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 533
    invoke-direct {p0, v3}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 534
    iput-boolean v3, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    .line 535
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 536
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 538
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->resetFocusAreaToFaceArea()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 539
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 540
    const/4 v0, 0x1

    .line 545
    :goto_1
    iput-boolean v3, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    .line 546
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v1}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    .line 547
    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    goto :goto_0

    .line 542
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->resetFocusAreaToCenter()V

    goto :goto_1
.end method

.method public resetFocusStateIfNeeded()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 657
    iput-object v0, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 658
    iput-object v0, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 659
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 660
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    .line 661
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    .line 665
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 668
    :cond_0
    return-void
.end method

.method public resetTouchFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 750
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/zxing/QRCodeManager;->updateViewFinderRect(Landroid/graphics/Point;)V

    .line 752
    iput-object v1, p0, Lcom/android/camera/FocusManager;->mFocusArea:Ljava/util/List;

    .line 753
    iput-object v1, p0, Lcom/android/camera/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 754
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    .line 755
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->resetFocusIndicator()V

    .line 757
    :cond_0
    return-void
.end method

.method public setAeAwbLock(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 781
    iput-boolean p1, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    .line 782
    return-void
.end method

.method public setFaceView(Lcom/android/camera/ui/FaceView;)V
    .locals 0
    .parameter "faceView"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    .line 185
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "parameters"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 165
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 166
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "auto"

    iget-object v3, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    .line 169
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mMeteringAreaSupported:Z

    .line 170
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mLockAeAwbNeeded:Z

    .line 172
    return-void

    :cond_2
    move v0, v2

    .line 166
    goto :goto_0

    :cond_3
    move v0, v2

    .line 169
    goto :goto_1
.end method

.method public setPreviewSize(II)V
    .locals 1
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 176
    iget v0, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    if-eq v0, p2, :cond_1

    .line 177
    :cond_0
    iput p1, p0, Lcom/android/camera/FocusManager;->mPreviewWidth:I

    .line 178
    iput p2, p0, Lcom/android/camera/FocusManager;->mPreviewHeight:I

    .line 179
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->setMatrix()V

    .line 181
    :cond_1
    return-void
.end method

.method public updateFocusUI()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 725
    iget-boolean v1, p0, Lcom/android/camera/FocusManager;->mInitialized:Z

    if-nez v1, :cond_1

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    iget v1, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFaceView:Lcom/android/camera/ui/FaceView;

    :goto_1
    check-cast v0, Lcom/android/camera/ui/FocusIndicator;

    .line 732
    .local v0, focusIndicator:Lcom/android/camera/ui/FocusIndicator;
    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    if-nez v1, :cond_3

    .line 733
    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->clear()V

    goto :goto_0

    .line 730
    .end local v0           #focusIndicator:Lcom/android/camera/ui/FocusIndicator;
    :cond_2
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusView:Lcom/android/camera/ui/FocusView;

    goto :goto_1

    .line 734
    .restart local v0       #focusIndicator:Lcom/android/camera/ui/FocusIndicator;
    :cond_3
    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 736
    :cond_4
    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 738
    :cond_5
    const-string v1, "continuous-picture"

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 740
    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->showSuccess()V

    goto :goto_0

    .line 741
    :cond_6
    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 742
    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->showSuccess()V

    goto :goto_0

    .line 743
    :cond_7
    iget v1, p0, Lcom/android/camera/FocusManager;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 744
    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->showFail()V

    goto :goto_0
.end method
