.class public Lcom/android/camera/effect/renders/EffectRenderGroup;
.super Lcom/android/camera/effect/renders/RenderGroup;
.source "EffectRenderGroup.java"


# instance fields
.field private mBasicTexureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

.field private mEffectIndex:I

.field private mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

.field private mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field private mIngnoreTimes:I

.field private mNoneEffectRender:Lcom/android/camera/effect/renders/Render;

.field private mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

.field private mTexMatrix:[F


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 19
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mBasicTexureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectIndex:I

    .line 31
    new-instance v0, Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    .line 32
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/EffectRenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 33
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    new-instance v1, Lcom/android/camera/effect/renders/SurfaceTextureRender;

    invoke-direct {v1, p1}, Lcom/android/camera/effect/renders/SurfaceTextureRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->setFirstRender(Lcom/android/camera/effect/renders/Render;)V

    .line 34
    return-void
.end method

.method private drawDisplay(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V
    .locals 18
    .parameter "attri"

    .prologue
    .line 64
    move-object/from16 v12, p1

    check-cast v12, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 65
    .local v12, ext:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;
    invoke-static {}, Lcom/android/camera/Device;->isSupporteShaderEffect()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->isDisplayShow()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getBlockCache()Ljava/nio/IntBuffer;

    move-result-object v2

    if-nez v2, :cond_2

    .line 68
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIngnoreTimes:I

    .line 134
    :cond_1
    :goto_0
    return-void

    .line 72
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIngnoreTimes:I

    if-lez v2, :cond_3

    .line 73
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIngnoreTimes:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIngnoreTimes:I

    goto :goto_0

    .line 77
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {v2}, Lcom/android/camera/effect/renders/PipeRenderPair;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 81
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTexMatrix:[F

    if-nez v2, :cond_4

    .line 82
    const/high16 v16, 0x3f80

    .line 83
    .local v16, scale:F
    iget v2, v12, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    mul-int/lit8 v2, v2, 0x9

    iget v3, v12, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    mul-int/lit8 v3, v3, 0x10

    if-ne v2, v3, :cond_5

    .line 84
    const/high16 v16, 0x3f10

    .line 88
    :goto_1
    const/16 v2, 0x10

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTexMatrix:[F

    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTexMatrix:[F

    const/4 v3, 0x0

    const/high16 v4, 0x3f00

    const/high16 v5, 0x3f00

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTexMatrix:[F

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    move/from16 v0, v16

    invoke-static {v2, v3, v4, v0, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTexMatrix:[F

    const/4 v3, 0x0

    const/high16 v4, -0x4100

    const/high16 v5, -0x4100

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 100
    .end local v16           #scale:F
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 101
    .local v14, last:J
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getDisplayCount()I

    move-result v10

    .line 102
    .local v10, count:I
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getDisplayStartIndex()I

    move-result v17

    .line 103
    .local v17, start:I
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getDisplayEndIndex()I

    move-result v11

    .line 105
    .local v11, end:I
    sget v2, Lcom/android/camera/effect/EffectController;->BUFFER_WIDTH:I

    mul-int/2addr v2, v10

    sget v3, Lcom/android/camera/effect/EffectController;->BUFFER_WIDTH:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/effect/renders/EffectRenderGroup;->checkFrameBuffer(II)V

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/renders/EffectRenderGroup;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mTexMatrix:[F

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/GLCanvasState;->setTexMatrix([F)V

    .line 108
    move/from16 v13, v17

    .local v13, i:I
    :goto_2
    if-ge v13, v11, :cond_7

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mBasicTexureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {v3}, Lcom/android/camera/effect/renders/PipeRenderPair;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v3

    sub-int v4, v13, v17

    sget v5, Lcom/android/camera/effect/EffectController;->BUFFER_WIDTH:I

    mul-int/2addr v4, v5

    const/4 v5, 0x0

    sget v6, Lcom/android/camera/effect/EffectController;->BUFFER_WIDTH:I

    sget v7, Lcom/android/camera/effect/EffectController;->BUFFER_WIDTH:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 114
    if-nez v13, :cond_6

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mNoneEffectRender:Lcom/android/camera/effect/renders/Render;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mBasicTexureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 108
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 86
    .end local v10           #count:I
    .end local v11           #end:I
    .end local v13           #i:I
    .end local v14           #last:J
    .end local v17           #start:I
    .restart local v16       #scale:F
    :cond_5
    const/high16 v16, 0x3f40

    goto/16 :goto_1

    .line 117
    .end local v16           #scale:F
    .restart local v10       #count:I
    .restart local v11       #end:I
    .restart local v13       #i:I
    .restart local v14       #last:J
    .restart local v17       #start:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    add-int/lit8 v3, v13, -0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mBasicTexureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    goto :goto_3

    .line 121
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v11}, Lcom/android/camera/effect/renders/EffectRenderGroup;->fillDisplayCaches(II)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/effect/renders/EffectRenderGroup;->endBindFrameBuffer()V

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v8, v2, v14

    .line 125
    .local v8, cost:J
    const-wide/16 v2, 0xfa

    cmp-long v2, v8, v2

    if-lez v2, :cond_8

    .line 126
    const/16 v2, 0xf

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIngnoreTimes:I

    goto/16 :goto_0

    .line 127
    :cond_8
    const-wide/16 v2, 0x96

    cmp-long v2, v8, v2

    if-lez v2, :cond_9

    .line 128
    const/16 v2, 0x8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIngnoreTimes:I

    goto/16 :goto_0

    .line 129
    :cond_9
    const-wide/16 v2, 0x78

    cmp-long v2, v8, v2

    if-lez v2, :cond_a

    .line 130
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIngnoreTimes:I

    goto/16 :goto_0

    .line 131
    :cond_a
    const-wide/16 v2, 0x64

    cmp-long v2, v8, v2

    if-lez v2, :cond_1

    .line 132
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mIngnoreTimes:I

    goto/16 :goto_0

    .line 88
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private drawPreview(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 2
    .parameter "attri"

    .prologue
    .line 47
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->hasEffect()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isDisplayShow()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupporteShaderEffect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->getEffectGroup(Lcom/android/gallery3d/ui/GLCanvas;)Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    .line 50
    new-instance v0, Lcom/android/camera/effect/renders/NoneEffectRender;

    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-direct {v0, v1}, Lcom/android/camera/effect/renders/NoneEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mNoneEffectRender:Lcom/android/camera/effect/renders/Render;

    .line 51
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mNoneEffectRender:Lcom/android/camera/effect/renders/Render;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/EffectRenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 52
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/EffectRenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 53
    iget v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mViewportWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mOldViewportHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/EffectRenderGroup;->setViewportSize(II)V

    .line 54
    iget v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/EffectRenderGroup;->setPreviewSize(II)V

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-direct {p0}, Lcom/android/camera/effect/renders/EffectRenderGroup;->getPreviewSecondRender()Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->setSecondRender(Lcom/android/camera/effect/renders/Render;)V

    .line 58
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mPreviewPipeRender:Lcom/android/camera/effect/renders/PipeRenderPair;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/PipeRenderPair;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 59
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/EffectRenderGroup;->drawDisplay(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method private fillDisplayCaches(II)V
    .locals 18
    .parameter "start"
    .parameter "end"

    .prologue
    .line 140
    const/4 v15, 0x0

    .line 141
    .local v15, offset:I
    sget v1, Lcom/android/camera/effect/EffectController;->BUFFER_WIDTH:I

    sget v2, Lcom/android/camera/effect/EffectController;->SHOW_COUNT:I

    mul-int v17, v1, v2

    .line 144
    .local v17, stride:I
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->getBlockCache()Ljava/nio/IntBuffer;

    move-result-object v7

    .line 145
    .local v7, blockCache:Ljava/nio/IntBuffer;
    if-eqz v7, :cond_0

    .line 146
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget v3, Lcom/android/camera/effect/EffectController;->BUFFER_WIDTH:I

    sget v4, Lcom/android/camera/effect/EffectController;->SHOW_COUNT:I

    mul-int/2addr v3, v4

    sget v4, Lcom/android/camera/effect/EffectController;->BUFFER_WIDTH:I

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 156
    :cond_0
    move/from16 v12, p1

    .local v12, i:I
    :goto_0
    move/from16 v0, p2

    if-ge v12, v0, :cond_3

    .line 157
    sub-int v1, v12, p1

    sget v2, Lcom/android/camera/effect/EffectController;->BUFFER_WIDTH:I

    mul-int v15, v1, v2

    .line 158
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/android/camera/effect/EffectController;->getCache(I)Lcom/android/camera/effect/EffectController$SurfaceCache;

    move-result-object v9

    .line 159
    .local v9, cache:Lcom/android/camera/effect/EffectController$SurfaceCache;
    monitor-enter v9

    .line 160
    :try_start_0
    iget-object v1, v9, Lcom/android/camera/effect/EffectController$SurfaceCache;->mCache:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v10

    .line 162
    .local v10, colors:[I
    const/4 v13, 0x0

    .local v13, j:I
    :goto_1
    sget v1, Lcom/android/camera/effect/EffectController;->BUFFER_WIDTH:I

    if-ge v13, v1, :cond_1

    .line 163
    mul-int v1, v13, v17

    add-int/2addr v1, v15

    invoke-virtual {v7, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 164
    sget v1, Lcom/android/camera/effect/EffectController;->BUFFER_WIDTH:I

    mul-int/2addr v1, v13

    sget v2, Lcom/android/camera/effect/EffectController;->BUFFER_WIDTH:I

    invoke-virtual {v7, v10, v1, v2}, Ljava/nio/IntBuffer;->get([III)Ljava/nio/IntBuffer;

    .line 162
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 167
    :cond_1
    const/4 v14, 0x0

    .local v14, n:I
    :goto_2
    array-length v1, v10

    if-ge v14, v1, :cond_2

    .line 168
    aget v1, v10, v14

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v16

    .line 169
    .local v16, r:I
    aget v1, v10, v14

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v11

    .line 170
    .local v11, g:I
    aget v1, v10, v14

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 171
    .local v8, b:I
    move/from16 v0, v16

    invoke-static {v0, v11, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v10, v14

    .line 167
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 173
    .end local v8           #b:I
    .end local v11           #g:I
    .end local v16           #r:I
    :cond_2
    monitor-exit v9

    .line 156
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 173
    .end local v10           #colors:[I
    .end local v13           #j:I
    .end local v14           #n:I
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 176
    .end local v9           #cache:Lcom/android/camera/effect/EffectController$SurfaceCache;
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 177
    return-void
.end method

.method private getPreviewSecondRender()Lcom/android/camera/effect/renders/Render;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 180
    invoke-static {}, Lcom/android/camera/Device;->isSupporteShaderEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    if-nez v1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-object v0

    .line 185
    :cond_1
    iget v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 186
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->isDisplayShow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mNoneEffectRender:Lcom/android/camera/effect/renders/Render;

    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    iget v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public checkFrameBuffer(II)V
    .locals 3
    .parameter "w"
    .parameter "h"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getWidth()I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getHeight()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 196
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 197
    new-instance v0, Lcom/android/camera/effect/FrameBuffer;

    iget-object v1, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    iget v2, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mParentFrameBufferId:I

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;III)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 199
    :cond_1
    return-void
.end method

.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 1
    .parameter "attri"

    .prologue
    .line 38
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getEffect()I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/EffectRenderGroup;->mEffectIndex:I

    .line 39
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 43
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 41
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/EffectRenderGroup;->drawPreview(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    move-result v0

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
