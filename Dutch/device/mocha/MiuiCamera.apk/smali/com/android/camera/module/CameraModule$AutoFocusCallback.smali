.class final Lcom/android/camera/module/CameraModule$AutoFocusCallback;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .parameter

    .prologue
    .line 922
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$AutoFocusCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 922
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$AutoFocusCallback;-><init>(Lcom/android/camera/module/CameraModule;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 5
    .parameter "focused"
    .parameter "camera"

    .prologue
    .line 927
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$AutoFocusCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 939
    :goto_0
    return-void

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$AutoFocusCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$AutoFocusCallback;->this$0:Lcom/android/camera/module/CameraModule;

    #getter for: Lcom/android/camera/module/CameraModule;->mFocusStartTime:J
    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->access$4100(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/camera/module/CameraModule;->mAutoFocusTime:J

    .line 930
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoFocusTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$AutoFocusCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v2, v2, Lcom/android/camera/module/CameraModule;->mAutoFocusTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$AutoFocusCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_1

    .line 932
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$AutoFocusCallback;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->setCameraState(I)V

    .line 934
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$AutoFocusCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mFocusManager:Lcom/android/camera/FocusManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/FocusManager;->onAutoFocus(Z)V

    .line 935
    if-eqz p1, :cond_2

    .line 936
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$AutoFocusCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->requestDecode()V

    .line 938
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$AutoFocusCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/MotionFocusManager;->reset()V

    goto :goto_0
.end method
