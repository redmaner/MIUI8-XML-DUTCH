.class public Lcom/android/camera/effect/renders/BasicRender;
.super Lcom/android/camera/effect/renders/ShaderRender;
.source "BasicRender.java"


# static fields
.field private static final TEXTURES:[F

.field private static final VERTICES:[F


# instance fields
.field private mUniformAlphaH:I

.field private mUniformBlendFactorH:I

.field private mUniformPaintColorH:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 30
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/effect/renders/BasicRender;->VERTICES:[F

    .line 35
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/effect/renders/BasicRender;->TEXTURES:[F

    return-void

    .line 30
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 35
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/ShaderRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 42
    return-void
.end method

.method private convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/gallery3d/ui/BasicTexture;)V
    .locals 9
    .parameter "source"
    .parameter "target"
    .parameter "texture"

    .prologue
    .line 342
    invoke-virtual {p3}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v3

    .line 343
    .local v3, width:I
    invoke-virtual {p3}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v0

    .line 344
    .local v0, height:I
    invoke-virtual {p3}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureWidth()I

    move-result v2

    .line 345
    .local v2, texWidth:I
    invoke-virtual {p3}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureHeight()I

    move-result v1

    .line 347
    .local v1, texHeight:I
    iget v6, p1, Landroid/graphics/RectF;->left:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->left:F

    .line 348
    iget v6, p1, Landroid/graphics/RectF;->right:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->right:F

    .line 349
    iget v6, p1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->top:F

    .line 350
    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->bottom:F

    .line 353
    int-to-float v6, v3

    int-to-float v7, v2

    div-float v4, v6, v7

    .line 354
    .local v4, xBound:F
    iget v6, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v4

    if-lez v6, :cond_0

    .line 355
    iget v6, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v8, p1, Landroid/graphics/RectF;->left:F

    sub-float v8, v4, v8

    mul-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p2, Landroid/graphics/RectF;->right:F

    .line 357
    iput v4, p1, Landroid/graphics/RectF;->right:F

    .line 359
    :cond_0
    int-to-float v6, v0

    int-to-float v7, v1

    div-float v5, v6, v7

    .line 360
    .local v5, yBound:F
    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_1

    .line 361
    iget v6, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p1, Landroid/graphics/RectF;->top:F

    sub-float v8, v5, v8

    mul-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p2, Landroid/graphics/RectF;->bottom:F

    .line 363
    iput v5, p1, Landroid/graphics/RectF;->bottom:F

    .line 365
    :cond_1
    return-void
.end method

.method private drawLine(FFFFLcom/android/gallery3d/ui/GLPaint;)V
    .locals 7
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "paint"

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 207
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 209
    invoke-direct {p0}, Lcom/android/camera/effect/renders/BasicRender;->initAttribPointer()V

    .line 210
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/BasicRender;->updateViewport()V

    .line 211
    invoke-direct {p0, p5}, Lcom/android/camera/effect/renders/BasicRender;->initGLPaint(Lcom/android/gallery3d/ui/GLPaint;)V

    .line 213
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 214
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v3}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    .line 215
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    sub-float v1, p3, p1

    sub-float v2, p4, p2

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    .line 216
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformMVPMatrixH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getFinalMatrix()[F

    move-result-object v1

    invoke-static {v0, v6, v4, v1, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 217
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformSTMatrixH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getTexMaxtrix()[F

    move-result-object v1

    invoke-static {v0, v6, v4, v1, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 218
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformAlphaH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 219
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformBlendFactorH:I

    invoke-static {v0, v3, v3, v3, v5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 220
    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 221
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 222
    return-void
.end method

.method private drawMesh(Lcom/android/gallery3d/ui/BasicTexture;FFIIII)V
    .locals 6
    .parameter "tex"
    .parameter "x"
    .parameter "y"
    .parameter "xyBuffer"
    .parameter "uvBuffer"
    .parameter "indexBuffer"
    .parameter "indexCount"

    .prologue
    .line 288
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 289
    const v0, 0x84c0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/effect/renders/BasicRender;->bindTexture(Lcom/android/gallery3d/ui/BasicTexture;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mBlendEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result v0

    const v1, 0x3f733333

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/BasicRender;->setBlendEnabled(Z)V

    .line 292
    const v0, 0x8892

    invoke-static {v0, p4}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 293
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttributePositionH:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 294
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 296
    const v0, 0x8892

    invoke-static {v0, p5}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 297
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttributeTexCoorH:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 298
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttributeTexCoorH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 300
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 301
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    .line 302
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformMVPMatrixH:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/GLCanvasState;->getFinalMatrix()[F

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 303
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformSTMatrixH:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/GLCanvasState;->getTexMaxtrix()[F

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 304
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformAlphaH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 305
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformBlendFactorH:I

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 306
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformTextureH:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 308
    const v0, 0x8893

    invoke-static {v0, p6}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 309
    const/4 v0, 0x5

    const/16 v1, 0x1401

    const/4 v2, 0x0

    invoke-static {v0, p7, v1, v2}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 311
    const v0, 0x8893

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 312
    const v0, 0x8892

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 313
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    goto/16 :goto_0

    .line 290
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method private drawMixed(Lcom/android/gallery3d/ui/BasicTexture;IFFFFF)V
    .locals 6
    .parameter "from"
    .parameter "toColor"
    .parameter "ratio"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    const/high16 v5, 0x3f80

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 265
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 266
    const v0, 0x84c0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/effect/renders/BasicRender;->bindTexture(Lcom/android/gallery3d/ui/BasicTexture;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/effect/renders/BasicRender;->initAttribPointer()V

    .line 269
    invoke-direct {p0, p2}, Lcom/android/camera/effect/renders/BasicRender;->initGLPaint(I)V

    .line 270
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/BasicRender;->updateViewport()V

    .line 272
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mBlendEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result v0

    const v3, 0x3f733333

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/BasicRender;->setBlendEnabled(Z)V

    .line 273
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 274
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0, p4, p5, v4}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    .line 275
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0, p6, p7, v5}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    .line 276
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformMVPMatrixH:I

    iget-object v3, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/GLCanvasState;->getFinalMatrix()[F

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 277
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformSTMatrixH:I

    iget-object v3, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/GLCanvasState;->getTexMaxtrix()[F

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 278
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformAlphaH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 279
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformBlendFactorH:I

    sub-float v1, v5, p3

    invoke-static {v0, v1, v4, v4, p3}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 280
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformTextureH:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 282
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 283
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 272
    goto :goto_1
.end method

.method private drawRect(FFFFLcom/android/gallery3d/ui/GLPaint;)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "paint"

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 171
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 173
    invoke-direct {p0}, Lcom/android/camera/effect/renders/BasicRender;->initAttribPointer()V

    .line 174
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/BasicRender;->updateViewport()V

    .line 175
    invoke-direct {p0, p5}, Lcom/android/camera/effect/renders/BasicRender;->initGLPaint(Lcom/android/gallery3d/ui/GLPaint;)V

    .line 177
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 178
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    .line 179
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0, p3, p4, v4}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    .line 180
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformMVPMatrixH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getFinalMatrix()[F

    move-result-object v1

    invoke-static {v0, v5, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 181
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformSTMatrixH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getTexMaxtrix()[F

    move-result-object v1

    invoke-static {v0, v5, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 182
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformAlphaH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 183
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformBlendFactorH:I

    invoke-static {v0, v2, v2, v2, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 184
    const/4 v0, 0x2

    const/4 v1, 0x6

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 185
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 186
    return-void
.end method

.method private drawTexture(Lcom/android/gallery3d/ui/BasicTexture;FFFF)V
    .locals 1
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 226
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->indentityTexM()V

    .line 227
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/effect/renders/BasicRender;->drawTextureInternal(Lcom/android/gallery3d/ui/BasicTexture;FFFF)V

    .line 228
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 229
    return-void
.end method

.method private drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6
    .parameter "texture"
    .parameter "source"
    .parameter "target"

    .prologue
    const/4 v1, 0x0

    .line 232
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/ui/BasicTexture;->onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-direct {p0, p2, p3, p1}, Lcom/android/camera/effect/renders/BasicRender;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/gallery3d/ui/BasicTexture;)V

    .line 235
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 236
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/effect/GLCanvasState;->setTexMatrix(FFFF)V

    .line 237
    iget v2, p3, Landroid/graphics/RectF;->left:F

    iget v3, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/BasicRender;->drawTextureInternal(Lcom/android/gallery3d/ui/BasicTexture;FFFF)V

    .line 238
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    goto :goto_0
.end method

.method private drawTextureInternal(Lcom/android/gallery3d/ui/BasicTexture;FFFF)V
    .locals 6
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v5, 0x3f80

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 242
    cmpg-float v0, p4, v4

    if-lez v0, :cond_0

    cmpg-float v0, p5, v4

    if-gtz v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 244
    const v0, 0x84c0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/effect/renders/BasicRender;->bindTexture(Lcom/android/gallery3d/ui/BasicTexture;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformBlendFactorH:I

    invoke-static {v0, v5, v4, v4, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 247
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformTextureH:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 249
    invoke-direct {p0}, Lcom/android/camera/effect/renders/BasicRender;->initAttribPointer()V

    .line 250
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/BasicRender;->updateViewport()V

    .line 252
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mBlendEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result v0

    const v3, 0x3f733333

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/BasicRender;->setBlendEnabled(Z)V

    .line 254
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0, p2, p3, v4}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    .line 255
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0, p4, p5, v5}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    .line 256
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformMVPMatrixH:I

    iget-object v3, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/GLCanvasState;->getFinalMatrix()[F

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 257
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformSTMatrixH:I

    iget-object v3, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/GLCanvasState;->getTexMaxtrix()[F

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 258
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformAlphaH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 260
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 252
    goto :goto_1
.end method

.method private fillRect(FFFFI)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "color"

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 189
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 191
    invoke-direct {p0}, Lcom/android/camera/effect/renders/BasicRender;->initAttribPointer()V

    .line 192
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/BasicRender;->updateViewport()V

    .line 193
    invoke-direct {p0, p5}, Lcom/android/camera/effect/renders/BasicRender;->initGLPaint(I)V

    .line 195
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 196
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v3}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    .line 197
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0, p3, p4, v4}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    .line 198
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformMVPMatrixH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getFinalMatrix()[F

    move-result-object v1

    invoke-static {v0, v5, v2, v1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 199
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformSTMatrixH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getTexMaxtrix()[F

    move-result-object v1

    invoke-static {v0, v5, v2, v1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 200
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformAlphaH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 201
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformBlendFactorH:I

    invoke-static {v0, v3, v3, v3, v4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 202
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 203
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 204
    return-void
.end method

.method private initAttribPointer()V
    .locals 6

    .prologue
    const/16 v2, 0x1406

    const/16 v4, 0x8

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 333
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttributePositionH:I

    iget-object v5, p0, Lcom/android/camera/effect/renders/BasicRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 334
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttributeTexCoorH:I

    iget-object v5, p0, Lcom/android/camera/effect/renders/BasicRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 336
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 337
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttributeTexCoorH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 338
    return-void
.end method

.method private initGLPaint(I)V
    .locals 6
    .parameter "color"

    .prologue
    const v2, 0x3f733333

    const v5, 0x3b808081

    .line 322
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v1, v5

    .line 323
    .local v0, colorAlpha:F
    iget-boolean v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mBlendEnabled:Z

    if-eqz v1, :cond_1

    cmpg-float v1, v0, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getAlpha()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/camera/effect/renders/BasicRender;->setBlendEnabled(Z)V

    .line 325
    iget v1, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformPaintColorH:I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v5

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    invoke-static {v1, v2, v3, v4, v0}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 330
    return-void

    .line 323
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initGLPaint(Lcom/android/gallery3d/ui/GLPaint;)V
    .locals 1
    .parameter "paint"

    .prologue
    .line 317
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLPaint;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/effect/renders/BasicRender;->initGLPaint(I)V

    .line 318
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/GLPaint;->getLineWidth()F

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 319
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 13
    .parameter "attri"

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/BasicRender;->isAttriSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 167
    :goto_0
    return v0

    .line 96
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 167
    :goto_1
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    move-object v8, p1

    .line 98
    check-cast v8, Lcom/android/camera/effect/draw_mode/DrawLineAttribute;

    .line 99
    .local v8, line:Lcom/android/camera/effect/draw_mode/DrawLineAttribute;
    iget v1, v8, Lcom/android/camera/effect/draw_mode/DrawLineAttribute;->mX1:F

    iget v2, v8, Lcom/android/camera/effect/draw_mode/DrawLineAttribute;->mY1:F

    iget v3, v8, Lcom/android/camera/effect/draw_mode/DrawLineAttribute;->mX2:F

    iget v4, v8, Lcom/android/camera/effect/draw_mode/DrawLineAttribute;->mY2:F

    iget-object v5, v8, Lcom/android/camera/effect/draw_mode/DrawLineAttribute;->mGLPaint:Lcom/android/gallery3d/ui/GLPaint;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/BasicRender;->drawLine(FFFFLcom/android/gallery3d/ui/GLPaint;)V

    goto :goto_1

    .end local v8           #line:Lcom/android/camera/effect/draw_mode/DrawLineAttribute;
    :pswitch_2
    move-object v11, p1

    .line 108
    check-cast v11, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;

    .line 109
    .local v11, rect:Lcom/android/camera/effect/draw_mode/DrawRectAttribute;
    iget v1, v11, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;->mX:F

    iget v2, v11, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;->mY:F

    iget v3, v11, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;->mWidth:F

    iget v4, v11, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;->mHeight:F

    iget-object v5, v11, Lcom/android/camera/effect/draw_mode/DrawRectAttribute;->mGLPaint:Lcom/android/gallery3d/ui/GLPaint;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/BasicRender;->drawRect(FFFFLcom/android/gallery3d/ui/GLPaint;)V

    goto :goto_1

    .end local v11           #rect:Lcom/android/camera/effect/draw_mode/DrawRectAttribute;
    :pswitch_3
    move-object v9, p1

    .line 118
    check-cast v9, Lcom/android/camera/effect/draw_mode/DrawMeshAttribute;

    .line 119
    .local v9, mesh:Lcom/android/camera/effect/draw_mode/DrawMeshAttribute;
    iget-object v1, v9, Lcom/android/camera/effect/draw_mode/DrawMeshAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    iget v2, v9, Lcom/android/camera/effect/draw_mode/DrawMeshAttribute;->mX:F

    iget v3, v9, Lcom/android/camera/effect/draw_mode/DrawMeshAttribute;->mY:F

    iget v4, v9, Lcom/android/camera/effect/draw_mode/DrawMeshAttribute;->mXYBuffer:I

    iget v5, v9, Lcom/android/camera/effect/draw_mode/DrawMeshAttribute;->mUVBuffer:I

    iget v6, v9, Lcom/android/camera/effect/draw_mode/DrawMeshAttribute;->mIndexBuffer:I

    iget v7, v9, Lcom/android/camera/effect/draw_mode/DrawMeshAttribute;->mIndexCount:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/effect/renders/BasicRender;->drawMesh(Lcom/android/gallery3d/ui/BasicTexture;FFIIII)V

    goto :goto_1

    .end local v9           #mesh:Lcom/android/camera/effect/draw_mode/DrawMeshAttribute;
    :pswitch_4
    move-object v10, p1

    .line 130
    check-cast v10, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;

    .line 131
    .local v10, mix:Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;
    iget-object v1, v10, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    iget v2, v10, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mToColor:I

    iget v3, v10, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mRatio:F

    iget v4, v10, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mX:F

    iget v5, v10, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mY:F

    iget v6, v10, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mWidth:F

    iget v7, v10, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mHeight:F

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/effect/renders/BasicRender;->drawMixed(Lcom/android/gallery3d/ui/BasicTexture;IFFFFF)V

    goto :goto_1

    .end local v10           #mix:Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;
    :pswitch_5
    move-object v11, p1

    .line 142
    check-cast v11, Lcom/android/camera/effect/draw_mode/FillRectAttribute;

    .line 143
    .local v11, rect:Lcom/android/camera/effect/draw_mode/FillRectAttribute;
    iget v1, v11, Lcom/android/camera/effect/draw_mode/FillRectAttribute;->mX:F

    iget v2, v11, Lcom/android/camera/effect/draw_mode/FillRectAttribute;->mY:F

    iget v3, v11, Lcom/android/camera/effect/draw_mode/FillRectAttribute;->mWidth:F

    iget v4, v11, Lcom/android/camera/effect/draw_mode/FillRectAttribute;->mHeight:F

    iget v5, v11, Lcom/android/camera/effect/draw_mode/FillRectAttribute;->mColor:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/BasicRender;->fillRect(FFFFI)V

    goto :goto_1

    .end local v11           #rect:Lcom/android/camera/effect/draw_mode/FillRectAttribute;
    :pswitch_6
    move-object v12, p1

    .line 152
    check-cast v12, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 153
    .local v12, texture:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;
    iget-object v1, v12, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    iget v0, v12, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mX:I

    int-to-float v2, v0

    iget v0, v12, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mY:I

    int-to-float v3, v0

    iget v0, v12, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mWidth:I

    int-to-float v4, v0

    iget v0, v12, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mHeight:I

    int-to-float v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/renders/BasicRender;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;FFFF)V

    goto :goto_1

    .end local v12           #texture:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;
    :pswitch_7
    move-object v12, p1

    .line 162
    check-cast v12, Lcom/android/camera/effect/draw_mode/DrawRectFTexAttribute;

    .line 163
    .local v12, texture:Lcom/android/camera/effect/draw_mode/DrawRectFTexAttribute;
    iget-object v0, v12, Lcom/android/camera/effect/draw_mode/DrawRectFTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    iget-object v1, v12, Lcom/android/camera/effect/draw_mode/DrawRectFTexAttribute;->mSourceRectF:Landroid/graphics/RectF;

    iget-object v2, v12, Lcom/android/camera/effect/draw_mode/DrawRectFTexAttribute;->mTargetRectF:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/effect/renders/BasicRender;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto/16 :goto_1

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public getFragShaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "frag_normal.txt"

    invoke-static {v0}, Lcom/android/camera/effect/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initShader()V
    .locals 3

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/BasicRender;->getVertexShaderString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/BasicRender;->getFragShaderString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/effect/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    .line 47
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    if-eqz v0, :cond_0

    .line 48
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 49
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformMVPMatrixH:I

    .line 50
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformSTMatrixH:I

    .line 51
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformTextureH:I

    .line 52
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    const-string v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformAlphaH:I

    .line 53
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    const-string v1, "uBlendFactor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformBlendFactorH:I

    .line 54
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    const-string v1, "uPaintColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mUniformPaintColorH:I

    .line 55
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttributePositionH:I

    .line 56
    iget v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mProgram:I

    const-string v1, "aTexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttributeTexCoorH:I

    .line 60
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": mProgram = 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected initSupportAttriList()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method protected initVertexData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    sget-object v0, Lcom/android/camera/effect/renders/BasicRender;->VERTICES:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lcom/android/camera/effect/renders/BasicRender;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 70
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/android/camera/effect/renders/BasicRender;->VERTICES:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 71
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 73
    sget-object v0, Lcom/android/camera/effect/renders/BasicRender;->TEXTURES:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lcom/android/camera/effect/renders/BasicRender;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    .line 74
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/android/camera/effect/renders/BasicRender;->TEXTURES:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 75
    iget-object v0, p0, Lcom/android/camera/effect/renders/BasicRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 76
    return-void
.end method
