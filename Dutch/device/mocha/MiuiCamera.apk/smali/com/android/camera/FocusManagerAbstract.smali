.class public abstract Lcom/android/camera/FocusManagerAbstract;
.super Ljava/lang/Object;
.source "FocusManagerAbstract.java"


# instance fields
.field protected final FOCUS_AREA_HEIGHT:I

.field protected final FOCUS_AREA_SCALE:F

.field protected final FOCUS_AREA_WIDTH:I

.field protected final FOCUS_INDICATOR_HEIGHT:I

.field protected final FOCUS_INDICATOR_WIDTH:I

.field protected final METERING_AREA_SCALE:F

.field protected mDisplayOrientation:I

.field protected mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field protected mInitialized:Z

.field protected mMatrix:Landroid/graphics/Matrix;

.field protected mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field protected mMirror:Z

.field protected mPreviewHeight:I

.field protected mPreviewWidth:I

.field protected mRenderHeight:I

.field protected mRenderWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusManagerAbstract;->mMatrix:Landroid/graphics/Matrix;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    .line 36
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    .line 38
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_HEIGHT:I

    .line 40
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_INDICATOR_WIDTH:I

    .line 42
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_INDICATOR_HEIGHT:I

    .line 44
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_SCALE:F

    .line 45
    const v0, 0x3fe66666

    iput v0, p0, Lcom/android/camera/FocusManagerAbstract;->METERING_AREA_SCALE:F

    return-void
.end method


# virtual methods
.method protected calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    .locals 10
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "areaMultiple"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "rect"

    .prologue
    .line 70
    int-to-float v6, p1

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 71
    .local v2, areaWidth:I
    int-to-float v6, p2

    mul-float/2addr v6, p3

    float-to-int v1, v6

    .line 72
    .local v1, areaHeight:I
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p4, v6

    const/4 v7, 0x0

    sub-int v8, p6, v2

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->clamp(III)I

    move-result v3

    .line 73
    .local v3, left:I
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p5, v6

    const/4 v7, 0x0

    sub-int v8, p7, v1

    invoke-static {v6, v7, v8}, Lcom/android/camera/Util;->clamp(III)I

    move-result v5

    .line 74
    .local v5, top:I
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    add-int v8, v3, v2

    int-to-float v8, v8

    add-int v9, v5, v1

    int-to-float v9, v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 75
    .local v4, rectF:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/camera/FocusManagerAbstract;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 76
    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/android/camera/Util;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 77
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0
    .parameter "displayOrientation"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/camera/FocusManagerAbstract;->mDisplayOrientation:I

    .line 86
    invoke-virtual {p0}, Lcom/android/camera/FocusManagerAbstract;->setMatrix()V

    .line 87
    return-void
.end method

.method protected setMatrix()V
    .locals 7

    .prologue
    .line 48
    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    if-eqz v1, :cond_0

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 50
    .local v0, matrix:Landroid/graphics/Matrix;
    iget-boolean v1, p0, Lcom/android/camera/FocusManagerAbstract;->mMirror:Z

    iget v2, p0, Lcom/android/camera/FocusManagerAbstract;->mDisplayOrientation:I

    iget v3, p0, Lcom/android/camera/FocusManagerAbstract;->mRenderWidth:I

    iget v4, p0, Lcom/android/camera/FocusManagerAbstract;->mRenderHeight:I

    iget v5, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    div-int/lit8 v6, v6, 0x2

    invoke-static/range {v0 .. v6}, Lcom/android/camera/Util;->prepareMatrix(Landroid/graphics/Matrix;ZIIIII)V

    .line 55
    iget-object v1, p0, Lcom/android/camera/FocusManagerAbstract;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    .line 58
    .end local v0           #matrix:Landroid/graphics/Matrix;
    :cond_0
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .parameter "mirror"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/camera/FocusManagerAbstract;->mMirror:Z

    .line 81
    invoke-virtual {p0}, Lcom/android/camera/FocusManagerAbstract;->setMatrix()V

    .line 82
    return-void
.end method

.method public setRenderSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mRenderWidth:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mRenderHeight:I

    if-eq p2, v0, :cond_1

    .line 62
    :cond_0
    iput p1, p0, Lcom/android/camera/FocusManagerAbstract;->mRenderWidth:I

    .line 63
    iput p2, p0, Lcom/android/camera/FocusManagerAbstract;->mRenderHeight:I

    .line 64
    invoke-virtual {p0}, Lcom/android/camera/FocusManagerAbstract;->setMatrix()V

    .line 66
    :cond_1
    return-void
.end method
