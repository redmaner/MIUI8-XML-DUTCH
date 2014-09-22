.class public Lcom/android/camera/hardware/MTKCamera;
.super Lcom/android/camera/hardware/CameraHardware;
.source "MTKCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/hardware/MTKCamera$MTKParameters;
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "cameraId"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/hardware/CameraHardware;-><init>(I)V

    .line 9
    return-void
.end method

.method public static open(I)Lcom/android/camera/hardware/MTKCamera;
    .locals 1
    .parameter "cameraId"

    .prologue
    .line 12
    new-instance v0, Lcom/android/camera/hardware/MTKCamera;

    invoke-direct {v0, p0}, Lcom/android/camera/hardware/MTKCamera;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/android/camera/hardware/MTKCamera;->getParameters()Lcom/android/camera/hardware/MTKCamera$MTKParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/android/camera/hardware/CameraHardware$HardwareParameters;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/android/camera/hardware/MTKCamera;->getParameters()Lcom/android/camera/hardware/MTKCamera$MTKParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/android/camera/hardware/MTKCamera$MTKParameters;
    .locals 4

    .prologue
    .line 29
    new-instance v0, Lcom/android/camera/hardware/MTKCamera$MTKParameters;

    invoke-direct {v0, p0}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;-><init>(Lcom/android/camera/hardware/MTKCamera;)V

    .line 30
    .local v0, p:Lcom/android/camera/hardware/MTKCamera$MTKParameters;
    invoke-virtual {p0}, Lcom/android/camera/hardware/MTKCamera;->getParametersString()Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, s:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 32
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Parameters is Null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 34
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->unflatten(Ljava/lang/String;)V

    .line 35
    return-object v0
.end method
