.class public abstract Lcom/android/camera/effect/renders/ConvolutionEffectRender;
.super Lcom/android/camera/effect/renders/PixelEffectRender;
.source "ConvolutionEffectRender.java"


# instance fields
.field protected mStepX:F

.field protected mStepY:F

.field protected mUniformStepH:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/PixelEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0
    .parameter "canvas"
    .parameter "id"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/PixelEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 17
    return-void
.end method


# virtual methods
.method protected initShader()V
    .locals 2

    .prologue
    .line 21
    invoke-super {p0}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShader()V

    .line 22
    iget v0, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mProgram:I

    const-string v1, "uStep"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mUniformStepH:I

    .line 23
    return-void
.end method

.method protected initShaderValue(Z)V
    .locals 3
    .parameter "isSnapShot"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShaderValue(Z)V

    .line 35
    iget v0, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mUniformStepH:I

    iget v1, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mStepX:F

    iget v2, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mStepY:F

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 36
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    const/high16 v1, 0x3f80

    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/PixelEffectRender;->setPreviewSize(II)V

    .line 28
    iget v0, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mPreviewWidth:I

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mStepX:F

    .line 29
    iget v0, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mPreviewHeight:I

    int-to-float v0, v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mStepY:F

    .line 30
    return-void
.end method
