.class public Lcom/android/camera/hardware/CameraHardware;
.super Landroid/hardware/Camera;
.source "CameraHardware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/hardware/CameraHardware$HardwareParameters;,
        Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    }
.end annotation


# instance fields
.field public mIsDumpParameters:Z


# direct methods
.method constructor <init>(I)V
    .locals 2
    .parameter "cameraId"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/hardware/Camera;-><init>(I)V

    .line 23
    const-string v0, "camera_dump_parameters"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/hardware/CameraHardware;->mIsDumpParameters:Z

    .line 24
    return-void
.end method

.method public static open(I)Lcom/android/camera/hardware/CameraHardware;
    .locals 1
    .parameter "cameraId"

    .prologue
    .line 27
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {p0}, Lcom/android/camera/hardware/QcomCamera;->open(I)Lcom/android/camera/hardware/QcomCamera;

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    .line 29
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-static {p0}, Lcom/android/camera/hardware/MTKCamera;->open(I)Lcom/android/camera/hardware/MTKCamera;

    move-result-object v0

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/android/camera/hardware/CameraHardware;

    invoke-direct {v0, p0}, Lcom/android/camera/hardware/CameraHardware;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method public cancelContinuousMode()V
    .locals 4

    .prologue
    .line 86
    invoke-super {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 88
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v2, "cancelContinuousShot"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 89
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v2

    goto :goto_0

    .line 92
    :catch_1
    move-exception v2

    goto :goto_0

    .line 91
    :catch_2
    move-exception v2

    goto :goto_0

    .line 90
    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method public getCurrentFocusPosition()I
    .locals 1

    .prologue
    .line 279
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/android/camera/hardware/CameraHardware;->getParameters()Lcom/android/camera/hardware/CameraHardware$HardwareParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/android/camera/hardware/CameraHardware$HardwareParameters;
    .locals 4

    .prologue
    .line 54
    new-instance v0, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;

    invoke-direct {v0, p0}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;-><init>(Lcom/android/camera/hardware/CameraHardware;)V

    .line 55
    .local v0, p:Lcom/android/camera/hardware/CameraHardware$HardwareParameters;
    invoke-virtual {p0}, Lcom/android/camera/hardware/CameraHardware;->getParametersString()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, s:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 57
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Parameters is Null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->unflatten(Ljava/lang/String;)V

    .line 60
    return-object v0
.end method

.method public getWBCurrentCCT()I
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public isNeedFlashOn()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 98
    invoke-super {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 99
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 101
    .local v2, result:Ljava/lang/Integer;
    :try_start_0
    const-string v5, "getFlashOn"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 102
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 109
    .end local v1           #method:Ljava/lang/reflect/Method;
    .end local v2           #result:Ljava/lang/Integer;
    :goto_0
    instance-of v5, v2, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 110
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 113
    :goto_1
    return v3

    :cond_0
    move v3, v4

    .line 110
    goto :goto_1

    :cond_1
    move v3, v4

    .line 113
    goto :goto_1

    .line 106
    .restart local v2       #result:Ljava/lang/Integer;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 105
    :catch_1
    move-exception v5

    goto :goto_0

    .line 104
    :catch_2
    move-exception v5

    goto :goto_0

    .line 103
    :catch_3
    move-exception v5

    goto :goto_0
.end method

.method public setLongshotMode(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 73
    invoke-super {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 75
    .local v0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v2, "setLongshot"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 77
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v2

    goto :goto_0

    .line 80
    :catch_1
    move-exception v2

    goto :goto_0

    .line 79
    :catch_2
    move-exception v2

    goto :goto_0

    .line 78
    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 67
    iget-boolean v0, p0, Lcom/android/camera/hardware/CameraHardware;->mIsDumpParameters:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->dump()V

    .line 70
    :cond_0
    return-void
.end method
