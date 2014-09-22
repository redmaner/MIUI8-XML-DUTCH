.class public abstract Lcom/android/camera/effect/renders/Render;
.super Ljava/lang/Object;
.source "Render.java"


# instance fields
.field protected mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

.field protected mId:I

.field protected mInvertFlag:I

.field protected mJpegOrientation:I

.field protected mMirror:Z

.field protected mOldViewportHeight:I

.field protected mOldViewportWidth:I

.field protected mOrientation:I

.field protected mParentFrameBufferId:I

.field protected mPreviewHeight:I

.field protected mPreviewWidth:I

.field protected mViewportHeight:I

.field protected mViewportWidth:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/effect/renders/Render;->mId:I

    .line 25
    iput-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/effect/renders/Render;->mParentFrameBufferId:I

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 1
    .parameter "canvas"
    .parameter "id"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/effect/renders/Render;->mId:I

    .line 30
    iput-object p1, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/effect/renders/Render;->mParentFrameBufferId:I

    .line 32
    iput p2, p0, Lcom/android/camera/effect/renders/Render;->mId:I

    .line 33
    return-void
.end method


# virtual methods
.method public abstract draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
.end method

.method public setEffectRectF(Landroid/graphics/RectF;)V
    .locals 0
    .parameter "rectF"

    .prologue
    .line 72
    return-void
.end method

.method public setInvertFlag(I)V
    .locals 0
    .parameter "invertFlag"

    .prologue
    .line 73
    return-void
.end method

.method public setJpegOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mJpegOrientation:I

    .line 55
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .parameter "mirror"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/Render;->mMirror:Z

    .line 59
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mOrientation:I

    .line 51
    return-void
.end method

.method protected setParentFrameBufferId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mParentFrameBufferId:I

    .line 68
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 0
    .parameter "w"
    .parameter "h"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    .line 46
    iput p2, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    .line 47
    return-void
.end method

.method public setViewportSize(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mViewportWidth:I

    .line 37
    iput p2, p0, Lcom/android/camera/effect/renders/Render;->mViewportHeight:I

    .line 38
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mOldViewportWidth:I

    if-nez v0, :cond_0

    .line 39
    iput p1, p0, Lcom/android/camera/effect/renders/Render;->mOldViewportWidth:I

    .line 40
    iput p2, p0, Lcom/android/camera/effect/renders/Render;->mOldViewportHeight:I

    .line 42
    :cond_0
    return-void
.end method

.method protected updateViewport()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 62
    iget v0, p0, Lcom/android/camera/effect/renders/Render;->mViewportWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/Render;->mViewportHeight:I

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 63
    iget-object v0, p0, Lcom/android/camera/effect/renders/Render;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/effect/renders/Render;->mViewportWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/effect/renders/Render;->mViewportHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/android/camera/effect/GLCanvasState;->ortho(FFFF)V

    .line 64
    return-void
.end method
