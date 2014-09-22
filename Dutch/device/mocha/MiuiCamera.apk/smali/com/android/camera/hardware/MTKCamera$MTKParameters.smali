.class public Lcom/android/camera/hardware/MTKCamera$MTKParameters;
.super Lcom/android/camera/hardware/CameraHardware$HardwareParameters;
.source "MTKCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hardware/MTKCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MTKParameters"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/hardware/MTKCamera;


# direct methods
.method public constructor <init>(Lcom/android/camera/hardware/MTKCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->this$0:Lcom/android/camera/hardware/MTKCamera;

    invoke-direct {p0, p1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;-><init>(Lcom/android/camera/hardware/CameraHardware;)V

    return-void
.end method


# virtual methods
.method public getSupportedFocusModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-super {p0}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 64
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "manual"

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 65
    return-object v0
.end method
