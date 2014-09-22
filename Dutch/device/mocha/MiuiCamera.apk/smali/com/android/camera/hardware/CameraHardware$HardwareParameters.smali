.class public Lcom/android/camera/hardware/CameraHardware$HardwareParameters;
.super Landroid/hardware/Camera$Parameters;
.source "CameraHardware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hardware/CameraHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HardwareParameters"
.end annotation


# instance fields
.field private mHalCoordinate:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/camera/hardware/CameraHardware;


# direct methods
.method public constructor <init>(Lcom/android/camera/hardware/CameraHardware;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x3e8

    const/16 v1, -0x3e8

    .line 155
    iput-object p1, p0, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->this$0:Lcom/android/camera/hardware/CameraHardware;

    invoke-direct {p0, p1}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;)V

    .line 161
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->mHalCoordinate:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getSupportedPreviewSizes()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    invoke-super {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    .line 176
    .local v2, listOld:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v1, 0x0

    .line 177
    .local v1, listNew:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v2, :cond_2

    .line 178
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 179
    .local v3, size:Landroid/hardware/Camera$Size;
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    const/16 v5, 0x780

    if-gt v4, v5, :cond_0

    iget v4, v3, Landroid/hardware/Camera$Size;->height:I

    const/16 v5, 0x440

    if-gt v4, v5, :cond_0

    .line 180
    if-nez v1, :cond_1

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #listNew:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .restart local v1       #listNew:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_1
    new-instance v4, Landroid/hardware/Camera$Size;

    iget-object v5, p0, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->this$0:Lcom/android/camera/hardware/CameraHardware;

    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v4, v5, v6, v7}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 187
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #size:Landroid/hardware/Camera$Size;
    :cond_2
    return-object v1
.end method

.method public getSupportedWhiteBalance()Ljava/util/List;
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
    .line 164
    invoke-super {p0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    .line 165
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 166
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/camera/Device;->IS_MI3W:Z

    if-eqz v1, :cond_0

    .line 167
    const-string v1, "measure"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_0
    return-object v0
.end method

.method public getTimeWatermark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    const-string v0, "watermark"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFocusAreas(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, focusAreas:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 248
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 249
    .local v0, i:Landroid/hardware/Camera$Area;
    iget-object v2, p0, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->mHalCoordinate:Landroid/graphics/Rect;

    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 250
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFocusAreas fail :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v2, 0x0

    invoke-super {p0, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 257
    .end local v0           #i:Landroid/hardware/Camera$Area;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return-void

    .line 256
    :cond_1
    invoke-super {p0, p1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    goto :goto_0
.end method

.method public setMeteringAreas(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, meteringAreas:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 262
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 263
    .local v0, i:Landroid/hardware/Camera$Area;
    iget-object v2, p0, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->mHalCoordinate:Landroid/graphics/Rect;

    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 264
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMeteringAreas fail :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v2, 0x0

    invoke-super {p0, v2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 271
    .end local v0           #i:Landroid/hardware/Camera$Area;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return-void

    .line 270
    :cond_1
    invoke-super {p0, p1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_0
.end method

.method public setMultiFaceBeautify(Ljava/lang/String;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 235
    const-string v0, "xiaomi-multi-face-beautify"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public setStillBeautify(Ljava/lang/String;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 207
    const-string v0, "xiaomi-still-beautify-values"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public setTimeWatermark(Ljava/lang/String;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 221
    const-string v0, "watermark"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method protected split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    if-nez p1, :cond_1

    const/4 v3, 0x0

    .line 200
    :cond_0
    return-object v3

    .line 194
    :cond_1
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x2c

    invoke-direct {v2, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 195
    .local v2, splitter:Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v2, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 196
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v3, substrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 198
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
