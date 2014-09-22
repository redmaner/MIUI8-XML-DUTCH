.class public Lcom/android/camera/hardware/QcomCamera$QcomParameters;
.super Lcom/android/camera/hardware/CameraHardware$HardwareParameters;
.source "QcomCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hardware/QcomCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QcomParameters"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/hardware/QcomCamera;


# direct methods
.method public constructor <init>(Lcom/android/camera/hardware/QcomCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->this$0:Lcom/android/camera/hardware/QcomCamera;

    invoke-direct {p0, p1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;-><init>(Lcom/android/camera/hardware/CameraHardware;)V

    return-void
.end method


# virtual methods
.method public getCurrentFocusPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    const-string v0, "current-focus-position"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxContrast()I
    .locals 1

    .prologue
    .line 272
    const-string v0, "max-contrast"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxSaturation()I
    .locals 1

    .prologue
    .line 260
    const-string v0, "max-saturation"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxSharpness()I
    .locals 1

    .prologue
    .line 284
    const-string v0, "max-sharpness"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPictureFlip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    const-string v0, "snapshot-picture-flip"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedDenoiseModes()Ljava/util/List;
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
    .line 242
    const-string v1, "denoise-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, str:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedIsoValues()Ljava/util/List;
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
    .line 251
    const-string v1, "iso-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, str:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedTouchAfAec()Ljava/util/List;
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
    .line 296
    const-string v1, "touch-af-aec-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, str:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getTimeWatermark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string v0, "watermark"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWBCurrentCCT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    const-string v0, "wb-current-cct"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVideoStabilizationSupported()Z
    .locals 1

    .prologue
    .line 322
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI3W:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    const/4 v0, 0x0

    .line 325
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->isVideoStabilizationSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public setAutoExposure(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 230
    const-string v0, "auto-exposure"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public setContrast(I)V
    .locals 3
    .parameter "contrast"

    .prologue
    .line 276
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getMaxContrast()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 277
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Contrast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_1
    const-string v0, "contrast"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public setDenoise(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 247
    const-string v0, "denoise"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public setFaceDetectionMode(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 305
    const-string v0, "face-detection"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 173
    const-string v0, "manual"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    const-string p1, "auto"

    .line 175
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setFocusPosition(I)V

    .line 179
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->setFocusMode(Ljava/lang/String;)V

    .line 180
    return-void

    .line 176
    :cond_1
    const-string v0, "lock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const-string p1, "auto"

    goto :goto_0
.end method

.method public setFocusPosition(I)V
    .locals 1
    .parameter "postion"

    .prologue
    .line 201
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setFocusPosition(II)V

    .line 202
    return-void
.end method

.method public setFocusPosition(II)V
    .locals 2
    .parameter "type"
    .parameter "pos"

    .prologue
    .line 205
    const-string v0, "manual-focus-pos-type"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v0, "manual-focus-position"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public setHandNight(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 159
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, v:Ljava/lang/String;
    const-string v1, "morpho-hht"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public setISOValue(Ljava/lang/String;)V
    .locals 1
    .parameter "iso"

    .prologue
    .line 256
    const-string v0, "iso"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public setMorphoHDR(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 109
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, v:Ljava/lang/String;
    const-string v1, "morpho-hdr"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public setMultiFaceBeautify(Ljava/lang/String;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 145
    const-string v0, "xiaomi-multi-face-beautify"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public setPictureFlip(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 234
    const-string v0, "snapshot-picture-flip"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public setSaturation(I)V
    .locals 3
    .parameter "saturation"

    .prologue
    .line 264
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getMaxSaturation()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 265
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Saturation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_1
    const-string v0, "saturation"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public setSharpness(I)V
    .locals 3
    .parameter "sharpness"

    .prologue
    .line 288
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getMaxSharpness()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Sharpness "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_1
    const-string v0, "sharpness"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public setStillBeautify(Ljava/lang/String;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 117
    const-string v0, "xiaomi-still-beautify-values"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public setTimeWatermark(Ljava/lang/String;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 131
    const-string v0, "watermark"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public setTouchAfAec(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 301
    const-string v0, "touch-af-aec"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public setWBManualCCT(I)V
    .locals 2
    .parameter "cct"

    .prologue
    .line 193
    const-string v0, "wb-manual-cct"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public setWhiteBalance(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 184
    const-string v0, "manual-cct"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    invoke-static {}, Lcom/android/camera/CameraSettings;->getKValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setWBManualCCT(I)V

    .line 189
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 190
    return-void

    .line 186
    :cond_1
    const-string v0, "measure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const-string p1, "auto"

    goto :goto_0
.end method

.method public setZSLMode(Ljava/lang/String;)V
    .locals 1
    .parameter "zsl"

    .prologue
    .line 309
    const-string v0, "zsl"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method
