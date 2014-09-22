.class final Lcom/android/camera/module/CameraModule$JpegPictureCallback;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegPictureCallback"
.end annotation


# instance fields
.field mLocation:Landroid/location/Location;

.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter "loc"

    .prologue
    .line 711
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    iput-object p2, p0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    .line 713
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 32
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 718
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v2, v2, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v2, :cond_1

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    #setter for: Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J
    invoke-static {v2, v3, v4}, Lcom/android/camera/module/CameraModule;->access$2902(Lcom/android/camera/module/CameraModule;J)J

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mPostViewPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$2600(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-eqz v2, :cond_4

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mPostViewPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$2600(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mShutterCallbackTime:J
    invoke-static {v7}, Lcom/android/camera/module/CameraModule;->access$2400(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v7

    sub-long/2addr v3, v7

    iput-wide v3, v2, Lcom/android/camera/module/CameraModule;->mShutterToPictureDisplayedTime:J

    .line 729
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$2900(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mPostViewPictureCallbackTime:J
    invoke-static {v7}, Lcom/android/camera/module/CameraModule;->access$2600(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v7

    sub-long/2addr v3, v7

    iput-wide v3, v2, Lcom/android/camera/module/CameraModule;->mPictureDisplayedToJpegCallbackTime:J

    .line 737
    :goto_1
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v7, v4, Lcom/android/camera/module/CameraModule;->mPictureDisplayedToJpegCallbackTime:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusManager;->onShutter()V

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v2, v2, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-lt v2, v3, :cond_0

    if-eqz p1, :cond_0

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v3, 0x1

    #calls: Lcom/android/camera/module/CameraModule;->updateMutexModeUI(Z)V
    invoke-static {v2, v3}, Lcom/android/camera/module/CameraModule;->access$2500(Lcom/android/camera/module/CameraModule;Z)V

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/module/CameraModule;->playAnimationBeforeCapture()Z

    move-result v2

    if-nez v2, :cond_2

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/module/CameraModule;->playSound(I)V

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #calls: Lcom/android/camera/module/CameraModule;->animateSlide()V
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$3000(Lcom/android/camera/module/CameraModule;)V

    .line 756
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v31

    .line 757
    .local v31, s:Landroid/hardware/Camera$Size;
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v15

    .line 759
    .local v15, orientation:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mJpegRotation:I
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$3100(Lcom/android/camera/module/CameraModule;)I

    move-result v2

    add-int/2addr v2, v15

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_5

    .line 760
    move-object/from16 v0, v31

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    .line 761
    .local v5, width:I
    move-object/from16 v0, v31

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    .line 766
    .local v6, height:I
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #calls: Lcom/android/camera/module/CameraModule;->getSuffix()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$3200(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 767
    .local v11, title:Ljava/lang/String;
    const/4 v1, 0x0

    .line 768
    .local v1, jpeg:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 769
    new-instance v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;

    .end local v1           #jpeg:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;
    if-le v5, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mPreviewWidth:I
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$2000(Lcom/android/camera/module/CameraModule;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mPreviewHeight:I
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$2100(Lcom/android/camera/module/CameraModule;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_3
    if-le v6, v5, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mPreviewWidth:I
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$2000(Lcom/android/camera/module/CameraModule;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mPreviewHeight:I
    invoke-static {v4}, Lcom/android/camera/module/CameraModule;->access$2100(Lcom/android/camera/module/CameraModule;)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_4
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getEffect()I

    move-result v7

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getEffectRectF()Landroid/graphics/RectF;

    move-result-object v8

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getInvertFlag()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    if-nez v2, :cond_8

    const/4 v10, 0x0

    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getOrientation()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isFrontMirror(Landroid/content/SharedPreferences;)Z

    move-result v2

    if-nez v2, :cond_9

    const/16 v16, 0x1

    :goto_6
    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v16}, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;-><init>([BIIIIILandroid/graphics/RectF;ILandroid/location/Location;Ljava/lang/String;JIIZ)V

    .line 787
    .restart local v1       #jpeg:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v2, v2, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    if-nez v2, :cond_b

    .line 788
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v2

    const-string v3, "camera_picture_taken_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 789
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 790
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$3300(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->processorJpegAsync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)V

    .line 802
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v2}, Lcom/android/camera/module/CameraModule;->setupPreview()V

    .line 824
    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 825
    .local v28, now:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$2900(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v3

    sub-long v3, v28, v3

    iput-wide v3, v2, Lcom/android/camera/module/CameraModule;->mJpegCallbackFinishTime:J

    .line 826
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mJpegCallbackFinishTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v7, v4, Lcom/android/camera/module/CameraModule;->mJpegCallbackFinishTime:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v3, v3, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    sub-long v3, v28, v3

    iput-wide v3, v2, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    .line 828
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCaptureStartTime(from onShutterButtonClick start to jpegCallback finished) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v7, v4, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 732
    .end local v1           #jpeg:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;
    .end local v5           #width:I
    .end local v6           #height:I
    .end local v11           #title:Ljava/lang/String;
    .end local v15           #orientation:I
    .end local v28           #now:J
    .end local v31           #s:Landroid/hardware/Camera$Size;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mRawPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$2700(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mShutterCallbackTime:J
    invoke-static {v7}, Lcom/android/camera/module/CameraModule;->access$2400(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v7

    sub-long/2addr v3, v7

    iput-wide v3, v2, Lcom/android/camera/module/CameraModule;->mShutterToPictureDisplayedTime:J

    .line 734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mJpegPictureCallbackTime:J
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$2900(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mRawPictureCallbackTime:J
    invoke-static {v7}, Lcom/android/camera/module/CameraModule;->access$2700(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v7

    sub-long/2addr v3, v7

    iput-wide v3, v2, Lcom/android/camera/module/CameraModule;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_1

    .line 763
    .restart local v15       #orientation:I
    .restart local v31       #s:Landroid/hardware/Camera$Size;
    :cond_5
    move-object/from16 v0, v31

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    .line 764
    .restart local v5       #width:I
    move-object/from16 v0, v31

    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    .restart local v6       #height:I
    goto/16 :goto_2

    .line 769
    .restart local v11       #title:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mPreviewWidth:I
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$2000(Lcom/android/camera/module/CameraModule;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mPreviewHeight:I
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$2100(Lcom/android/camera/module/CameraModule;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mPreviewWidth:I
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$2000(Lcom/android/camera/module/CameraModule;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mPreviewHeight:I
    invoke-static {v4}, Lcom/android/camera/module/CameraModule;->access$2100(Lcom/android/camera/module/CameraModule;)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto/16 :goto_4

    :cond_8
    new-instance v10, Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    invoke-direct {v10, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto/16 :goto_5

    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 792
    .restart local v1       #jpeg:Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mImageSaver:Lcom/android/camera/storage/ImageSaver;
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$3400(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/storage/ImageSaver;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->mLocation:Landroid/location/Location;

    move-object/from16 v22, v0

    const/16 v25, 0x0

    move-object/from16 v17, p1

    move-object/from16 v18, v11

    move/from16 v23, v5

    move/from16 v24, v6

    move/from16 v26, v15

    invoke-virtual/range {v16 .. v26}, Lcom/android/camera/storage/ImageSaver;->addImage([BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;I)V

    goto/16 :goto_7

    .line 804
    :cond_b
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 805
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mEffectProcessor:Lcom/android/camera/effect/renders/SnapshotEffectRender;
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$3300(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/effect/renders/SnapshotEffectRender;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->processorJpegSync(Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v1, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    #setter for: Lcom/android/camera/module/CameraModule;->mJpegImageData:[B
    invoke-static {v2, v3}, Lcom/android/camera/module/CameraModule;->access$3502(Lcom/android/camera/module/CameraModule;[B)[B

    .line 810
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v2, v2, Lcom/android/camera/module/CameraModule;->mQuickCapture:Z

    if-nez v2, :cond_d

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #calls: Lcom/android/camera/module/CameraModule;->showPostCaptureAlert()V
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$3600(Lcom/android/camera/module/CameraModule;)V

    .line 812
    int-to-double v2, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mPreviewHeight:I
    invoke-static {v4}, Lcom/android/camera/module/CameraModule;->access$2100(Lcom/android/camera/module/CameraModule;)I

    move-result v4

    int-to-double v7, v4

    div-double/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v30, v0

    .line 813
    .local v30, ratio:I
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v27

    .line 814
    .local v27, inSampleSize:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mJpegImageData:[B
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$3500(Lcom/android/camera/module/CameraModule;)[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v4}, Lcom/android/camera/module/CameraModule;->getCameraRotation()I

    move-result v4

    rsub-int v4, v4, 0x168

    add-int/2addr v4, v15

    const/4 v7, 0x0

    move/from16 v0, v27

    invoke-static {v3, v4, v7, v0}, Lcom/android/camera/Thumbnail;->createBitmap([BIZI)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraScreenNail;->renderBitmapToCanvas(Landroid/graphics/Bitmap;)V

    goto/16 :goto_8

    .line 808
    .end local v27           #inSampleSize:I
    .end local v30           #ratio:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    move-object/from16 v0, p1

    #setter for: Lcom/android/camera/module/CameraModule;->mJpegImageData:[B
    invoke-static {v2, v0}, Lcom/android/camera/module/CameraModule;->access$3502(Lcom/android/camera/module/CameraModule;[B)[B

    goto :goto_9

    .line 820
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/module/CameraModule$JpegPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #calls: Lcom/android/camera/module/CameraModule;->doAttach()V
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$3700(Lcom/android/camera/module/CameraModule;)V

    goto/16 :goto_8
.end method
