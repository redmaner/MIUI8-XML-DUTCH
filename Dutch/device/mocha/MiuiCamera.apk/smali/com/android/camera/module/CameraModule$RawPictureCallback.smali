.class final Lcom/android/camera/module/CameraModule$RawPictureCallback;
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
    name = "RawPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .parameter

    .prologue
    .line 632
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$RawPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 632
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$RawPictureCallback;-><init>(Lcom/android/camera/module/CameraModule;)V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 6
    .parameter "rawData"
    .parameter "camera"

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$RawPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/android/camera/module/CameraModule;->mRawPictureCallbackTime:J
    invoke-static {v0, v1, v2}, Lcom/android/camera/module/CameraModule;->access$2702(Lcom/android/camera/module/CameraModule;J)J

    .line 637
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShutterToRawCallbackTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$RawPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mRawPictureCallbackTime:J
    invoke-static {v2}, Lcom/android/camera/module/CameraModule;->access$2700(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/module/CameraModule$RawPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mShutterCallbackTime:J
    invoke-static {v4}, Lcom/android/camera/module/CameraModule;->access$2400(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    if-eqz p1, :cond_0

    .line 640
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rawData size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$RawPictureCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule$RawPictureCallback;->parseDataSizeDNG([B)I

    move-result v1

    #calls: Lcom/android/camera/module/CameraModule;->writeImage([BI)V
    invoke-static {v0, p1, v1}, Lcom/android/camera/module/CameraModule;->access$2800(Lcom/android/camera/module/CameraModule;[BI)V

    .line 643
    :cond_0
    return-void
.end method

.method protected parseDataSizeDNG([B)I
    .locals 4
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 646
    const/16 v2, 0x8

    array-length v3, p1

    if-le v2, v3, :cond_0

    move v0, v1

    .line 658
    :goto_0
    return v0

    .line 650
    :cond_0
    const/4 v2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x5

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const/4 v3, 0x6

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x7

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    add-int/lit16 v0, v2, 0x13e

    .line 654
    .local v0, size:I
    array-length v2, p1

    if-le v0, v2, :cond_1

    move v0, v1

    .line 655
    goto :goto_0

    .line 657
    :cond_1
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DNG size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
