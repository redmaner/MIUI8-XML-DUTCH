.class public Lcom/android/camera/effect/ShaderNativeUtil;
.super Ljava/lang/Object;
.source "ShaderNativeUtil.java"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    :try_start_0
    const-string v1, "CameraEffectJNI"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .local v0, e:Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 14
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 15
    .restart local v0       #e:Ljava/lang/Throwable;
    const-string v1, "Camera"

    const-string v2, "ShaderNativeUtil load CameraEffectJNI.so failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native getJpegPicture(IIIII)[B
.end method

.method public static getPicture(III)[B
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "quality"

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-static {v0, v0, p0, p1, p2}, Lcom/android/camera/effect/ShaderNativeUtil;->getJpegPicture(IIIII)[B

    move-result-object v0

    return-object v0
.end method

.method private static native initJpegTexture([BII)[I
.end method

.method public static initTexture([BI)[I
    .locals 1
    .parameter "data"
    .parameter "texId"

    .prologue
    .line 21
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/camera/effect/ShaderNativeUtil;->initJpegTexture([BII)[I

    move-result-object v0

    return-object v0
.end method

.method public static initTexture([BII)[I
    .locals 1
    .parameter "data"
    .parameter "texId"
    .parameter "downScale"

    .prologue
    .line 26
    invoke-static {p0, p1, p2}, Lcom/android/camera/effect/ShaderNativeUtil;->initJpegTexture([BII)[I

    move-result-object v0

    return-object v0
.end method
