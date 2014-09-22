.class final Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;
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
    name = "JpegQuickPictureCallback"
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
    .line 836
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 837
    iput-object p2, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    .line 838
    return-void
.end method

.method private getBurstShotTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 841
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$3800(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/camera/module/CameraModule;->access$3802(Lcom/android/camera/module/CameraModule;Ljava/lang/String;)Ljava/lang/String;

    .line 844
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mBurstShotTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$3800(Lcom/android/camera/module/CameraModule;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_SHOT2SHOT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, v1, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 11
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    .line 849
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, v1, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-lt v0, v1, :cond_1

    .line 904
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    if-ne v0, v3, :cond_2

    .line 855
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutter()V

    .line 858
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->isLowStorageSpace()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mMutliSnapStopRequest:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    if-lt v0, v3, :cond_4

    .line 860
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "camera_picture_taken_key"

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    int-to-long v3, v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    .line 862
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #calls: Lcom/android/camera/module/CameraModule;->handleMultiSnapDone()V
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$3900(Lcom/android/camera/module/CameraModule;)V

    goto :goto_0

    .line 866
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, v0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    .line 867
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getMultiSnapNum()Lcom/android/camera/ui/RotateTextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 868
    invoke-static {p1}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v10

    .line 870
    .local v10, orientation:I
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mJpegRotation:I
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$3100(Lcom/android/camera/module/CameraModule;)I

    move-result v0

    add-int/2addr v0, v10

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_6

    .line 871
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    iget v7, v0, Landroid/hardware/Camera$Size;->width:I

    .line 872
    .local v7, width:I
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    .line 878
    .local v8, height:I
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->getBurstShotTitle()Ljava/lang/String;

    move-result-object v2

    .line 879
    .local v2, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mImageSaver:Lcom/android/camera/storage/ImageSaver;
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$3400(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v5, v9

    check-cast v5, Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    move-object v1, p1

    invoke-virtual/range {v0 .. v10}, Lcom/android/camera/storage/ImageSaver;->addImage([BLjava/lang/String;JLandroid/net/Uri;Landroid/location/Location;IILcom/android/gallery3d/exif/ExifInterface;I)V

    .line 888
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v0, v0, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v1, v1, Lcom/android/camera/module/CameraModule;->mTotalJpegCallbackNum:I

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mMutliSnapStopRequest:Z

    if-eqz v0, :cond_7

    .line 889
    :cond_5
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "camera_picture_taken_key"

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    int-to-long v3, v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    .line 891
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v5, v1, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    .line 892
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #calls: Lcom/android/camera/module/CameraModule;->handleMultiSnapDone()V
    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->access$3900(Lcom/android/camera/module/CameraModule;)V

    .line 893
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Burst shooting finished. Total:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget v3, v3, Lcom/android/camera/module/CameraModule;->mReceivedJpegCallbackNum:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "pictures, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "cost consuming:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v3, v3, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 874
    .end local v2           #title:Ljava/lang/String;
    .end local v7           #width:I
    .end local v8           #height:I
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    iget v7, v0, Landroid/hardware/Camera$Size;->height:I

    .line 875
    .restart local v7       #width:I
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapPictureSize:Landroid/hardware/Camera$Size;

    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    .restart local v8       #height:I
    goto/16 :goto_1

    .line 902
    .restart local v2       #title:Ljava/lang/String;
    :cond_7
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->playSound(I)V

    goto/16 :goto_0
.end method
