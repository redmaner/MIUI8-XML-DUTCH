.class public abstract Lcom/android/camera/effect/renders/ShaderRender;
.super Lcom/android/camera/effect/renders/Render;
.source "ShaderRender.java"


# static fields
.field private static final VERTEX:Ljava/lang/String;


# instance fields
.field protected mAttriSupportedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mAttributePositionH:I

.field protected mAttributeTexCoorH:I

.field protected mBlendEnabled:Z

.field protected mPreviewEffectRect:[F

.field protected mProgram:I

.field protected mSnapshotEffectRect:[F

.field protected mTexCoorBuffer:Ljava/nio/FloatBuffer;

.field protected mUniformMVPMatrixH:I

.field protected mUniformSTMatrixH:I

.field protected mUniformTextureH:I

.field protected mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "vertex_normal.txt"

    invoke-static {v0}, Lcom/android/camera/effect/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/effect/renders/ShaderRender;->VERTEX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    const/4 v1, 0x4

    .line 41
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/Render;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mBlendEnabled:Z

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttriSupportedList:Ljava/util/ArrayList;

    .line 31
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mPreviewEffectRect:[F

    .line 32
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mSnapshotEffectRect:[F

    .line 42
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ShaderRender;->initShader()V

    .line 43
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ShaderRender;->initVertexData()V

    .line 44
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ShaderRender;->initSupportAttriList()V

    .line 45
    return-void

    .line 31
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 32
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 2
    .parameter "canvas"
    .parameter "id"

    .prologue
    const/4 v1, 0x4

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/Render;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mBlendEnabled:Z

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttriSupportedList:Ljava/util/ArrayList;

    .line 31
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mPreviewEffectRect:[F

    .line 32
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mSnapshotEffectRect:[F

    .line 49
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ShaderRender;->initShader()V

    .line 50
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ShaderRender;->initVertexData()V

    .line 51
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ShaderRender;->initSupportAttriList()V

    .line 52
    return-void

    .line 31
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 32
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public static allocateByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "size"

    .prologue
    .line 55
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bindTexture(II)Z
    .locals 1
    .parameter "textureId"
    .parameter "texure"

    .prologue
    .line 72
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 73
    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method protected bindTexture(Lcom/android/gallery3d/ui/BasicTexture;I)Z
    .locals 2
    .parameter "texture"
    .parameter "texure"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/ui/BasicTexture;->onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0

    .line 66
    :cond_0
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 67
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getTarget()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 68
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 95
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete mProgram = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    iget v1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->deleteProgram(I)V

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    .line 100
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 101
    return-void
.end method

.method public abstract getFragShaderString()Ljava/lang/String;
.end method

.method public getVertexShaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/camera/effect/renders/ShaderRender;->VERTEX:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract initShader()V
.end method

.method protected abstract initSupportAttriList()V
.end method

.method protected abstract initVertexData()V
.end method

.method public isAttriSupported(I)Z
    .locals 2
    .parameter "attri"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttriSupportedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected setBlendEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    const/16 v0, 0xbe2

    .line 78
    if-eqz p1, :cond_0

    .line 79
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_0
.end method
