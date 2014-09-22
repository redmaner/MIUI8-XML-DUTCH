.class public Lcom/android/camera/ui/V6StaticGridView;
.super Landroid/view/ViewGroup;
.source "V6StaticGridView.java"


# instance fields
.field private mChildHeight:I

.field private mChildWidth:I

.field private mColumnCount:I

.field private mIndex:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRowCount:I

.field private mTotalCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIII)V
    .locals 3
    .parameter "context"
    .parameter "rowCount"
    .parameter "columnCount"
    .parameter "childWidth"
    .parameter "childHeight"
    .parameter "index"
    .parameter "totalCount"

    .prologue
    const/4 v2, 0x1

    .line 23
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 24
    iput p7, p0, Lcom/android/camera/ui/V6StaticGridView;->mTotalCount:I

    .line 25
    iput p6, p0, Lcom/android/camera/ui/V6StaticGridView;->mIndex:I

    .line 26
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6StaticGridView;->mRowCount:I

    .line 27
    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6StaticGridView;->mColumnCount:I

    .line 28
    invoke-static {v2, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6StaticGridView;->mChildHeight:I

    .line 29
    invoke-static {v2, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6StaticGridView;->mChildWidth:I

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6StaticGridView;->mPaint:Landroid/graphics/Paint;

    .line 31
    iget-object v0, p0, Lcom/android/camera/ui/V6StaticGridView;->mPaint:Landroid/graphics/Paint;

    const v1, 0x2fffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/V6StaticGridView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 33
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6StaticGridView;->setDrawingCacheEnabled(Z)V

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6StaticGridView;->setWillNotDraw(Z)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method private measureDimension(II)I
    .locals 1
    .parameter "measureSpec"
    .parameter "contentDimension"

    .prologue
    .line 52
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 60
    const/4 p2, 0x0

    .end local p2
    :goto_0
    :sswitch_0
    return p2

    .line 56
    .restart local p2
    :sswitch_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_0

    .line 58
    :sswitch_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    .line 52
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 104
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 105
    return-void
.end method

.method protected doLayout(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 98
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6StaticGridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6StaticGridView;->layoutChildByIndex(I)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method

.method protected layoutChildByIndex(I)V
    .locals 8
    .parameter "index"

    .prologue
    .line 64
    iget v2, p0, Lcom/android/camera/ui/V6StaticGridView;->mColumnCount:I

    div-int v1, p1, v2

    .line 65
    .local v1, rowIndex:I
    iget v2, p0, Lcom/android/camera/ui/V6StaticGridView;->mColumnCount:I

    rem-int v0, p1, v2

    .line 66
    .local v0, columnIndex:I
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6StaticGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ui/V6StaticGridView;->mChildWidth:I

    mul-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/android/camera/ui/V6StaticGridView;->mChildHeight:I

    mul-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/android/camera/ui/V6StaticGridView;->mChildWidth:I

    add-int/lit8 v6, v0, 0x1

    mul-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/camera/ui/V6StaticGridView;->mChildHeight:I

    add-int/lit8 v7, v1, 0x1

    mul-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 71
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/high16 v2, 0x3f80

    .line 75
    invoke-virtual {p0}, Lcom/android/camera/ui/V6StaticGridView;->getWidth()I

    move-result v11

    .local v11, w:I
    invoke-virtual {p0}, Lcom/android/camera/ui/V6StaticGridView;->getHeight()I

    move-result v9

    .line 76
    .local v9, h:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/V6StaticGridView;->mColumnCount:I

    if-ge v10, v0, :cond_2

    .line 77
    if-nez v10, :cond_0

    iget v0, p0, Lcom/android/camera/ui/V6StaticGridView;->mIndex:I

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/V6StaticGridView;->mChildWidth:I

    mul-int/2addr v0, v10

    int-to-float v1, v0

    iget v0, p0, Lcom/android/camera/ui/V6StaticGridView;->mChildWidth:I

    mul-int/2addr v0, v10

    int-to-float v3, v0

    add-int/lit8 v0, v9, -0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/V6StaticGridView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 76
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 82
    :cond_2
    const/4 v10, 0x0

    :goto_1
    iget v0, p0, Lcom/android/camera/ui/V6StaticGridView;->mRowCount:I

    if-gt v10, v0, :cond_4

    .line 83
    iget v0, p0, Lcom/android/camera/ui/V6StaticGridView;->mIndex:I

    iget v1, p0, Lcom/android/camera/ui/V6StaticGridView;->mTotalCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    .line 84
    const/4 v4, 0x0

    iget v0, p0, Lcom/android/camera/ui/V6StaticGridView;->mChildHeight:I

    mul-int/2addr v0, v10

    int-to-float v5, v0

    add-int/lit8 v0, v11, -0x2

    int-to-float v6, v0

    iget v0, p0, Lcom/android/camera/ui/V6StaticGridView;->mChildHeight:I

    mul-int/2addr v0, v10

    int-to-float v7, v0

    iget-object v8, p0, Lcom/android/camera/ui/V6StaticGridView;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 82
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 86
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/V6StaticGridView;->mChildHeight:I

    mul-int/2addr v0, v10

    int-to-float v3, v0

    int-to-float v4, v11

    iget v0, p0, Lcom/android/camera/ui/V6StaticGridView;->mChildHeight:I

    mul-int/2addr v0, v10

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/camera/ui/V6StaticGridView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 89
    :cond_4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 90
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 94
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/camera/ui/V6StaticGridView;->doLayout(IIII)V

    .line 95
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v3, 0x4000

    .line 43
    iget v0, p0, Lcom/android/camera/ui/V6StaticGridView;->mChildWidth:I

    iget v1, p0, Lcom/android/camera/ui/V6StaticGridView;->mColumnCount:I

    mul-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/V6StaticGridView;->measureDimension(II)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/V6StaticGridView;->mChildHeight:I

    iget v2, p0, Lcom/android/camera/ui/V6StaticGridView;->mRowCount:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, p2, v1}, Lcom/android/camera/ui/V6StaticGridView;->measureDimension(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/V6StaticGridView;->setMeasuredDimension(II)V

    .line 46
    iget v0, p0, Lcom/android/camera/ui/V6StaticGridView;->mChildWidth:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/V6StaticGridView;->mChildHeight:I

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/V6StaticGridView;->measureChildren(II)V

    .line 49
    return-void
.end method
