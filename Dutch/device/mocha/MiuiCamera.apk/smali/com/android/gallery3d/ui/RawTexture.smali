.class public Lcom/android/gallery3d/ui/RawTexture;
.super Lcom/android/gallery3d/ui/BasicTexture;
.source "RawTexture.java"


# static fields
.field private static final sTextureId:[I


# instance fields
.field private final mOpaque:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/android/gallery3d/ui/RawTexture;->sTextureId:[I

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "opaque"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/gallery3d/ui/BasicTexture;-><init>()V

    .line 28
    iput-boolean p3, p0, Lcom/android/gallery3d/ui/RawTexture;->mOpaque:Z

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/ui/RawTexture;->setSize(II)V

    .line 30
    return-void
.end method


# virtual methods
.method public getTarget()I
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0xde1

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/RawTexture;->mOpaque:Z

    return v0
.end method

.method public onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 2
    .parameter "canvas"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/RawTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    .line 62
    :cond_0
    const-string v0, "RawTexture"

    const-string v1, "lost the content due to context change"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepare(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/16 v2, 0x1908

    const/4 v9, 0x1

    const v5, 0x46180400

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 39
    sget-object v3, Lcom/android/gallery3d/ui/RawTexture;->sTextureId:[I

    invoke-static {v9, v3, v1}, Lcom/android/gallery3d/ui/GLId;->glGenTextures(I[II)V

    .line 40
    sget-object v3, Lcom/android/gallery3d/ui/RawTexture;->sTextureId:[I

    aget v3, v3, v1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 41
    const/16 v3, 0x2802

    const v4, 0x812f

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 43
    const/16 v3, 0x2803

    const v4, 0x812f

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 45
    const/16 v3, 0x2801

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 47
    const/16 v3, 0x2800

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 50
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/RawTexture;->getTextureWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/RawTexture;->getTextureHeight()I

    move-result v4

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 54
    sget-object v0, Lcom/android/gallery3d/ui/RawTexture;->sTextureId:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/gallery3d/ui/RawTexture;->mId:I

    .line 55
    iput v9, p0, Lcom/android/gallery3d/ui/RawTexture;->mState:I

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/RawTexture;->setAssociatedCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 57
    return-void
.end method
