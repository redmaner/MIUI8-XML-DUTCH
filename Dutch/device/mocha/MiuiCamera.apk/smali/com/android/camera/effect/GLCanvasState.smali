.class public Lcom/android/camera/effect/GLCanvasState;
.super Ljava/lang/Object;
.source "GLCanvasState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;
    }
.end annotation


# instance fields
.field private mAlpha:F

.field private mCanvaStateStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdentityMatrix:[F

.field private mMVPMatrix:[F

.field private mModelMatrix:[F

.field private mProjectionMatrix:[F

.field private mTexMatrix:[F

.field private mViewMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x10

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mCanvaStateStack:Ljava/util/Stack;

    .line 11
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    .line 12
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mViewMatrix:[F

    .line 13
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mProjectionMatrix:[F

    .line 14
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    .line 15
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mMVPMatrix:[F

    .line 16
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/camera/effect/GLCanvasState;->mAlpha:F

    .line 25
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mIdentityMatrix:[F

    .line 19
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 20
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mViewMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 21
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mProjectionMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 22
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 23
    return-void

    .line 25
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


# virtual methods
.method public getAlpha()F
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/android/camera/effect/GLCanvasState;->mAlpha:F

    return v0
.end method

.method public getFinalMatrix()[F
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/android/camera/effect/GLCanvasState;->mViewMatrix:[F

    iget-object v4, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 181
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/android/camera/effect/GLCanvasState;->mProjectionMatrix:[F

    iget-object v4, p0, Lcom/android/camera/effect/GLCanvasState;->mMVPMatrix:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 182
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mMVPMatrix:[F

    return-object v0
.end method

.method public getTexMaxtrix()[F
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    return-object v0
.end method

.method public indentityAllM()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 64
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 65
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mViewMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 66
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mProjectionMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 67
    return-void
.end method

.method public indentityTexM()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 75
    return-void
.end method

.method public multiplyMatrix([FI)V
    .locals 6
    .parameter "matrix"
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 115
    const/16 v2, 0x10

    new-array v0, v2, [F

    .line 116
    .local v0, result:[F
    iget-object v2, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    move v3, v1

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 117
    iput-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    .line 118
    return-void
.end method

.method public ortho(FFFF)V
    .locals 8
    .parameter "left"
    .parameter "right"
    .parameter "bottom"
    .parameter "top"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mProjectionMatrix:[F

    const/4 v1, 0x0

    const/high16 v6, -0x4080

    const/high16 v7, 0x3f80

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 142
    return-void
.end method

.method public popState()V
    .locals 2

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/camera/effect/GLCanvasState;->mCanvaStateStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;

    .line 91
    .local v0, matrixObject:Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 92
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->getModelMatrix()[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    .line 93
    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->getTexMatrix()[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    .line 94
    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->getAlpha()F

    move-result v1

    iput v1, p0, Lcom/android/camera/effect/GLCanvasState;->mAlpha:F

    .line 95
    return-void
.end method

.method public projection(FFFFFFF)V
    .locals 6
    .parameter "angle"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "px"
    .parameter "py"
    .parameter "pz"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 122
    cmpl-float v1, p1, v3

    if-eqz v1, :cond_0

    invoke-static {p7}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const/16 v1, 0x10

    new-array v0, v1, [F

    aput v4, v0, v5

    const/4 v1, 0x1

    aput v3, v0, v1

    const/4 v1, 0x2

    aput v3, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    const/4 v1, 0x4

    aput v3, v0, v1

    const/4 v1, 0x5

    aput v4, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    const/16 v1, 0x8

    neg-float v2, p5

    div-float/2addr v2, p7

    aput v2, v0, v1

    const/16 v1, 0x9

    neg-float v2, p6

    div-float/2addr v2, p7

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v3, v0, v1

    const/16 v1, 0xb

    const/high16 v2, -0x4080

    div-float/2addr v2, p7

    aput v2, v0, v1

    const/16 v1, 0xc

    aput v3, v0, v1

    const/16 v1, 0xd

    aput v3, v0, v1

    const/16 v1, 0xe

    aput v3, v0, v1

    const/16 v1, 0xf

    aput v4, v0, v1

    .line 127
    .local v0, ppMatrix:[F
    invoke-virtual {p0, v0, v5}, Lcom/android/camera/effect/GLCanvasState;->multiplyMatrix([FI)V

    .line 128
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/camera/effect/GLCanvasState;->rotate(FFFF)V

    goto :goto_0
.end method

.method public pushState()V
    .locals 5

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mCanvaStateStack:Ljava/util/Stack;

    new-instance v1, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;

    iget-object v2, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    iget-object v3, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    iget v4, p0, Lcom/android/camera/effect/GLCanvasState;->mAlpha:F

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;-><init>(Lcom/android/camera/effect/GLCanvasState;[F[FF)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public rotate(FFFF)V
    .locals 6
    .parameter "angle"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 106
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto :goto_0
.end method

.method public scale(FFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 112
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 153
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/ui/Utils;->assertTrue(Z)V

    .line 154
    iput p1, p0, Lcom/android/camera/effect/GLCanvasState;->mAlpha:F

    .line 155
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTexMatrix(FFFF)V
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    .line 159
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 160
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    sub-float v1, p3, p1

    aput v1, v0, v2

    .line 161
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    const/4 v1, 0x5

    sub-float v2, p4, p2

    aput v2, v0, v1

    .line 162
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 163
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 164
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    .line 165
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 166
    return-void
.end method

.method public setTexMatrix([F)V
    .locals 3
    .parameter "textureTransform"

    .prologue
    .line 169
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    aget v2, p1, v0

    aput v2, v1, v0

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_0
    return-void
.end method

.method public translate(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 103
    return-void
.end method

.method public translate(FFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 99
    return-void
.end method
