.class public abstract Lcom/android/camera/effect/renders/RegionEffectRender;
.super Lcom/android/camera/effect/renders/ConvolutionEffectRender;
.source "RegionEffectRender.java"


# instance fields
.field protected mUniformEffectRectH:I

.field protected mUniformInvertRectH:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0
    .parameter "canvas"
    .parameter "id"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 20
    return-void
.end method


# virtual methods
.method protected getEffectRect(Z)[F
    .locals 12
    .parameter "isSnapShot"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x4000

    const/high16 v7, 0x3f80

    .line 71
    if-eqz p1, :cond_3

    .line 72
    const/4 v1, 0x0

    .line 73
    .local v1, rectF:Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 75
    .local v0, matrix:Landroid/graphics/Matrix;
    iget-boolean v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mMirror:Z

    if-eqz v2, :cond_2

    .line 76
    iget v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mOrientation:I

    iget v3, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mJpegOrientation:I

    sub-int/2addr v2, v3

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_1

    .line 77
    new-instance v1, Landroid/graphics/RectF;

    .end local v1           #rectF:Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v2, v2, v9

    sub-float v2, v7, v2

    iget-object v3, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v3, v3, v10

    iget-object v4, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v4, v4, v11

    sub-float v4, v7, v4

    iget-object v5, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 97
    .restart local v1       #rectF:Landroid/graphics/RectF;
    :goto_0
    iget v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mJpegOrientation:I

    rem-int/lit8 v2, v2, 0x5a

    if-nez v2, :cond_0

    .line 98
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 99
    const/high16 v2, 0x42b4

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 100
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    neg-float v2, v2

    div-float/2addr v2, v8

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    neg-float v3, v3

    div-float/2addr v3, v8

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 101
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v8

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v8

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 104
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 105
    iget v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mOrientation:I

    iget v3, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mJpegOrientation:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 106
    const/high16 v2, -0x4100

    const/high16 v3, -0x4100

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 107
    const/high16 v2, 0x3f00

    const/high16 v3, 0x3f00

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 108
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 110
    iget-object v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mSnapshotEffectRect:[F

    iget v3, v1, Landroid/graphics/RectF;->left:F

    aput v3, v2, v9

    .line 111
    iget-object v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mSnapshotEffectRect:[F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    aput v3, v2, v10

    .line 112
    iget-object v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mSnapshotEffectRect:[F

    iget v3, v1, Landroid/graphics/RectF;->right:F

    aput v3, v2, v11

    .line 113
    iget-object v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mSnapshotEffectRect:[F

    const/4 v3, 0x3

    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    aput v4, v2, v3

    .line 114
    iget-object v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mSnapshotEffectRect:[F

    .line 123
    .end local v0           #matrix:Landroid/graphics/Matrix;
    :goto_1
    return-object v2

    .line 83
    .restart local v0       #matrix:Landroid/graphics/Matrix;
    :cond_1
    new-instance v1, Landroid/graphics/RectF;

    .end local v1           #rectF:Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v2, v2, v9

    iget-object v3, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v3, v3, v10

    sub-float v3, v7, v3

    iget-object v4, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v4, v4, v11

    iget-object v5, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    sub-float v5, v7, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v1       #rectF:Landroid/graphics/RectF;
    goto :goto_0

    .line 90
    :cond_2
    new-instance v1, Landroid/graphics/RectF;

    .end local v1           #rectF:Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v2, v2, v9

    iget-object v3, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v3, v3, v10

    iget-object v4, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aget v4, v4, v11

    iget-object v5, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v1       #rectF:Landroid/graphics/RectF;
    goto/16 :goto_0

    .line 116
    .end local v0           #matrix:Landroid/graphics/Matrix;
    .end local v1           #rectF:Landroid/graphics/RectF;
    :cond_3
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getEffectRectF()Landroid/graphics/RectF;

    move-result-object v1

    .line 118
    .restart local v1       #rectF:Landroid/graphics/RectF;
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getEffect()I

    move-result v2

    iget v3, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mId:I

    if-ne v2, v3, :cond_4

    .line 119
    invoke-virtual {p0, v1}, Lcom/android/camera/effect/renders/RegionEffectRender;->setEffectRectF(Landroid/graphics/RectF;)V

    .line 123
    :goto_2
    iget-object v2, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    goto :goto_1

    .line 121
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/camera/effect/renders/RegionEffectRender;->setEffectRectF(Landroid/graphics/RectF;)V

    goto :goto_2
.end method

.method protected getInvertFlag(Z)I
    .locals 1
    .parameter "isSnapShot"

    .prologue
    .line 58
    if-eqz p1, :cond_0

    .line 59
    iget v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mInvertFlag:I

    .line 61
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getInvertFlag()I

    move-result v0

    goto :goto_0
.end method

.method protected initEffectRect(Z)V
    .locals 4
    .parameter "isSnapShot"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mUniformEffectRectH:I

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RegionEffectRender;->getEffectRect(Z)[F

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 67
    iget v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mUniformInvertRectH:I

    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RegionEffectRender;->getInvertFlag(Z)I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 68
    return-void
.end method

.method protected initShader()V
    .locals 2

    .prologue
    .line 25
    invoke-super {p0}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->initShader()V

    .line 26
    iget v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mProgram:I

    const-string v1, "uEffectRect"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mUniformEffectRectH:I

    .line 27
    iget v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mProgram:I

    const-string v1, "uInvertRect"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mUniformInvertRectH:I

    .line 28
    return-void
.end method

.method protected initShaderValue(Z)V
    .locals 0
    .parameter "isSnapShot"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->initShaderValue(Z)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/renders/RegionEffectRender;->initEffectRect(Z)V

    .line 34
    return-void
.end method

.method public setEffectRectF(Landroid/graphics/RectF;)V
    .locals 6
    .parameter "rectF"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 38
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    aput v1, v0, v3

    .line 40
    iget-object v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    aput v1, v0, v4

    .line 41
    iget-object v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    aput v1, v0, v5

    .line 42
    iget-object v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    const/4 v1, 0x3

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    .line 49
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aput v1, v0, v3

    .line 45
    iget-object v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aput v1, v0, v4

    .line 46
    iget-object v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    aput v2, v0, v5

    .line 47
    iget-object v0, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mPreviewEffectRect:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    goto :goto_0
.end method

.method public setInvertFlag(I)V
    .locals 0
    .parameter "invertFlag"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/camera/effect/renders/RegionEffectRender;->mInvertFlag:I

    .line 55
    return-void
.end method
