.class public Lcom/android/camera/effect/SnapshotCanvas;
.super Ljava/lang/Object;
.source "SnapshotCanvas.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GLCanvas;


# instance fields
.field private final mDeleteBuffers:Lcom/android/gallery3d/ui/IntArray;

.field private final mDeleteFrameBuffers:Lcom/android/gallery3d/ui/IntArray;

.field private final mDeletePrograms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

.field private mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

.field private mState:Lcom/android/camera/effect/GLCanvasState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/android/gallery3d/ui/IntArray;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

    .line 17
    new-instance v0, Lcom/android/gallery3d/ui/IntArray;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeleteBuffers:Lcom/android/gallery3d/ui/IntArray;

    .line 18
    new-instance v0, Lcom/android/gallery3d/ui/IntArray;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeleteFrameBuffers:Lcom/android/gallery3d/ui/IntArray;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeletePrograms:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Lcom/android/camera/effect/GLCanvasState;

    invoke-direct {v0}, Lcom/android/camera/effect/GLCanvasState;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mState:Lcom/android/camera/effect/GLCanvasState;

    .line 24
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/effect/EffectController;->getEffectGroup(Lcom/android/gallery3d/ui/GLCanvas;)Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    .line 25
    invoke-direct {p0}, Lcom/android/camera/effect/SnapshotCanvas;->initialize()V

    .line 26
    return-void
.end method

.method private initialize()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 29
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 30
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/GLES20;->glClearStencil(I)V

    .line 31
    const/16 v0, 0xcf5

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 32
    const/16 v0, 0xd05

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 33
    return-void
.end method


# virtual methods
.method public beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V
    .locals 1
    .parameter "frameBuffer"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 53
    return-void
.end method

.method public clearBuffer()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 72
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 73
    return-void
.end method

.method public deleteFrameBuffer(I)V
    .locals 2
    .parameter "frameBufferId"

    .prologue
    .line 92
    iget-object v1, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeleteFrameBuffers:Lcom/android/gallery3d/ui/IntArray;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeleteFrameBuffers:Lcom/android/gallery3d/ui/IntArray;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/IntArray;->add(I)V

    .line 94
    monitor-exit v1

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteProgram(I)V
    .locals 3
    .parameter "programId"

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeletePrograms:Ljava/util/ArrayList;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeletePrograms:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    monitor-exit v1

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteTexture(Lcom/android/gallery3d/ui/BasicTexture;)Z
    .locals 3
    .parameter "t"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

    monitor-enter v1

    .line 79
    :try_start_0
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 81
    :goto_0
    return v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/IntArray;->add(I)V

    .line 81
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V
    .locals 1
    .parameter "attri"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 68
    return-void
.end method

.method public endBindFrameBuffer()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/RenderGroup;->endBindFrameBuffer()V

    .line 58
    return-void
.end method

.method public getRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    return-object v0
.end method

.method public getState()Lcom/android/camera/effect/GLCanvasState;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mState:Lcom/android/camera/effect/GLCanvasState;

    return-object v0
.end method

.method public recycledResources()V
    .locals 5

    .prologue
    .line 105
    iget-object v2, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

    monitor-enter v2

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

    .line 107
    .local v0, ids:Lcom/android/gallery3d/ui/IntArray;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->getInternalArray()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/android/gallery3d/ui/GLId;->glDeleteTextures(I[II)V

    .line 109
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->clear()V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeleteBuffers:Lcom/android/gallery3d/ui/IntArray;

    .line 113
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 114
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->getInternalArray()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/android/gallery3d/ui/GLId;->glDeleteBuffers(I[II)V

    .line 115
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->clear()V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeleteFrameBuffers:Lcom/android/gallery3d/ui/IntArray;

    .line 119
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 120
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->getInternalArray()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/android/gallery3d/ui/GLId;->glDeleteFrameBuffers(I[II)V

    .line 121
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->clear()V

    .line 124
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeletePrograms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 125
    iget-object v1, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeletePrograms:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    .line 127
    .end local v0           #ids:Lcom/android/gallery3d/ui/IntArray;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0       #ids:Lcom/android/gallery3d/ui/IntArray;
    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->setPreviewSize(II)V

    .line 43
    return-void
.end method

.method public setSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->setViewportSize(II)V

    .line 37
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->setPreviewSize(II)V

    .line 38
    return-void
.end method
