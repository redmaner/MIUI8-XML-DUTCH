.class public final Lcom/google/zxing/pdf417/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# static fields
.field private static final INDEXES_START_PATTERN:[I

.field private static final INDEXES_STOP_PATTERN:[I

.field private static final START_PATTERN:[I

.field private static final STOP_PATTERN:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 41
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_START_PATTERN:[I

    .line 42
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_STOP_PATTERN:[I

    .line 50
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    .line 52
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    return-void

    .line 41
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 42
    :array_1
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 50
    :array_2
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 52
    :array_3
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method private static copyToResult([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V
    .locals 3
    .parameter "result"
    .parameter "tmpResult"
    .parameter "destinationIndexes"

    .prologue
    .line 210
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 211
    aget v1, p2, v0

    aget-object v2, p1, v0

    aput-object v2, p0, v1

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_0
    return-void
.end method

.method public static detect(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Z)Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;
    .locals 3
    .parameter "image"
    .parameter
    .parameter "multiple"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;Z)",
            "Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 81
    .local p1, hints:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 83
    .local v1, bitMatrix:Lcom/google/zxing/common/BitMatrix;
    invoke-static {p2, v1}, Lcom/google/zxing/pdf417/detector/Detector;->detect(ZLcom/google/zxing/common/BitMatrix;)Ljava/util/List;

    move-result-object v0

    .line 84
    .local v0, barcodeCoordinates:Ljava/util/List;,"Ljava/util/List<[Lcom/google/zxing/ResultPoint;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-static {v1}, Lcom/google/zxing/pdf417/detector/Detector;->rotate180(Lcom/google/zxing/common/BitMatrix;)V

    .line 86
    invoke-static {p2, v1}, Lcom/google/zxing/pdf417/detector/Detector;->detect(ZLcom/google/zxing/common/BitMatrix;)Ljava/util/List;

    move-result-object v0

    .line 88
    :cond_0
    new-instance v2, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;

    invoke-direct {v2, v1, v0}, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;Ljava/util/List;)V

    return-object v2
.end method

.method private static detect(ZLcom/google/zxing/common/BitMatrix;)Ljava/util/List;
    .locals 13
    .parameter "multiple"
    .parameter "bitMatrix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/zxing/common/BitMatrix;",
            ")",
            "Ljava/util/List",
            "<[",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x3

    const/4 v9, 0x2

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v1, barcodeCoordinates:Ljava/util/List;,"Ljava/util/List<[Lcom/google/zxing/ResultPoint;>;"
    const/4 v5, 0x0

    .line 101
    .local v5, row:I
    const/4 v2, 0x0

    .line 102
    .local v2, column:I
    const/4 v3, 0x0

    .line 103
    .local v3, foundBarcodeInRow:Z
    :goto_0
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 104
    invoke-static {p1, v5, v2}, Lcom/google/zxing/pdf417/detector/Detector;->findVertices(Lcom/google/zxing/common/BitMatrix;II)[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    .line 106
    .local v6, vertices:[Lcom/google/zxing/ResultPoint;
    const/4 v7, 0x0

    aget-object v7, v6, v7

    if-nez v7, :cond_5

    aget-object v7, v6, v10

    if-nez v7, :cond_5

    .line 107
    if-nez v3, :cond_1

    .line 141
    .end local v6           #vertices:[Lcom/google/zxing/ResultPoint;
    :cond_0
    return-object v1

    .line 113
    .restart local v6       #vertices:[Lcom/google/zxing/ResultPoint;
    :cond_1
    const/4 v3, 0x0

    .line 114
    const/4 v2, 0x0

    .line 115
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/ResultPoint;

    .line 116
    .local v0, barcodeCoordinate:[Lcom/google/zxing/ResultPoint;
    aget-object v7, v0, v11

    if-eqz v7, :cond_3

    .line 117
    int-to-float v7, v5

    aget-object v8, v0, v11

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-int v5, v7

    .line 119
    :cond_3
    aget-object v7, v0, v10

    if-eqz v7, :cond_2

    .line 120
    aget-object v7, v0, v10

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 123
    .end local v0           #barcodeCoordinate:[Lcom/google/zxing/ResultPoint;
    :cond_4
    add-int/lit8 v5, v5, 0x5

    .line 124
    goto :goto_0

    .line 126
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_5
    const/4 v3, 0x1

    .line 127
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    if-eqz p0, :cond_0

    .line 133
    aget-object v7, v6, v9

    if-eqz v7, :cond_6

    .line 134
    aget-object v7, v6, v9

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v7

    float-to-int v2, v7

    .line 135
    aget-object v7, v6, v9

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    float-to-int v5, v7

    goto :goto_0

    .line 137
    :cond_6
    aget-object v7, v6, v12

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v7

    float-to-int v2, v7

    .line 138
    aget-object v7, v6, v12

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    float-to-int v5, v7

    goto :goto_0
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I
    .locals 13
    .parameter "matrix"
    .parameter "column"
    .parameter "row"
    .parameter "width"
    .parameter "whiteFirst"
    .parameter "pattern"
    .parameter "counters"

    .prologue
    .line 295
    const/4 v10, 0x0

    move-object/from16 v0, p6

    array-length v11, v0

    const/4 v12, 0x0

    move-object/from16 v0, p6

    invoke-static {v0, v10, v11, v12}, Ljava/util/Arrays;->fill([IIII)V

    .line 296
    move-object/from16 v0, p5

    array-length v4, v0

    .line 297
    .local v4, patternLength:I
    move/from16 v3, p4

    .line 298
    .local v3, isWhite:Z
    move v5, p1

    .line 299
    .local v5, patternStart:I
    const/4 v7, 0x0

    .line 302
    .local v7, pixelDrift:I
    :goto_0
    invoke-virtual {p0, v5, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_1

    if-lez v5, :cond_1

    add-int/lit8 v8, v7, 0x1

    .end local v7           #pixelDrift:I
    .local v8, pixelDrift:I
    const/4 v10, 0x3

    if-ge v7, v10, :cond_0

    .line 303
    add-int/lit8 v5, v5, -0x1

    move v7, v8

    .end local v8           #pixelDrift:I
    .restart local v7       #pixelDrift:I
    goto :goto_0

    .end local v7           #pixelDrift:I
    .restart local v8       #pixelDrift:I
    :cond_0
    move v7, v8

    .line 305
    .end local v8           #pixelDrift:I
    .restart local v7       #pixelDrift:I
    :cond_1
    move v9, v5

    .line 306
    .local v9, x:I
    const/4 v2, 0x0

    .line 307
    .local v2, counterPosition:I
    :goto_1
    move/from16 v0, p3

    if-ge v9, v0, :cond_6

    .line 308
    invoke-virtual {p0, v9, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    .line 309
    .local v6, pixel:Z
    xor-int v10, v6, v3

    if-eqz v10, :cond_2

    .line 310
    aget v10, p6, v2

    add-int/lit8 v10, v10, 0x1

    aput v10, p6, v2

    .line 307
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 312
    :cond_2
    add-int/lit8 v10, v4, -0x1

    if-ne v2, v10, :cond_4

    .line 313
    const/16 v10, 0xcc

    move-object/from16 v0, p6

    move-object/from16 v1, p5

    invoke-static {v0, v1, v10}, Lcom/google/zxing/pdf417/detector/Detector;->patternMatchVariance([I[II)I

    move-result v10

    const/16 v11, 0x6b

    if-ge v10, v11, :cond_3

    .line 314
    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v5, v10, v11

    const/4 v11, 0x1

    aput v9, v10, v11

    .line 333
    .end local v6           #pixel:Z
    :goto_3
    return-object v10

    .line 316
    .restart local v6       #pixel:Z
    :cond_3
    const/4 v10, 0x0

    aget v10, p6, v10

    const/4 v11, 0x1

    aget v11, p6, v11

    add-int/2addr v10, v11

    add-int/2addr v5, v10

    .line 317
    const/4 v10, 0x2

    const/4 v11, 0x0

    add-int/lit8 v12, v4, -0x2

    move-object/from16 v0, p6

    move-object/from16 v1, p6

    invoke-static {v0, v10, v1, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    add-int/lit8 v10, v4, -0x2

    const/4 v11, 0x0

    aput v11, p6, v10

    .line 319
    add-int/lit8 v10, v4, -0x1

    const/4 v11, 0x0

    aput v11, p6, v10

    .line 320
    add-int/lit8 v2, v2, -0x1

    .line 324
    :goto_4
    const/4 v10, 0x1

    aput v10, p6, v2

    .line 325
    if-nez v3, :cond_5

    const/4 v3, 0x1

    :goto_5
    goto :goto_2

    .line 322
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 325
    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    .line 328
    .end local v6           #pixel:Z
    :cond_6
    add-int/lit8 v10, v4, -0x1

    if-ne v2, v10, :cond_7

    .line 329
    const/16 v10, 0xcc

    move-object/from16 v0, p6

    move-object/from16 v1, p5

    invoke-static {v0, v1, v10}, Lcom/google/zxing/pdf417/detector/Detector;->patternMatchVariance([I[II)I

    move-result v10

    const/16 v11, 0x6b

    if-ge v10, v11, :cond_7

    .line 330
    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    aput v5, v10, v11

    const/4 v11, 0x1

    add-int/lit8 v12, v9, -0x1

    aput v12, v10, v11

    goto :goto_3

    .line 333
    :cond_7
    const/4 v10, 0x0

    goto :goto_3
.end method

.method private static findRowsWithPattern(Lcom/google/zxing/common/BitMatrix;IIII[I)[Lcom/google/zxing/ResultPoint;
    .locals 14
    .parameter "matrix"
    .parameter "height"
    .parameter "width"
    .parameter "startRow"
    .parameter "startColumn"
    .parameter "pattern"

    .prologue
    .line 221
    const/4 v1, 0x4

    new-array v12, v1, [Lcom/google/zxing/ResultPoint;

    .line 222
    .local v12, result:[Lcom/google/zxing/ResultPoint;
    const/4 v8, 0x0

    .line 223
    .local v8, found:Z
    move-object/from16 v0, p5

    array-length v1, v0

    new-array v7, v1, [I

    .line 224
    .local v7, counters:[I
    :goto_0
    move/from16 v0, p3

    if-ge v0, p1, :cond_2

    .line 225
    const/4 v5, 0x0

    move-object v1, p0

    move/from16 v2, p4

    move/from16 v3, p3

    move/from16 v4, p2

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v10

    .line 226
    .local v10, loc:[I
    if-eqz v10, :cond_3

    .line 227
    :goto_1
    if-lez p3, :cond_1

    .line 228
    add-int/lit8 p3, p3, -0x1

    const/4 v5, 0x0

    move-object v1, p0

    move/from16 v2, p4

    move/from16 v3, p3

    move/from16 v4, p2

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v11

    .line 229
    .local v11, previousRowLoc:[I
    if-eqz v11, :cond_0

    .line 230
    move-object v10, v11

    goto :goto_1

    .line 232
    :cond_0
    add-int/lit8 p3, p3, 0x1

    .line 236
    .end local v11           #previousRowLoc:[I
    :cond_1
    const/4 v1, 0x0

    new-instance v2, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x0

    aget v4, v10, v4

    int-to-float v4, v4

    move/from16 v0, p3

    int-to-float v5, v0

    invoke-direct {v2, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v12, v1

    .line 237
    const/4 v1, 0x1

    new-instance v2, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x1

    aget v4, v10, v4

    int-to-float v4, v4

    move/from16 v0, p3

    int-to-float v5, v0

    invoke-direct {v2, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v12, v1

    .line 238
    const/4 v8, 0x1

    .line 242
    .end local v10           #loc:[I
    :cond_2
    add-int/lit8 v3, p3, 0x1

    .line 244
    .local v3, stopRow:I
    if-eqz v8, :cond_6

    .line 245
    const/4 v13, 0x0

    .line 246
    .local v13, skippedRowCount:I
    const/4 v1, 0x2

    new-array v11, v1, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-object v2, v12, v2

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    float-to-int v2, v2

    aput v2, v11, v1

    const/4 v1, 0x1

    const/4 v2, 0x1

    aget-object v2, v12, v2

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    float-to-int v2, v2

    aput v2, v11, v1

    .line 247
    .restart local v11       #previousRowLoc:[I
    :goto_2
    if-ge v3, p1, :cond_5

    .line 248
    const/4 v1, 0x0

    aget v2, v11, v1

    const/4 v5, 0x0

    move-object v1, p0

    move/from16 v4, p2

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v7}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v10

    .line 253
    .restart local v10       #loc:[I
    if-eqz v10, :cond_4

    const/4 v1, 0x0

    aget v1, v11, v1

    const/4 v2, 0x0

    aget v2, v10, v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_4

    const/4 v1, 0x1

    aget v1, v11, v1

    const/4 v2, 0x1

    aget v2, v10, v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_4

    .line 256
    move-object v11, v10

    .line 257
    const/4 v13, 0x0

    .line 247
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 224
    .end local v3           #stopRow:I
    .end local v11           #previousRowLoc:[I
    .end local v13           #skippedRowCount:I
    :cond_3
    add-int/lit8 p3, p3, 0x5

    goto/16 :goto_0

    .line 259
    .restart local v3       #stopRow:I
    .restart local v11       #previousRowLoc:[I
    .restart local v13       #skippedRowCount:I
    :cond_4
    const/16 v1, 0x19

    if-le v13, v1, :cond_7

    .line 266
    .end local v10           #loc:[I
    :cond_5
    add-int/lit8 v1, v13, 0x1

    sub-int/2addr v3, v1

    .line 267
    const/4 v1, 0x2

    new-instance v2, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x0

    aget v4, v11, v4

    int-to-float v4, v4

    int-to-float v5, v3

    invoke-direct {v2, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v12, v1

    .line 268
    const/4 v1, 0x3

    new-instance v2, Lcom/google/zxing/ResultPoint;

    const/4 v4, 0x1

    aget v4, v11, v4

    int-to-float v4, v4

    int-to-float v5, v3

    invoke-direct {v2, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v12, v1

    .line 270
    .end local v11           #previousRowLoc:[I
    .end local v13           #skippedRowCount:I
    :cond_6
    sub-int v1, v3, p3

    const/16 v2, 0xa

    if-ge v1, v2, :cond_8

    .line 271
    const/4 v9, 0x0

    .local v9, i:I
    :goto_4
    array-length v1, v12

    if-ge v9, v1, :cond_8

    .line 272
    const/4 v1, 0x0

    aput-object v1, v12, v9

    .line 271
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 262
    .end local v9           #i:I
    .restart local v10       #loc:[I
    .restart local v11       #previousRowLoc:[I
    .restart local v13       #skippedRowCount:I
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 275
    .end local v10           #loc:[I
    .end local v11           #previousRowLoc:[I
    .end local v13           #skippedRowCount:I
    :cond_8
    return-object v12
.end method

.method private static findVertices(Lcom/google/zxing/common/BitMatrix;II)[Lcom/google/zxing/ResultPoint;
    .locals 8
    .parameter "matrix"
    .parameter "startRow"
    .parameter "startColumn"

    .prologue
    const/4 v7, 0x4

    .line 193
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 194
    .local v1, height:I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    .line 196
    .local v2, width:I
    const/16 v0, 0x8

    new-array v6, v0, [Lcom/google/zxing/ResultPoint;

    .line 197
    .local v6, result:[Lcom/google/zxing/ResultPoint;
    sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/detector/Detector;->findRowsWithPattern(Lcom/google/zxing/common/BitMatrix;IIII[I)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    sget-object v3, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_START_PATTERN:[I

    invoke-static {v6, v0, v3}, Lcom/google/zxing/pdf417/detector/Detector;->copyToResult([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V

    .line 200
    aget-object v0, v6, v7

    if-eqz v0, :cond_0

    .line 201
    aget-object v0, v6, v7

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int p2, v0

    .line 202
    aget-object v0, v6, v7

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int p1, v0

    .line 204
    :cond_0
    sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/detector/Detector;->findRowsWithPattern(Lcom/google/zxing/common/BitMatrix;IIII[I)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    sget-object v3, Lcom/google/zxing/pdf417/detector/Detector;->INDEXES_STOP_PATTERN:[I

    invoke-static {v6, v0, v3}, Lcom/google/zxing/pdf417/detector/Detector;->copyToResult([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V

    .line 206
    return-object v6
.end method

.method static mirror(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .locals 3
    .parameter "input"
    .parameter "result"

    .prologue
    .line 167
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->clear()V

    .line 168
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    .line 169
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 170
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    add-int/lit8 v2, v1, -0x1

    sub-int/2addr v2, v0

    invoke-virtual {p1, v2}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 169
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_1
    return-object p1
.end method

.method private static patternMatchVariance([I[II)I
    .locals 12
    .parameter "counters"
    .parameter "pattern"
    .parameter "maxIndividualVariance"

    .prologue
    const v10, 0x7fffffff

    .line 352
    array-length v2, p0

    .line 353
    .local v2, numCounters:I
    const/4 v5, 0x0

    .line 354
    .local v5, total:I
    const/4 v3, 0x0

    .line 355
    .local v3, patternLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 356
    aget v11, p0, v1

    add-int/2addr v5, v11

    .line 357
    aget v11, p1, v1

    add-int/2addr v3, v11

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    :cond_0
    if-ge v5, v3, :cond_2

    .line 380
    :cond_1
    :goto_1
    return v10

    .line 367
    :cond_2
    shl-int/lit8 v11, v5, 0x8

    div-int v7, v11, v3

    .line 368
    .local v7, unitBarWidth:I
    mul-int v11, p2, v7

    shr-int/lit8 p2, v11, 0x8

    .line 370
    const/4 v6, 0x0

    .line 371
    .local v6, totalVariance:I
    const/4 v9, 0x0

    .local v9, x:I
    :goto_2
    if-ge v9, v2, :cond_4

    .line 372
    aget v11, p0, v9

    shl-int/lit8 v0, v11, 0x8

    .line 373
    .local v0, counter:I
    aget v11, p1, v9

    mul-int v4, v11, v7

    .line 374
    .local v4, scaledPattern:I
    if-le v0, v4, :cond_3

    sub-int v8, v0, v4

    .line 375
    .local v8, variance:I
    :goto_3
    if-gt v8, p2, :cond_1

    .line 378
    add-int/2addr v6, v8

    .line 371
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 374
    .end local v8           #variance:I
    :cond_3
    sub-int v8, v4, v0

    goto :goto_3

    .line 380
    .end local v0           #counter:I
    .end local v4           #scaledPattern:I
    :cond_4
    div-int v10, v6, v5

    goto :goto_1
.end method

.method static rotate180(Lcom/google/zxing/common/BitMatrix;)V
    .locals 8
    .parameter "bitMatrix"

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    .line 152
    .local v4, width:I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 153
    .local v1, height:I
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0, v4}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 154
    .local v0, firstRowBitArray:Lcom/google/zxing/common/BitArray;
    new-instance v2, Lcom/google/zxing/common/BitArray;

    invoke-direct {v2, v4}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 155
    .local v2, secondRowBitArray:Lcom/google/zxing/common/BitArray;
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3, v4}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 156
    .local v3, tmpBitArray:Lcom/google/zxing/common/BitArray;
    const/4 v5, 0x0

    .local v5, y:I
    :goto_0
    add-int/lit8 v6, v1, 0x1

    shr-int/lit8 v6, v6, 0x1

    if-ge v5, v6, :cond_0

    .line 157
    invoke-virtual {p0, v5, v0}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    .line 158
    add-int/lit8 v6, v1, -0x1

    sub-int/2addr v6, v5

    invoke-virtual {p0, v6, v2}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/google/zxing/pdf417/detector/Detector;->mirror(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/google/zxing/common/BitMatrix;->setRow(ILcom/google/zxing/common/BitArray;)V

    .line 159
    add-int/lit8 v6, v1, -0x1

    sub-int/2addr v6, v5

    invoke-static {v0, v3}, Lcom/google/zxing/pdf417/detector/Detector;->mirror(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/google/zxing/common/BitMatrix;->setRow(ILcom/google/zxing/common/BitArray;)V

    .line 156
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 161
    :cond_0
    return-void
.end method
