.class public abstract Lcom/android/camera/effect/renders/PixelEffectRender;
.super Lcom/android/camera/effect/renders/ShaderRender;
.source "PixelEffectRender.java"


# static fields
.field private static final TEXTURES:[F

.field private static final VERTICES:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 13
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/effect/renders/PixelEffectRender;->VERTICES:[F

    .line 14
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/effect/renders/PixelEffectRender;->TEXTURES:[F

    return-void

    .line 13
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
    .end array-data

    .line 14
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
    .end array-data
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/ShaderRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0
    .parameter "canvas"
    .parameter "id"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/ShaderRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 21
    return-void
.end method

.method private drawTexture(IFFFFZ)V
    .locals 3
    .parameter "textureId"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "isSnapShot"

    .prologue
    const/4 v2, 0x0

    .line 108
    iget v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 109
    const v0, 0x84c0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/effect/renders/PixelEffectRender;->bindTexture(II)Z

    .line 110
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/PixelEffectRender;->updateViewport()V

    .line 112
    invoke-virtual {p0, v2}, Lcom/android/camera/effect/renders/PixelEffectRender;->setBlendEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 116
    iget-object v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    .line 117
    iget-object v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, p4, p5, v1}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    .line 118
    invoke-virtual {p0, p6}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShaderValue(Z)V

    .line 119
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 121
    iget-object v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 122
    return-void
.end method

.method private drawTexture(Lcom/android/gallery3d/ui/BasicTexture;FFFFZ)V
    .locals 3
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "isSnapShot"

    .prologue
    const/4 v2, 0x0

    .line 92
    iget v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 93
    iget-object v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/ui/BasicTexture;->onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const v0, 0x84c0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/effect/renders/PixelEffectRender;->bindTexture(Lcom/android/gallery3d/ui/BasicTexture;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 97
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/PixelEffectRender;->updateViewport()V

    .line 98
    invoke-virtual {p0, v2}, Lcom/android/camera/effect/renders/PixelEffectRender;->setBlendEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    .line 100
    iget-object v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, p4, p5, v1}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    .line 101
    invoke-virtual {p0, p6}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShaderValue(Z)V

    .line 102
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 103
    iget-object v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    goto :goto_0
.end method


# virtual methods
.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 9
    .parameter "attri"

    .prologue
    const/4 v8, 0x1

    .line 57
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/PixelEffectRender;->isAttriSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 76
    :goto_0
    return v0

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    move v0, v8

    .line 76
    goto :goto_0

    :pswitch_0
    move-object v7, p1

    .line 63
    check-cast v7, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 64
    .local v7, texture:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;
    iget-object v1, v7, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    iget v0, v7, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mX:I

    int-to-float v2, v0

    iget v0, v7, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mY:I

    int-to-float v3, v0

    iget v0, v7, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mWidth:I

    int-to-float v4, v0

    iget v0, v7, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mHeight:I

    int-to-float v5, v0

    iget-boolean v6, v7, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mIsSnapshot:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/renders/PixelEffectRender;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;FFFFZ)V

    goto :goto_1

    .end local v7           #texture:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;
    :pswitch_1
    move-object v7, p1

    .line 70
    check-cast v7, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    .line 71
    .local v7, texture:Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;
    iget v1, v7, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mTexId:I

    iget v0, v7, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mX:I

    int-to-float v2, v0

    iget v0, v7, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mY:I

    int-to-float v3, v0

    iget v0, v7, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mWidth:I

    int-to-float v4, v0

    iget v0, v7, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mHeight:I

    int-to-float v5, v0

    move-object v0, p0

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/renders/PixelEffectRender;->drawTexture(IFFFFZ)V

    goto :goto_1

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initShader()V
    .locals 3

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/PixelEffectRender;->getVertexShaderString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/PixelEffectRender;->getFragShaderString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/effect/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mProgram:I

    .line 26
    iget v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mProgram:I

    if-eqz v0, :cond_0

    .line 27
    iget v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 28
    iget v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mProgram:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mUniformMVPMatrixH:I

    .line 29
    iget v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mProgram:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mUniformSTMatrixH:I

    .line 30
    iget v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mProgram:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mUniformTextureH:I

    .line 31
    iget v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mAttributePositionH:I

    .line 32
    iget v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mProgram:I

    const-string v1, "aTexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mAttributeTexCoorH:I

    .line 36
    return-void

    .line 34
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

.method protected initShaderValue(Z)V
    .locals 7
    .parameter "isSnapShot"

    .prologue
    const/16 v2, 0x1406

    const/16 v4, 0x8

    const/4 v1, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 80
    iget v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mAttributePositionH:I

    iget-object v5, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 81
    iget v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mAttributeTexCoorH:I

    iget-object v5, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 83
    iget v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mAttributePositionH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 84
    iget v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mAttributeTexCoorH:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 86
    iget v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mUniformMVPMatrixH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getFinalMatrix()[F

    move-result-object v1

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 87
    iget v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mUniformSTMatrixH:I

    iget-object v1, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/GLCanvasState;->getTexMaxtrix()[F

    move-result-object v1

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 88
    iget v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mUniformTextureH:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 89
    return-void
.end method

.method protected initSupportAttriList()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mAttriSupportedList:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method protected initVertexData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    sget-object v0, Lcom/android/camera/effect/renders/PixelEffectRender;->VERTICES:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lcom/android/camera/effect/renders/PixelEffectRender;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 41
    iget-object v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/android/camera/effect/renders/PixelEffectRender;->VERTICES:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 42
    iget-object v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 44
    sget-object v0, Lcom/android/camera/effect/renders/PixelEffectRender;->TEXTURES:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lcom/android/camera/effect/renders/PixelEffectRender;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    .line 45
    iget-object v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/android/camera/effect/renders/PixelEffectRender;->TEXTURES:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 46
    iget-object v0, p0, Lcom/android/camera/effect/renders/PixelEffectRender;->mTexCoorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 47
    return-void
.end method
