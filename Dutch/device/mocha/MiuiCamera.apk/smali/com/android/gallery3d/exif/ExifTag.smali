.class public Lcom/android/gallery3d/exif/ExifTag;
.super Ljava/lang/Object;
.source "ExifTag.java"


# static fields
.field private static final TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final TYPE_TO_SIZE_MAP:[I

.field private static US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mComponentCountActual:I

.field private final mDataType:S

.field private mHasDefinedDefaultComponentCount:Z

.field private mIfd:I

.field private mOffset:I

.field private final mTagId:S

.field private mValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 70
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    .line 71
    const/16 v0, 0xb

    new-array v0, v0, [I

    sput-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    .line 78
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v2, v0, v2

    .line 79
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v2, v0, v4

    .line 80
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x3

    aput v4, v0, v1

    .line 81
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aput v3, v0, v3

    .line 82
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x5

    aput v5, v0, v1

    .line 83
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 84
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/16 v1, 0x9

    aput v3, v0, v1

    .line 85
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/16 v1, 0xa

    aput v5, v0, v1

    .line 105
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/gallery3d/exif/ExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>(SSIIZ)V
    .locals 1
    .parameter "tagId"
    .parameter "type"
    .parameter "componentCount"
    .parameter "ifd"
    .parameter "hasDefinedComponentCount"

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-short p1, p0, Lcom/android/gallery3d/exif/ExifTag;->mTagId:S

    .line 130
    iput-short p2, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    .line 131
    iput p3, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    .line 132
    iput-boolean p5, p0, Lcom/android/gallery3d/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    .line 133
    iput p4, p0, Lcom/android/gallery3d/exif/ExifTag;->mIfd:I

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 135
    return-void
.end method

.method private checkBadComponentCount(I)Z
    .locals 1
    .parameter "count"

    .prologue
    .line 883
    iget-boolean v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    if-eq v0, p1, :cond_0

    .line 884
    const/4 v0, 0x1

    .line 886
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkOverflowForRational([Lcom/android/gallery3d/exif/Rational;)Z
    .locals 10
    .parameter "value"

    .prologue
    const-wide/32 v8, 0x7fffffff

    const-wide/32 v6, -0x80000000

    .line 951
    move-object v0, p1

    .local v0, arr$:[Lcom/android/gallery3d/exif/Rational;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 952
    .local v3, v:Lcom/android/gallery3d/exif/Rational;
    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-gtz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    .line 955
    :cond_0
    const/4 v4, 0x1

    .line 958
    .end local v3           #v:Lcom/android/gallery3d/exif/Rational;
    :goto_1
    return v4

    .line 951
    .restart local v3       #v:Lcom/android/gallery3d/exif/Rational;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 958
    .end local v3           #v:Lcom/android/gallery3d/exif/Rational;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private checkOverflowForUnsignedLong([I)Z
    .locals 5
    .parameter "value"

    .prologue
    .line 931
    move-object v0, p1

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 932
    .local v3, v:I
    if-gez v3, :cond_0

    .line 933
    const/4 v4, 0x1

    .line 936
    .end local v3           #v:I
    :goto_1
    return v4

    .line 931
    .restart local v3       #v:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 936
    .end local v3           #v:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private checkOverflowForUnsignedLong([J)Z
    .locals 7
    .parameter "value"

    .prologue
    .line 922
    move-object v0, p1

    .local v0, arr$:[J
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-wide v3, v0, v1

    .line 923
    .local v3, v:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_0

    const-wide v5, 0xffffffffL

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    .line 924
    :cond_0
    const/4 v5, 0x1

    .line 927
    .end local v3           #v:J
    :goto_1
    return v5

    .line 922
    .restart local v3       #v:J
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 927
    .end local v3           #v:J
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private checkOverflowForUnsignedRational([Lcom/android/gallery3d/exif/Rational;)Z
    .locals 10
    .parameter "value"

    .prologue
    const-wide v8, 0xffffffffL

    const-wide/16 v6, 0x0

    .line 940
    move-object v0, p1

    .local v0, arr$:[Lcom/android/gallery3d/exif/Rational;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 941
    .local v3, v:Lcom/android/gallery3d/exif/Rational;
    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->getNumerator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-gtz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    .line 944
    :cond_0
    const/4 v4, 0x1

    .line 947
    .end local v3           #v:Lcom/android/gallery3d/exif/Rational;
    :goto_1
    return v4

    .line 940
    .restart local v3       #v:Lcom/android/gallery3d/exif/Rational;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 947
    .end local v3           #v:Lcom/android/gallery3d/exif/Rational;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private checkOverflowForUnsignedShort([I)Z
    .locals 5
    .parameter "value"

    .prologue
    .line 913
    move-object v0, p1

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget v3, v0, v1

    .line 914
    .local v3, v:I
    const v4, 0xffff

    if-gt v3, v4, :cond_0

    if-gez v3, :cond_1

    .line 915
    :cond_0
    const/4 v4, 0x1

    .line 918
    .end local v3           #v:I
    :goto_1
    return v4

    .line 913
    .restart local v3       #v:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 918
    .end local v3           #v:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static convertTypeToString(S)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 890
    packed-switch p0, :pswitch_data_0

    .line 908
    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 892
    :pswitch_1
    const-string v0, "UNSIGNED_BYTE"

    goto :goto_0

    .line 894
    :pswitch_2
    const-string v0, "ASCII"

    goto :goto_0

    .line 896
    :pswitch_3
    const-string v0, "UNSIGNED_SHORT"

    goto :goto_0

    .line 898
    :pswitch_4
    const-string v0, "UNSIGNED_LONG"

    goto :goto_0

    .line 900
    :pswitch_5
    const-string v0, "UNSIGNED_RATIONAL"

    goto :goto_0

    .line 902
    :pswitch_6
    const-string v0, "UNDEFINED"

    goto :goto_0

    .line 904
    :pswitch_7
    const-string v0, "LONG"

    goto :goto_0

    .line 906
    :pswitch_8
    const-string v0, "RATIONAL"

    goto :goto_0

    .line 890
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getElementSize(S)I
    .locals 1
    .parameter "type"

    .prologue
    .line 150
    sget-object v0, Lcom/android/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aget v0, v0, p0

    return v0
.end method

.method public static isValidIfd(I)Z
    .locals 2
    .parameter "ifdId"

    .prologue
    const/4 v0, 0x1

    .line 111
    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidType(S)Z
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 120
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 963
    if-nez p1, :cond_1

    .line 998
    :cond_0
    :goto_0
    return v1

    .line 966
    :cond_1
    instance-of v2, p1, Lcom/android/gallery3d/exif/ExifTag;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 967
    check-cast v0, Lcom/android/gallery3d/exif/ExifTag;

    .line 968
    .local v0, tag:Lcom/android/gallery3d/exif/ExifTag;
    iget-short v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mTagId:S

    iget-short v3, p0, Lcom/android/gallery3d/exif/ExifTag;->mTagId:S

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    iget v3, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    if-ne v2, v3, :cond_0

    iget-short v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    iget-short v3, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v2, v3, :cond_0

    .line 973
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 974
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 976
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [J

    if-eqz v2, :cond_2

    .line 977
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [J

    if-eqz v2, :cond_0

    .line 980
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [J

    check-cast v2, [J

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    goto :goto_0

    .line 981
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [Lcom/android/gallery3d/exif/Rational;

    if-eqz v2, :cond_3

    .line 982
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [Lcom/android/gallery3d/exif/Rational;

    if-eqz v2, :cond_0

    .line 985
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Lcom/android/gallery3d/exif/Rational;

    check-cast v1, [Lcom/android/gallery3d/exif/Rational;

    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [Lcom/android/gallery3d/exif/Rational;

    check-cast v2, [Lcom/android/gallery3d/exif/Rational;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 986
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_4

    .line 987
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_0

    .line 990
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0

    .line 992
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0

    .line 995
    :cond_5
    iget-object v2, v0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public forceGetValueAsString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 748
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 749
    const-string v1, ""

    .line 774
    :goto_0
    return-object v1

    .line 750
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_2

    .line 751
    iget-short v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 752
    new-instance v2, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    sget-object v3, Lcom/android/gallery3d/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object v1, v2

    goto :goto_0

    .line 754
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 756
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_4

    .line 757
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    array-length v1, v1

    if-ne v1, v3, :cond_3

    .line 758
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    aget-wide v1, v1, v2

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 760
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [J

    check-cast v1, [J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 762
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 763
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    array-length v1, v1

    if-ne v1, v3, :cond_6

    .line 764
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    aget-object v0, v1, v2

    .line 765
    .local v0, val:Ljava/lang/Object;
    if-nez v0, :cond_5

    .line 766
    const-string v1, ""

    goto :goto_0

    .line 768
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 771
    .end local v0           #val:Ljava/lang/Object;
    :cond_6
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 774
    :cond_7
    iget-object v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected forceSetComponentCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 214
    iput p1, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    .line 215
    return-void
.end method

.method protected getBytes([B)V
    .locals 2
    .parameter "buf"

    .prologue
    .line 837
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/gallery3d/exif/ExifTag;->getBytes([BII)V

    .line 838
    return-void
.end method

.method protected getBytes([BII)V
    .locals 3
    .parameter "buf"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 851
    iget-short v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 852
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get BYTE value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    invoke-static {v2}, Lcom/android/gallery3d/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    if-le p3, v2, :cond_1

    iget p3, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    .end local p3
    :cond_1
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 857
    return-void
.end method

.method public getComponentCount()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    return v0
.end method

.method public getDataSize()I
    .locals 2

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifTag;->getDataType()S

    move-result v1

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifTag;->getElementSize(S)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getDataType()S
    .locals 1

    .prologue
    .line 190
    iget-short v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    return v0
.end method

.method public getIfd()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mIfd:I

    return v0
.end method

.method protected getOffset()I
    .locals 1

    .prologue
    .line 864
    iget v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mOffset:I

    return v0
.end method

.method protected getRational(I)Lcom/android/gallery3d/exif/Rational;
    .locals 3
    .parameter "index"

    .prologue
    .line 826
    iget-short v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 827
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get RATIONAL value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    invoke-static {v2}, Lcom/android/gallery3d/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Lcom/android/gallery3d/exif/Rational;

    check-cast v0, [Lcom/android/gallery3d/exif/Rational;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getStringByte()[B
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getTagId()S
    .locals 1

    .prologue
    .line 174
    iget-short v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mTagId:S

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method protected getValueAt(I)J
    .locals 3
    .parameter "index"

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    check-cast v0, [J

    aget-wide v0, v0, p1

    .line 792
    :goto_0
    return-wide v0

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_1

    .line 792
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    aget-byte v0, v0, p1

    int-to-long v0, v0

    goto :goto_0

    .line 794
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get integer value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    invoke-static {v2}, Lcom/android/gallery3d/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected hasDefinedCount()Z
    .locals 1

    .prologue
    .line 879
    iget-boolean v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setHasDefinedCount(Z)V
    .locals 0
    .parameter "d"

    .prologue
    .line 875
    iput-boolean p1, p0, Lcom/android/gallery3d/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    .line 876
    return-void
.end method

.method protected setIfd(I)V
    .locals 0
    .parameter "ifdId"

    .prologue
    .line 167
    iput p1, p0, Lcom/android/gallery3d/exif/ExifTag;->mIfd:I

    .line 168
    return-void
.end method

.method protected setOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 871
    iput p1, p0, Lcom/android/gallery3d/exif/ExifTag;->mOffset:I

    .line 872
    return-void
.end method

.method public setValue(I)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 271
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/exif/ExifTag;->setValue([I)Z

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/String;)Z
    .locals 8
    .parameter "value"

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 328
    iget-short v5, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-eq v5, v6, :cond_1

    iget-short v5, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-eq v5, v7, :cond_1

    .line 346
    :cond_0
    :goto_0
    return v3

    .line 332
    :cond_1
    sget-object v5, Lcom/android/gallery3d/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 333
    .local v0, buf:[B
    move-object v2, v0

    .line 334
    .local v2, finalBuf:[B
    array-length v5, v0

    if-lez v5, :cond_5

    .line 335
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v0, v5

    if-eqz v5, :cond_2

    iget-short v5, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v5, v7, :cond_4

    :cond_2
    move-object v2, v0

    .line 340
    :cond_3
    :goto_1
    array-length v1, v2

    .line 341
    .local v1, count:I
    invoke-direct {p0, v1}, Lcom/android/gallery3d/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 344
    iput v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    .line 345
    iput-object v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    move v3, v4

    .line 346
    goto :goto_0

    .line 335
    .end local v1           #count:I
    :cond_4
    array-length v5, v0

    add-int/lit8 v5, v5, 0x1

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    goto :goto_1

    .line 337
    :cond_5
    iget-short v5, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v5, v6, :cond_3

    iget v5, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    if-ne v5, v4, :cond_3

    .line 338
    new-array v2, v4, [B

    .end local v2           #finalBuf:[B
    aput-byte v3, v2, v3

    .restart local v2       #finalBuf:[B
    goto :goto_1
.end method

.method public setValue([B)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 428
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/gallery3d/exif/ExifTag;->setValue([BII)Z

    move-result v0

    return v0
.end method

.method public setValue([BII)Z
    .locals 4
    .parameter "value"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 412
    invoke-direct {p0, p3}, Lcom/android/gallery3d/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 421
    :cond_0
    :goto_0
    return v0

    .line 415
    :cond_1
    iget-short v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-eq v2, v1, :cond_2

    iget-short v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 418
    :cond_2
    new-array v2, p3, [B

    iput-object v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 419
    iget-object v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    iput p3, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    move v0, v1

    .line 421
    goto :goto_0
.end method

.method public setValue([I)Z
    .locals 7
    .parameter "value"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 237
    array-length v3, p1

    invoke-direct {p0, v3}, Lcom/android/gallery3d/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v2

    .line 240
    :cond_1
    iget-short v3, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-eq v3, v5, :cond_2

    iget-short v3, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    iget-short v3, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v3, v6, :cond_0

    .line 244
    :cond_2
    iget-short v3, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v3, v5, :cond_3

    invoke-direct {p0, p1}, Lcom/android/gallery3d/exif/ExifTag;->checkOverflowForUnsignedShort([I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 246
    :cond_3
    iget-short v3, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v3, v6, :cond_4

    invoke-direct {p0, p1}, Lcom/android/gallery3d/exif/ExifTag;->checkOverflowForUnsignedLong([I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 250
    :cond_4
    array-length v2, p1

    new-array v0, v2, [J

    .line 251
    .local v0, data:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_5

    .line 252
    aget v2, p1, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 254
    :cond_5
    iput-object v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 255
    array-length v2, p1

    iput v2, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    .line 256
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setValue([J)Z
    .locals 3
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 287
    array-length v1, p1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-short v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v0

    .line 290
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/gallery3d/exif/ExifTag;->checkOverflowForUnsignedLong([J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 294
    array-length v0, p1

    iput v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    .line 295
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setValue([Lcom/android/gallery3d/exif/Rational;)Z
    .locals 4
    .parameter "value"

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x5

    const/4 v0, 0x0

    .line 364
    array-length v1, p1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 378
    :cond_0
    :goto_0
    return v0

    .line 367
    :cond_1
    iget-short v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-eq v1, v2, :cond_2

    iget-short v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v1, v3, :cond_0

    .line 370
    :cond_2
    iget-short v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v1, v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/gallery3d/exif/ExifTag;->checkOverflowForUnsignedRational([Lcom/android/gallery3d/exif/Rational;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    :cond_3
    iget-short v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v1, v3, :cond_4

    invoke-direct {p0, p1}, Lcom/android/gallery3d/exif/ExifTag;->checkOverflowForRational([Lcom/android/gallery3d/exif/Rational;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 376
    :cond_4
    iput-object p1, p0, Lcom/android/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    .line 377
    array-length v0, p1

    iput v0, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    .line 378
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tag id: %04X\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-short v4, p0, Lcom/android/gallery3d/exif/ExifTag;->mTagId:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ifd id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mIfd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ntype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mDataType:S

    invoke-static {v1}, Lcom/android/gallery3d/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ncount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mComponentCountActual:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\noffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/exif/ExifTag;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nvalue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/ExifTag;->forceGetValueAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
