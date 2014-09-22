.class Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;
.super Ljava/lang/Object;
.source "GLCanvasState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/GLCanvasState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CanvasStateConfig"
.end annotation


# instance fields
.field mAlpha:F

.field mModelMatrix:[F

.field mTexMatrix:[F

.field final synthetic this$0:Lcom/android/camera/effect/GLCanvasState;


# direct methods
.method public constructor <init>(Lcom/android/camera/effect/GLCanvasState;[F[FF)V
    .locals 4
    .parameter
    .parameter "modelMatrix"
    .parameter "texMatrix"
    .parameter "alpha"

    .prologue
    const/16 v3, 0x10

    .line 37
    iput-object p1, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->this$0:Lcom/android/camera/effect/GLCanvasState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mModelMatrix:[F

    .line 34
    new-array v1, v3, [F

    iput-object v1, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mTexMatrix:[F

    .line 35
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mAlpha:F

    .line 38
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 39
    iget-object v1, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mModelMatrix:[F

    aget v2, p2, v0

    aput v2, v1, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 43
    iget-object v1, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mTexMatrix:[F

    aget v2, p3, v0

    aput v2, v1, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 46
    :cond_1
    iput p4, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mAlpha:F

    .line 47
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mAlpha:F

    return v0
.end method

.method public getModelMatrix()[F
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mModelMatrix:[F

    return-object v0
.end method

.method public getTexMatrix()[F
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mTexMatrix:[F

    return-object v0
.end method
