.class public Lcom/android/camera/ui/NumericRollAdapter;
.super Ljava/lang/Object;
.source "NumericRollAdapter.java"

# interfaces
.implements Lcom/android/camera/ui/RollAdapter;


# instance fields
.field private mGapValue:I

.field private mMaxValue:I

.field private mMinValue:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x0

    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/NumericRollAdapter;-><init>(III)V

    .line 17
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .parameter "minValue"
    .parameter "maxValue"
    .parameter "gapValue"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/NumericRollAdapter;->mGapValue:I

    .line 20
    iput p1, p0, Lcom/android/camera/ui/NumericRollAdapter;->mMinValue:I

    .line 21
    iput p2, p0, Lcom/android/camera/ui/NumericRollAdapter;->mMaxValue:I

    .line 22
    iput p3, p0, Lcom/android/camera/ui/NumericRollAdapter;->mGapValue:I

    .line 23
    return-void
.end method


# virtual methods
.method public getCenterIndex()I
    .locals 2

    .prologue
    .line 60
    iget v0, p0, Lcom/android/camera/ui/NumericRollAdapter;->mMaxValue:I

    iget v1, p0, Lcom/android/camera/ui/NumericRollAdapter;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/NumericRollAdapter;->mGapValue:I

    div-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getItemIndexByValue(Ljava/lang/Object;)I
    .locals 3
    .parameter "value"

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, pureValue:I
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 67
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 69
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/NumericRollAdapter;->mMaxValue:I

    if-gt v0, v1, :cond_1

    iget v1, p0, Lcom/android/camera/ui/NumericRollAdapter;->mMinValue:I

    if-lt v0, v1, :cond_1

    .line 70
    iget v1, p0, Lcom/android/camera/ui/NumericRollAdapter;->mMinValue:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/NumericRollAdapter;->mGapValue:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 72
    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getItemValue(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 47
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/NumericRollAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 48
    iget v0, p0, Lcom/android/camera/ui/NumericRollAdapter;->mMinValue:I

    iget v1, p0, Lcom/android/camera/ui/NumericRollAdapter;->mGapValue:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getItemsCount()I
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lcom/android/camera/ui/NumericRollAdapter;->mMaxValue:I

    iget v1, p0, Lcom/android/camera/ui/NumericRollAdapter;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/NumericRollAdapter;->mGapValue:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
