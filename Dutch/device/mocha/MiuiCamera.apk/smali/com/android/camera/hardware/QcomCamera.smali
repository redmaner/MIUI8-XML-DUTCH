.class public Lcom/android/camera/hardware/QcomCamera;
.super Lcom/android/camera/hardware/CameraHardware;
.source "QcomCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/hardware/QcomCamera$QcomParameters;,
        Lcom/android/camera/hardware/QcomCamera$QcomFace;
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "cameraId"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/android/camera/hardware/CameraHardware;-><init>(I)V

    .line 12
    return-void
.end method

.method public static open(I)Lcom/android/camera/hardware/QcomCamera;
    .locals 1
    .parameter "cameraId"

    .prologue
    .line 15
    new-instance v0, Lcom/android/camera/hardware/QcomCamera;

    invoke-direct {v0, p0}, Lcom/android/camera/hardware/QcomCamera;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getCurrentFocusPosition()I
    .locals 4

    .prologue
    .line 345
    new-instance v1, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    invoke-direct {v1, p0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;-><init>(Lcom/android/camera/hardware/QcomCamera;)V

    .line 346
    .local v1, p:Lcom/android/camera/hardware/QcomCamera$QcomParameters;
    invoke-virtual {p0}, Lcom/android/camera/hardware/QcomCamera;->getParametersString()Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->unflatten(Ljava/lang/String;)V

    .line 349
    const/4 v0, -0x1

    .line 350
    .local v0, focus_pos:I
    invoke-virtual {v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getCurrentFocusPosition()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 351
    invoke-virtual {v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getCurrentFocusPosition()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 353
    :cond_0
    return v0
.end method

.method public bridge synthetic getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/android/camera/hardware/QcomCamera;->getParameters()Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/android/camera/hardware/CameraHardware$HardwareParameters;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/android/camera/hardware/QcomCamera;->getParameters()Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/android/camera/hardware/QcomCamera$QcomParameters;
    .locals 4

    .prologue
    .line 32
    new-instance v0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    invoke-direct {v0, p0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;-><init>(Lcom/android/camera/hardware/QcomCamera;)V

    .line 33
    .local v0, p:Lcom/android/camera/hardware/QcomCamera$QcomParameters;
    invoke-virtual {p0}, Lcom/android/camera/hardware/QcomCamera;->getParametersString()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, s:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 35
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Parameters is Null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 37
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->unflatten(Ljava/lang/String;)V

    .line 38
    return-object v0
.end method

.method public getWBCurrentCCT()I
    .locals 4

    .prologue
    .line 332
    new-instance v1, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    invoke-direct {v1, p0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;-><init>(Lcom/android/camera/hardware/QcomCamera;)V

    .line 333
    .local v1, p:Lcom/android/camera/hardware/QcomCamera$QcomParameters;
    invoke-virtual {p0}, Lcom/android/camera/hardware/QcomCamera;->getParametersString()Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->unflatten(Ljava/lang/String;)V

    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, cct:I
    invoke-virtual {v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getWBCurrentCCT()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 338
    invoke-virtual {v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getWBCurrentCCT()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 340
    :cond_0
    return v0
.end method
