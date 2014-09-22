.class public Lcom/android/camera/FocusManagerSimple;
.super Lcom/android/camera/FocusManagerAbstract;
.source "FocusManagerSimple.java"


# direct methods
.method public constructor <init>(IIZI)V
    .locals 1
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "mirror"
    .parameter "displayOrientation"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/camera/FocusManagerAbstract;-><init>()V

    .line 13
    iput p4, p0, Lcom/android/camera/FocusManagerSimple;->mDisplayOrientation:I

    .line 14
    iput-boolean p3, p0, Lcom/android/camera/FocusManagerSimple;->mMirror:Z

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/FocusManagerSimple;->setPreviewSize(II)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/FocusManagerSimple;->mInitialized:Z

    .line 17
    return-void
.end method


# virtual methods
.method public getFocusArea(II)Ljava/util/List;
    .locals 10
    .parameter "x"
    .parameter "y"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerSimple;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 30
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v9, focusArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v0, Landroid/hardware/Camera$Area;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget v1, p0, Lcom/android/camera/FocusManagerSimple;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManagerSimple;->FOCUS_AREA_HEIGHT:I

    const/high16 v3, 0x3f80

    iget v6, p0, Lcom/android/camera/FocusManagerSimple;->mPreviewWidth:I

    iget v7, p0, Lcom/android/camera/FocusManagerSimple;->mPreviewHeight:I

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManagerSimple;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 38
    .end local v9           #focusArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    :goto_0
    return-object v9

    :cond_0
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public getMeteringsArea(II)Ljava/util/List;
    .locals 10
    .parameter "x"
    .parameter "y"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerSimple;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 43
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v9, meteringArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v0, Landroid/hardware/Camera$Area;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget v1, p0, Lcom/android/camera/FocusManagerSimple;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManagerSimple;->FOCUS_AREA_HEIGHT:I

    const v3, 0x3fe66666

    iget v6, p0, Lcom/android/camera/FocusManagerSimple;->mPreviewWidth:I

    iget v7, p0, Lcom/android/camera/FocusManagerSimple;->mPreviewHeight:I

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManagerSimple;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 51
    .end local v9           #meteringArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    :goto_0
    return-object v9

    :cond_0
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public setPreviewSize(II)V
    .locals 1
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 21
    iget v0, p0, Lcom/android/camera/FocusManagerSimple;->mPreviewWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManagerSimple;->mPreviewHeight:I

    if-eq v0, p2, :cond_1

    .line 22
    :cond_0
    iput p1, p0, Lcom/android/camera/FocusManagerSimple;->mPreviewWidth:I

    .line 23
    iput p2, p0, Lcom/android/camera/FocusManagerSimple;->mPreviewHeight:I

    .line 24
    invoke-virtual {p0}, Lcom/android/camera/FocusManagerSimple;->setMatrix()V

    .line 26
    :cond_1
    return-void
.end method
