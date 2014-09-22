.class public Lcom/android/gallery3d/ui/ExtTexture;
.super Lcom/android/gallery3d/ui/BasicTexture;
.source "ExtTexture.java"


# static fields
.field private static sTextureId:[I


# instance fields
.field private mTarget:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/android/gallery3d/ui/ExtTexture;->sTextureId:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Lcom/android/gallery3d/ui/BasicTexture;-><init>()V

    .line 29
    const/4 v0, 0x1

    sget-object v1, Lcom/android/gallery3d/ui/ExtTexture;->sTextureId:[I

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/GLId;->glGenTextures(I[II)V

    .line 30
    sget-object v0, Lcom/android/gallery3d/ui/ExtTexture;->sTextureId:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/android/gallery3d/ui/ExtTexture;->mId:I

    .line 31
    const v0, 0x8d65

    iput v0, p0, Lcom/android/gallery3d/ui/ExtTexture;->mTarget:I

    .line 32
    return-void
.end method

.method private uploadToCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const v3, 0x812f

    const v2, 0x46180400

    .line 35
    iget v0, p0, Lcom/android/gallery3d/ui/ExtTexture;->mTarget:I

    iget v1, p0, Lcom/android/gallery3d/ui/ExtTexture;->mId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 36
    iget v0, p0, Lcom/android/gallery3d/ui/ExtTexture;->mTarget:I

    const/16 v1, 0x2802

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 38
    iget v0, p0, Lcom/android/gallery3d/ui/ExtTexture;->mTarget:I

    const/16 v1, 0x2803

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 40
    iget v0, p0, Lcom/android/gallery3d/ui/ExtTexture;->mTarget:I

    const/16 v1, 0x2801

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 42
    iget v0, p0, Lcom/android/gallery3d/ui/ExtTexture;->mTarget:I

    const/16 v1, 0x2800

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/ExtTexture;->setAssociatedCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/ExtTexture;->mState:I

    .line 47
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 0
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 61
    return-void
.end method

.method public getTarget()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/android/gallery3d/ui/ExtTexture;->mTarget:I

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z
    .locals 1
    .parameter "canvas"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/ExtTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/ExtTexture;->uploadToCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 69
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
