.class public Lcom/android/camera/effect/renders/RenderGroup;
.super Lcom/android/camera/effect/renders/Render;
.source "RenderGroup.java"


# instance fields
.field protected mParentFrameBufferIdOld:I

.field protected mRenders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/renders/Render;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/Render;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    .line 17
    return-void
.end method


# virtual methods
.method public addRender(Lcom/android/camera/effect/renders/Render;)V
    .locals 1
    .parameter "render"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method

.method public beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V
    .locals 2
    .parameter "frameBuffer"

    .prologue
    .line 47
    const v0, 0x8d40

    invoke-virtual {p1}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 48
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 49
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->indentityAllM()V

    .line 50
    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mViewportWidth:I

    iput v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mOldViewportWidth:I

    .line 51
    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mViewportHeight:I

    iput v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mOldViewportHeight:I

    .line 52
    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mParentFrameBufferId:I

    iput v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mParentFrameBufferIdOld:I

    .line 53
    invoke-virtual {p1}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/RenderGroup;->setParentFrameBufferId(I)V

    .line 54
    invoke-virtual {p1}, Lcom/android/camera/effect/FrameBuffer;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/effect/FrameBuffer;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setViewportSize(II)V

    .line 55
    return-void
.end method

.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 4
    .parameter "attri"

    .prologue
    .line 30
    const/4 v2, 0x0

    .line 31
    .local v2, result:Z
    iget-object v3, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 32
    iget-object v3, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/renders/Render;

    .line 33
    .local v1, render:Lcom/android/camera/effect/renders/Render;
    invoke-virtual {v1, p1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    const/4 v2, 0x1

    .line 39
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #render:Lcom/android/camera/effect/renders/Render;
    :cond_1
    return v2
.end method

.method public endBindFrameBuffer()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 59
    const v0, 0x8d40

    iget v1, p0, Lcom/android/camera/effect/renders/RenderGroup;->mParentFrameBufferIdOld:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 60
    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mOldViewportWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/RenderGroup;->mOldViewportHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setViewportSize(II)V

    .line 61
    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mParentFrameBufferIdOld:I

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/RenderGroup;->setParentFrameBufferId(I)V

    .line 62
    return-void
.end method

.method public getRender(I)Lcom/android/camera/effect/renders/Render;
    .locals 1
    .parameter "index"

    .prologue
    .line 24
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    goto :goto_0
.end method

.method public setEffectRectF(Landroid/graphics/RectF;)V
    .locals 3
    .parameter "rectF"

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/Render;->setEffectRectF(Landroid/graphics/RectF;)V

    .line 79
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/renders/Render;

    .line 81
    .local v1, render:Lcom/android/camera/effect/renders/Render;
    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v1, p1}, Lcom/android/camera/effect/renders/Render;->setEffectRectF(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 86
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #render:Lcom/android/camera/effect/renders/Render;
    :cond_1
    return-void
.end method

.method public setInvertFlag(I)V
    .locals 3
    .parameter "invertFlag"

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/Render;->setInvertFlag(I)V

    .line 91
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 92
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/renders/Render;

    .line 93
    .local v1, render:Lcom/android/camera/effect/renders/Render;
    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v1, p1}, Lcom/android/camera/effect/renders/Render;->setInvertFlag(I)V

    goto :goto_0

    .line 98
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #render:Lcom/android/camera/effect/renders/Render;
    :cond_1
    return-void
.end method

.method public setJpegOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 139
    iget v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mJpegOrientation:I

    if-ne v2, p1, :cond_1

    .line 148
    :cond_0
    return-void

    .line 140
    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/Render;->setJpegOrientation(I)V

    .line 141
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/renders/Render;

    .line 143
    .local v1, render:Lcom/android/camera/effect/renders/Render;
    if-eqz v1, :cond_2

    .line 144
    invoke-virtual {v1, p1}, Lcom/android/camera/effect/renders/Render;->setJpegOrientation(I)V

    goto :goto_0
.end method

.method public setMirror(Z)V
    .locals 3
    .parameter "mirror"

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/Render;->setMirror(Z)V

    .line 153
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/renders/Render;

    .line 155
    .local v1, render:Lcom/android/camera/effect/renders/Render;
    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {v1, p1}, Lcom/android/camera/effect/renders/Render;->setMirror(Z)V

    goto :goto_0

    .line 160
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #render:Lcom/android/camera/effect/renders/Render;
    :cond_1
    return-void
.end method

.method public setOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 126
    iget v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mOrientation:I

    if-ne v2, p1, :cond_1

    .line 135
    :cond_0
    return-void

    .line 127
    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/Render;->setOrientation(I)V

    .line 128
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/renders/Render;

    .line 130
    .local v1, render:Lcom/android/camera/effect/renders/Render;
    if-eqz v1, :cond_2

    .line 131
    invoke-virtual {v1, p1}, Lcom/android/camera/effect/renders/Render;->setOrientation(I)V

    goto :goto_0
.end method

.method protected setParentFrameBufferId(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/Render;->setParentFrameBufferId(I)V

    .line 164
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 165
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    .line 166
    .local v0, child:Lcom/android/camera/effect/renders/Render;
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/Render;->setParentFrameBufferId(I)V

    goto :goto_0

    .line 171
    .end local v0           #child:Lcom/android/camera/effect/renders/Render;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 3
    .parameter "w"
    .parameter "h"

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/Render;->setPreviewSize(II)V

    .line 103
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/renders/Render;

    .line 105
    .local v1, render:Lcom/android/camera/effect/renders/Render;
    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v1, p1, p2}, Lcom/android/camera/effect/renders/Render;->setPreviewSize(II)V

    goto :goto_0

    .line 110
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #render:Lcom/android/camera/effect/renders/Render;
    :cond_1
    return-void
.end method

.method public setViewportSize(II)V
    .locals 3
    .parameter "w"
    .parameter "h"

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/Render;->setViewportSize(II)V

    .line 67
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/renders/Render;

    .line 69
    .local v1, render:Lcom/android/camera/effect/renders/Render;
    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v1, p1, p2}, Lcom/android/camera/effect/renders/Render;->setViewportSize(II)V

    goto :goto_0

    .line 74
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #render:Lcom/android/camera/effect/renders/Render;
    :cond_1
    return-void
.end method
