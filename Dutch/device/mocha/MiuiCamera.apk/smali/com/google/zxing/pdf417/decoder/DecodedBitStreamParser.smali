.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;,
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final MIXED_CHARS:[C

.field private static final PUNCT_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 61
    const/16 v2, 0x1d

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    .line 66
    const/16 v2, 0x19

    new-array v2, v2, [C

    fill-array-data v2, :array_1

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    .line 77
    const/16 v2, 0x10

    new-array v2, v2, [Ljava/math/BigInteger;

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    .line 78
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v3, 0x0

    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v4, v2, v3

    .line 79
    const-wide/16 v2, 0x384

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 80
    .local v1, nineHundred:Ljava/math/BigInteger;
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 81
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 82
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v0

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    return-void

    .line 61
    :array_0
    .array-data 0x2
        0x3bt 0x0t
        0x3ct 0x0t
        0x3et 0x0t
        0x40t 0x0t
        0x5bt 0x0t
        0x5ct 0x0t
        0x7dt 0x0t
        0x5ft 0x0t
        0x60t 0x0t
        0x7et 0x0t
        0x21t 0x0t
        0xdt 0x0t
        0x9t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0xat 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x24t 0x0t
        0x2ft 0x0t
        0x22t 0x0t
        0x7ct 0x0t
        0x2at 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x3ft 0x0t
        0x7bt 0x0t
        0x7dt 0x0t
        0x27t 0x0t
    .end array-data

    .line 66
    nop

    :array_1
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x26t 0x0t
        0xdt 0x0t
        0x9t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x23t 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x24t 0x0t
        0x2ft 0x0t
        0x2bt 0x0t
        0x25t 0x0t
        0x2at 0x0t
        0x3dt 0x0t
        0x5et 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method private static byteCompaction(I[IILjava/lang/StringBuilder;)I
    .locals 17
    .parameter "mode"
    .parameter "codewords"
    .parameter "codeIndex"
    .parameter "result"

    .prologue
    .line 433
    const/16 v13, 0x385

    move/from16 v0, p0

    if-ne v0, v13, :cond_5

    .line 436
    const/4 v4, 0x0

    .line 437
    .local v4, count:I
    const-wide/16 v11, 0x0

    .line 438
    .local v11, value:J
    const/4 v13, 0x6

    new-array v6, v13, [C

    .line 439
    .local v6, decodedData:[C
    const/4 v13, 0x6

    new-array v1, v13, [I

    .line 440
    .local v1, byteCompactedCodewords:[I
    const/4 v7, 0x0

    .line 441
    .local v7, end:Z
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .local v3, codeIndex:I
    aget v10, p1, p2

    .local v10, nextCode:I
    move/from16 p2, v3

    .line 442
    .end local v3           #codeIndex:I
    .restart local p2
    :goto_0
    const/4 v13, 0x0

    aget v13, p1, v13

    move/from16 v0, p2

    if-ge v0, v13, :cond_3

    if-nez v7, :cond_3

    .line 443
    add-int/lit8 v5, v4, 0x1

    .end local v4           #count:I
    .local v5, count:I
    aput v10, v1, v4

    .line 445
    const-wide/16 v13, 0x384

    mul-long/2addr v13, v11

    int-to-long v15, v10

    add-long v11, v13, v15

    .line 446
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .restart local v3       #codeIndex:I
    aget v10, p1, p2

    .line 448
    const/16 v13, 0x384

    if-eq v10, v13, :cond_0

    const/16 v13, 0x385

    if-eq v10, v13, :cond_0

    const/16 v13, 0x386

    if-eq v10, v13, :cond_0

    const/16 v13, 0x39c

    if-eq v10, v13, :cond_0

    const/16 v13, 0x3a0

    if-eq v10, v13, :cond_0

    const/16 v13, 0x39b

    if-eq v10, v13, :cond_0

    const/16 v13, 0x39a

    if-ne v10, v13, :cond_1

    .line 455
    :cond_0
    add-int/lit8 p2, v3, -0x1

    .line 456
    .end local v3           #codeIndex:I
    .restart local p2
    const/4 v7, 0x1

    move v4, v5

    .end local v5           #count:I
    .restart local v4       #count:I
    goto :goto_0

    .line 458
    .end local v4           #count:I
    .end local p2
    .restart local v3       #codeIndex:I
    .restart local v5       #count:I
    :cond_1
    rem-int/lit8 v13, v5, 0x5

    if-nez v13, :cond_c

    if-lez v5, :cond_c

    .line 461
    const/4 v9, 0x0

    .local v9, j:I
    :goto_1
    const/4 v13, 0x6

    if-ge v9, v13, :cond_2

    .line 462
    rsub-int/lit8 v13, v9, 0x5

    const-wide/16 v14, 0x100

    rem-long v14, v11, v14

    long-to-int v14, v14

    int-to-char v14, v14

    aput-char v14, v6, v13

    .line 463
    const/16 v13, 0x8

    shr-long/2addr v11, v13

    .line 461
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 465
    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 466
    const/4 v4, 0x0

    .end local v5           #count:I
    .restart local v4       #count:I
    move/from16 p2, v3

    .end local v3           #codeIndex:I
    .restart local p2
    goto :goto_0

    .line 472
    .end local v9           #j:I
    :cond_3
    const/4 v13, 0x0

    aget v13, p1, v13

    move/from16 v0, p2

    if-ne v0, v13, :cond_4

    const/16 v13, 0x384

    if-ge v10, v13, :cond_4

    .line 473
    add-int/lit8 v5, v4, 0x1

    .end local v4           #count:I
    .restart local v5       #count:I
    aput v10, v1, v4

    move v4, v5

    .line 479
    .end local v5           #count:I
    .restart local v4       #count:I
    :cond_4
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v4, :cond_a

    .line 480
    aget v13, v1, v8

    int-to-char v13, v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 479
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 483
    .end local v1           #byteCompactedCodewords:[I
    .end local v4           #count:I
    .end local v6           #decodedData:[C
    .end local v7           #end:Z
    .end local v8           #i:I
    .end local v10           #nextCode:I
    .end local v11           #value:J
    :cond_5
    const/16 v13, 0x39c

    move/from16 v0, p0

    if-ne v0, v13, :cond_a

    .line 486
    const/4 v4, 0x0

    .line 487
    .restart local v4       #count:I
    const-wide/16 v11, 0x0

    .line 488
    .restart local v11       #value:J
    const/4 v7, 0x0

    .line 489
    .restart local v7       #end:Z
    :cond_6
    :goto_3
    const/4 v13, 0x0

    aget v13, p1, v13

    move/from16 v0, p2

    if-ge v0, v13, :cond_a

    if-nez v7, :cond_a

    .line 490
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .restart local v3       #codeIndex:I
    aget v2, p1, p2

    .line 491
    .local v2, code:I
    const/16 v13, 0x384

    if-ge v2, v13, :cond_7

    .line 492
    add-int/lit8 v4, v4, 0x1

    .line 494
    const-wide/16 v13, 0x384

    mul-long/2addr v13, v11

    int-to-long v15, v2

    add-long v11, v13, v15

    move/from16 p2, v3

    .line 507
    .end local v3           #codeIndex:I
    .restart local p2
    :goto_4
    rem-int/lit8 v13, v4, 0x5

    if-nez v13, :cond_6

    if-lez v4, :cond_6

    .line 510
    const/4 v13, 0x6

    new-array v6, v13, [C

    .line 511
    .restart local v6       #decodedData:[C
    const/4 v9, 0x0

    .restart local v9       #j:I
    :goto_5
    const/4 v13, 0x6

    if-ge v9, v13, :cond_9

    .line 512
    rsub-int/lit8 v13, v9, 0x5

    const-wide/16 v14, 0xff

    and-long/2addr v14, v11

    long-to-int v14, v14

    int-to-char v14, v14

    aput-char v14, v6, v13

    .line 513
    const/16 v13, 0x8

    shr-long/2addr v11, v13

    .line 511
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 496
    .end local v6           #decodedData:[C
    .end local v9           #j:I
    .end local p2
    .restart local v3       #codeIndex:I
    :cond_7
    const/16 v13, 0x384

    if-eq v2, v13, :cond_8

    const/16 v13, 0x385

    if-eq v2, v13, :cond_8

    const/16 v13, 0x386

    if-eq v2, v13, :cond_8

    const/16 v13, 0x39c

    if-eq v2, v13, :cond_8

    const/16 v13, 0x3a0

    if-eq v2, v13, :cond_8

    const/16 v13, 0x39b

    if-eq v2, v13, :cond_8

    const/16 v13, 0x39a

    if-ne v2, v13, :cond_b

    .line 503
    :cond_8
    add-int/lit8 p2, v3, -0x1

    .line 504
    .end local v3           #codeIndex:I
    .restart local p2
    const/4 v7, 0x1

    goto :goto_4

    .line 515
    .restart local v6       #decodedData:[C
    .restart local v9       #j:I
    :cond_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 516
    const/4 v4, 0x0

    goto :goto_3

    .line 520
    .end local v2           #code:I
    .end local v4           #count:I
    .end local v6           #decodedData:[C
    .end local v7           #end:Z
    .end local v9           #j:I
    .end local v11           #value:J
    :cond_a
    return p2

    .end local p2
    .restart local v2       #code:I
    .restart local v3       #codeIndex:I
    .restart local v4       #count:I
    .restart local v7       #end:Z
    .restart local v11       #value:J
    :cond_b
    move/from16 p2, v3

    .end local v3           #codeIndex:I
    .restart local p2
    goto :goto_4

    .end local v2           #code:I
    .end local v4           #count:I
    .end local p2
    .restart local v1       #byteCompactedCodewords:[I
    .restart local v3       #codeIndex:I
    .restart local v5       #count:I
    .restart local v6       #decodedData:[C
    .restart local v10       #nextCode:I
    :cond_c
    move v4, v5

    .end local v5           #count:I
    .restart local v4       #count:I
    move/from16 p2, v3

    .end local v3           #codeIndex:I
    .restart local p2
    goto/16 :goto_0
.end method

.method static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .locals 8
    .parameter "codewords"
    .parameter "ecLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v6, p0

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 94
    .local v4, result:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 95
    .local v1, codeIndex:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #codeIndex:I
    .local v2, codeIndex:I
    aget v0, p0, v1

    .line 96
    .local v0, code:I
    new-instance v5, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    .local v5, resultMetadata:Lcom/google/zxing/pdf417/PDF417ResultMetadata;
    move v1, v2

    .line 97
    .end local v2           #codeIndex:I
    .restart local v1       #codeIndex:I
    :goto_0
    const/4 v6, 0x0

    aget v6, p0, v6

    if-ge v1, v6, :cond_1

    .line 98
    sparse-switch v0, :sswitch_data_0

    .line 121
    add-int/lit8 v1, v1, -0x1

    .line 122
    invoke-static {p0, v1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v1

    .line 125
    :goto_1
    array-length v6, p0

    if-ge v1, v6, :cond_0

    .line 126
    add-int/lit8 v2, v1, 0x1

    .end local v1           #codeIndex:I
    .restart local v2       #codeIndex:I
    aget v0, p0, v1

    move v1, v2

    .end local v2           #codeIndex:I
    .restart local v1       #codeIndex:I
    goto :goto_0

    .line 100
    :sswitch_0
    invoke-static {p0, v1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v1

    .line 101
    goto :goto_1

    .line 103
    :sswitch_1
    invoke-static {v0, p0, v1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuilder;)I

    move-result v1

    .line 104
    goto :goto_1

    .line 106
    :sswitch_2
    invoke-static {p0, v1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v1

    .line 107
    goto :goto_1

    .line 109
    :sswitch_3
    invoke-static {v0, p0, v1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuilder;)I

    move-result v1

    .line 110
    goto :goto_1

    .line 112
    :sswitch_4
    invoke-static {v0, p0, v1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuilder;)I

    move-result v1

    .line 113
    goto :goto_1

    .line 115
    :sswitch_5
    invoke-static {p0, v1, v5}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    move-result v1

    .line 116
    goto :goto_1

    .line 128
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 131
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 132
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 134
    :cond_2
    new-instance v3, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v7, v6, v7, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 135
    .local v3, decoderResult:Lcom/google/zxing/common/DecoderResult;
    invoke-virtual {v3, v5}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    .line 136
    return-object v3

    .line 98
    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_2
        0x391 -> :sswitch_3
        0x39c -> :sswitch_4
        0x3a0 -> :sswitch_5
    .end sparse-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .locals 6
    .parameter "codewords"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 615
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 616
    .local v1, result:Ljava/math/BigInteger;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 617
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v4, p1, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    aget v4, p0, v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 616
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 619
    :cond_0
    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    .line 620
    .local v2, resultString:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-eq v3, v4, :cond_1

    .line 621
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 623
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .locals 11
    .parameter "codewords"
    .parameter "codeIndex"
    .parameter "resultMetadata"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 141
    add-int/lit8 v9, p1, 0x2

    const/4 v10, 0x0

    aget v10, p0, v10

    if-le v9, v10, :cond_0

    .line 143
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v9

    throw v9

    .line 145
    :cond_0
    const/4 v9, 0x2

    new-array v8, v9, [I

    .line 146
    .local v8, segmentIndexArray:[I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    const/4 v9, 0x2

    if-ge v7, v9, :cond_1

    .line 147
    aget v9, p0, p1

    aput v9, v8, v7

    .line 146
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 149
    :cond_1
    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    .line 152
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v6, fileId:Ljava/lang/StringBuilder;
    invoke-static {p0, p1, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 154
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    .line 156
    aget v9, p0, p1

    const/16 v10, 0x39b

    if-ne v9, v10, :cond_5

    .line 157
    add-int/lit8 p1, p1, 0x1

    .line 158
    const/4 v9, 0x0

    aget v9, p0, v9

    sub-int/2addr v9, p1

    new-array v0, v9, [I

    .line 159
    .local v0, additionalOptionCodeWords:[I
    const/4 v1, 0x0

    .line 161
    .local v1, additionalOptionCodeWordsIndex:I
    const/4 v5, 0x0

    .line 162
    .local v5, end:Z
    :goto_1
    const/4 v9, 0x0

    aget v9, p0, v9

    if-ge p1, v9, :cond_3

    if-nez v5, :cond_3

    .line 163
    add-int/lit8 v4, p1, 0x1

    .end local p1
    .local v4, codeIndex:I
    aget v3, p0, p1

    .line 164
    .local v3, code:I
    const/16 v9, 0x384

    if-ge v3, v9, :cond_2

    .line 165
    add-int/lit8 v2, v1, 0x1

    .end local v1           #additionalOptionCodeWordsIndex:I
    .local v2, additionalOptionCodeWordsIndex:I
    aput v3, v0, v1

    move v1, v2

    .end local v2           #additionalOptionCodeWordsIndex:I
    .restart local v1       #additionalOptionCodeWordsIndex:I
    move p1, v4

    .end local v4           #codeIndex:I
    .restart local p1
    goto :goto_1

    .line 167
    .end local p1
    .restart local v4       #codeIndex:I
    :cond_2
    packed-switch v3, :pswitch_data_0

    .line 174
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v9

    throw v9

    .line 169
    :pswitch_0
    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    .line 170
    add-int/lit8 p1, v4, 0x1

    .line 171
    .end local v4           #codeIndex:I
    .restart local p1
    const/4 v5, 0x1

    .line 172
    goto :goto_1

    .line 179
    .end local v3           #code:I
    :cond_3
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    .line 185
    .end local v0           #additionalOptionCodeWords:[I
    .end local v1           #additionalOptionCodeWordsIndex:I
    .end local v5           #end:Z
    :cond_4
    :goto_2
    return p1

    .line 180
    :cond_5
    aget v9, p0, p1

    const/16 v10, 0x39a

    if-ne v9, v10, :cond_4

    .line 181
    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    .line 182
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x39a
        :pswitch_0
    .end packed-switch
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
    .locals 12
    .parameter "textCompactionData"
    .parameter "byteCompactionData"
    .parameter "length"
    .parameter "result"

    .prologue
    const/16 v11, 0x1b

    const/16 v10, 0x391

    const/16 v9, 0x384

    const/16 v8, 0x1d

    const/16 v7, 0x1a

    .line 285
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 286
    .local v3, subMode:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 287
    .local v2, priorToShiftMode:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    const/4 v1, 0x0

    .line 288
    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_1d

    .line 289
    aget v4, p0, v1

    .line 290
    .local v4, subModeCh:I
    const/4 v0, 0x0

    .line 291
    .local v0, ch:C
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 413
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 415
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 417
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 418
    goto :goto_0

    .line 294
    :pswitch_0
    if-ge v4, v7, :cond_2

    .line 296
    add-int/lit8 v5, v4, 0x41

    int-to-char v0, v5

    goto :goto_1

    .line 298
    :cond_2
    if-ne v4, v7, :cond_3

    .line 299
    const/16 v0, 0x20

    goto :goto_1

    .line 300
    :cond_3
    if-ne v4, v11, :cond_4

    .line 301
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 302
    :cond_4
    const/16 v5, 0x1c

    if-ne v4, v5, :cond_5

    .line 303
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 304
    :cond_5
    if-ne v4, v8, :cond_6

    .line 306
    move-object v2, v3

    .line 307
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 308
    :cond_6
    if-ne v4, v10, :cond_7

    .line 309
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 310
    :cond_7
    if-ne v4, v9, :cond_0

    .line 311
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 318
    :pswitch_1
    if-ge v4, v7, :cond_8

    .line 319
    add-int/lit8 v5, v4, 0x61

    int-to-char v0, v5

    goto :goto_1

    .line 321
    :cond_8
    if-ne v4, v7, :cond_9

    .line 322
    const/16 v0, 0x20

    goto :goto_1

    .line 323
    :cond_9
    if-ne v4, v11, :cond_a

    .line 325
    move-object v2, v3

    .line 326
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 327
    :cond_a
    const/16 v5, 0x1c

    if-ne v4, v5, :cond_b

    .line 328
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 329
    :cond_b
    if-ne v4, v8, :cond_c

    .line 331
    move-object v2, v3

    .line 332
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 333
    :cond_c
    if-ne v4, v10, :cond_d

    .line 334
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 335
    :cond_d
    if-ne v4, v9, :cond_0

    .line 336
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 343
    :pswitch_2
    const/16 v5, 0x19

    if-ge v4, v5, :cond_e

    .line 344
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v0, v5, v4

    goto :goto_1

    .line 346
    :cond_e
    const/16 v5, 0x19

    if-ne v4, v5, :cond_f

    .line 347
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 348
    :cond_f
    if-ne v4, v7, :cond_10

    .line 349
    const/16 v0, 0x20

    goto :goto_1

    .line 350
    :cond_10
    if-ne v4, v11, :cond_11

    .line 351
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 352
    :cond_11
    const/16 v5, 0x1c

    if-ne v4, v5, :cond_12

    .line 353
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_1

    .line 354
    :cond_12
    if-ne v4, v8, :cond_13

    .line 356
    move-object v2, v3

    .line 357
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 358
    :cond_13
    if-ne v4, v10, :cond_14

    .line 359
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 360
    :cond_14
    if-ne v4, v9, :cond_0

    .line 361
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 368
    :pswitch_3
    if-ge v4, v8, :cond_15

    .line 369
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v0, v5, v4

    goto/16 :goto_1

    .line 371
    :cond_15
    if-ne v4, v8, :cond_16

    .line 372
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 373
    :cond_16
    if-ne v4, v10, :cond_17

    .line 374
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 375
    :cond_17
    if-ne v4, v9, :cond_0

    .line 376
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 383
    :pswitch_4
    move-object v3, v2

    .line 384
    if-ge v4, v7, :cond_18

    .line 385
    add-int/lit8 v5, v4, 0x41

    int-to-char v0, v5

    goto/16 :goto_1

    .line 387
    :cond_18
    if-ne v4, v7, :cond_19

    .line 388
    const/16 v0, 0x20

    goto/16 :goto_1

    .line 389
    :cond_19
    if-ne v4, v9, :cond_0

    .line 390
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 397
    :pswitch_5
    move-object v3, v2

    .line 398
    if-ge v4, v8, :cond_1a

    .line 399
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v0, v5, v4

    goto/16 :goto_1

    .line 401
    :cond_1a
    if-ne v4, v8, :cond_1b

    .line 402
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 403
    :cond_1b
    if-ne v4, v10, :cond_1c

    .line 406
    aget v5, p1, v1

    int-to-char v5, v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 407
    :cond_1c
    if-ne v4, v9, :cond_0

    .line 408
    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_1

    .line 419
    .end local v0           #ch:C
    .end local v4           #subModeCh:I
    :cond_1d
    return-void

    .line 291
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuilder;)I
    .locals 9
    .parameter "codewords"
    .parameter "codeIndex"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x384

    const/4 v7, 0x0

    .line 532
    const/4 v2, 0x0

    .line 533
    .local v2, count:I
    const/4 v3, 0x0

    .line 535
    .local v3, end:Z
    const/16 v6, 0xf

    new-array v4, v6, [I

    .line 537
    .local v4, numericCodewords:[I
    :cond_0
    :goto_0
    aget v6, p0, v7

    if-ge p1, v6, :cond_5

    if-nez v3, :cond_5

    .line 538
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .local v1, codeIndex:I
    aget v0, p0, p1

    .line 539
    .local v0, code:I
    aget v6, p0, v7

    if-ne v1, v6, :cond_1

    .line 540
    const/4 v3, 0x1

    .line 542
    :cond_1
    if-ge v0, v8, :cond_3

    .line 543
    aput v0, v4, v2

    .line 544
    add-int/lit8 v2, v2, 0x1

    move p1, v1

    .line 556
    .end local v1           #codeIndex:I
    .restart local p1
    :goto_1
    rem-int/lit8 v6, v2, 0xf

    if-eqz v6, :cond_2

    const/16 v6, 0x386

    if-eq v0, v6, :cond_2

    if-eqz v3, :cond_0

    .line 563
    :cond_2
    invoke-static {v4, v2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v5

    .line 564
    .local v5, s:Ljava/lang/String;
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    const/4 v2, 0x0

    goto :goto_0

    .line 546
    .end local v5           #s:Ljava/lang/String;
    .end local p1
    .restart local v1       #codeIndex:I
    :cond_3
    if-eq v0, v8, :cond_4

    const/16 v6, 0x385

    if-eq v0, v6, :cond_4

    const/16 v6, 0x39c

    if-eq v0, v6, :cond_4

    const/16 v6, 0x3a0

    if-eq v0, v6, :cond_4

    const/16 v6, 0x39b

    if-eq v0, v6, :cond_4

    const/16 v6, 0x39a

    if-ne v0, v6, :cond_6

    .line 552
    :cond_4
    add-int/lit8 p1, v1, -0x1

    .line 553
    .end local v1           #codeIndex:I
    .restart local p1
    const/4 v3, 0x1

    goto :goto_1

    .line 568
    .end local v0           #code:I
    :cond_5
    return p1

    .end local p1
    .restart local v0       #code:I
    .restart local v1       #codeIndex:I
    :cond_6
    move p1, v1

    .end local v1           #codeIndex:I
    .restart local p1
    goto :goto_1
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .locals 11
    .parameter "codewords"
    .parameter "codeIndex"
    .parameter "result"

    .prologue
    const/16 v10, 0x384

    const/4 v9, 0x0

    .line 200
    aget v7, p0, v9

    sub-int/2addr v7, p1

    shl-int/lit8 v7, v7, 0x1

    new-array v6, v7, [I

    .line 202
    .local v6, textCompactionData:[I
    aget v7, p0, v9

    sub-int/2addr v7, p1

    shl-int/lit8 v7, v7, 0x1

    new-array v0, v7, [I

    .line 204
    .local v0, byteCompactionData:[I
    const/4 v4, 0x0

    .line 205
    .local v4, index:I
    const/4 v3, 0x0

    .line 206
    .local v3, end:Z
    :goto_0
    aget v7, p0, v9

    if-ge p1, v7, :cond_1

    if-nez v3, :cond_1

    .line 207
    add-int/lit8 v2, p1, 0x1

    .end local p1
    .local v2, codeIndex:I
    aget v1, p0, p1

    .line 208
    .local v1, code:I
    if-ge v1, v10, :cond_0

    .line 209
    div-int/lit8 v7, v1, 0x1e

    aput v7, v6, v4

    .line 210
    add-int/lit8 v7, v4, 0x1

    rem-int/lit8 v8, v1, 0x1e

    aput v8, v6, v7

    .line 211
    add-int/lit8 v4, v4, 0x2

    move p1, v2

    .end local v2           #codeIndex:I
    .restart local p1
    goto :goto_0

    .line 213
    .end local p1
    .restart local v2       #codeIndex:I
    :cond_0
    sparse-switch v1, :sswitch_data_0

    move p1, v2

    .end local v2           #codeIndex:I
    .restart local p1
    goto :goto_0

    .line 216
    .end local p1
    .restart local v2       #codeIndex:I
    :sswitch_0
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .local v5, index:I
    aput v10, v6, v4

    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    move p1, v2

    .line 217
    .end local v2           #codeIndex:I
    .restart local p1
    goto :goto_0

    .line 219
    .end local p1
    .restart local v2       #codeIndex:I
    :sswitch_1
    add-int/lit8 p1, v2, -0x1

    .line 220
    .end local v2           #codeIndex:I
    .restart local p1
    const/4 v3, 0x1

    .line 221
    goto :goto_0

    .line 223
    .end local p1
    .restart local v2       #codeIndex:I
    :sswitch_2
    add-int/lit8 p1, v2, -0x1

    .line 224
    .end local v2           #codeIndex:I
    .restart local p1
    const/4 v3, 0x1

    .line 225
    goto :goto_0

    .line 227
    .end local p1
    .restart local v2       #codeIndex:I
    :sswitch_3
    add-int/lit8 p1, v2, -0x1

    .line 228
    .end local v2           #codeIndex:I
    .restart local p1
    const/4 v3, 0x1

    .line 229
    goto :goto_0

    .line 231
    .end local p1
    .restart local v2       #codeIndex:I
    :sswitch_4
    add-int/lit8 p1, v2, -0x1

    .line 232
    .end local v2           #codeIndex:I
    .restart local p1
    const/4 v3, 0x1

    .line 233
    goto :goto_0

    .line 235
    .end local p1
    .restart local v2       #codeIndex:I
    :sswitch_5
    add-int/lit8 p1, v2, -0x1

    .line 236
    .end local v2           #codeIndex:I
    .restart local p1
    const/4 v3, 0x1

    .line 237
    goto :goto_0

    .line 245
    .end local p1
    .restart local v2       #codeIndex:I
    :sswitch_6
    const/16 v7, 0x391

    aput v7, v6, v4

    .line 246
    add-int/lit8 p1, v2, 0x1

    .end local v2           #codeIndex:I
    .restart local p1
    aget v1, p0, v2

    .line 247
    aput v1, v0, v4

    .line 248
    add-int/lit8 v4, v4, 0x1

    .line 249
    goto :goto_0

    .line 251
    .end local p1
    .restart local v2       #codeIndex:I
    :sswitch_7
    add-int/lit8 p1, v2, -0x1

    .line 252
    .end local v2           #codeIndex:I
    .restart local p1
    const/4 v3, 0x1

    goto :goto_0

    .line 257
    .end local v1           #code:I
    :cond_1
    invoke-static {v6, v0, v4, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V

    .line 258
    return p1

    .line 213
    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_2
        0x391 -> :sswitch_6
        0x39a -> :sswitch_5
        0x39b -> :sswitch_4
        0x39c -> :sswitch_7
        0x3a0 -> :sswitch_3
    .end sparse-switch
.end method
