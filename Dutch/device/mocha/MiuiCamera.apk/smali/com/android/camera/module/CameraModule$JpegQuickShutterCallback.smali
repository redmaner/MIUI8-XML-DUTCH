.class final Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JpegQuickShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .parameter

    .prologue
    .line 907
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 907
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;-><init>(Lcom/android/camera/module/CameraModule;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 8

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/android/camera/module/CameraModule;->mShutterCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/android/camera/module/CameraModule;->access$2402(Lcom/android/camera/module/CameraModule;J)J

    .line 911
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mShutterCallbackTime:J
    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->access$2400(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v3, v3, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/camera/module/CameraModule;->mShutterLag:J

    .line 912
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterLag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v2, v2, Lcom/android/camera/module/CameraModule;->mShutterLag:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->isLongShotMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v1

    .line 915
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    new-instance v2, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {v2, v3}, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;-><init>(Lcom/android/camera/module/CameraModule;)V

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mRawPictureCallback:Lcom/android/camera/module/CameraModule$RawPictureCallback;
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$4000(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/module/CameraModule$RawPictureCallback;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;

    iget-object v6, p0, Lcom/android/camera/module/CameraModule$JpegQuickShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/camera/module/CameraModule$JpegQuickPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;Landroid/location/Location;)V

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 917
    monitor-exit v1

    .line 919
    :cond_0
    return-void

    .line 917
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
