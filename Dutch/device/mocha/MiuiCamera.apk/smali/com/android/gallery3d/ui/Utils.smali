.class public Lcom/android/gallery3d/ui/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final IS_DEBUG_BUILD:Z

.field private static sCrcTable:[J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0x100

    const/4 v7, 0x1

    .line 38
    new-array v6, v10, [J

    sput-object v6, Lcom/android/gallery3d/ui/Utils;->sCrcTable:[J

    .line 40
    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v8, "eng"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v8, "userdebug"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v6, v7

    :goto_0
    sput-boolean v6, Lcom/android/gallery3d/ui/Utils;->IS_DEBUG_BUILD:Z

    .line 144
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v10, :cond_4

    .line 145
    int-to-long v2, v0

    .line 146
    .local v2, part:J
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    const/16 v6, 0x8

    if-ge v1, v6, :cond_3

    .line 147
    long-to-int v6, v2

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    const-wide v4, -0x6a536cd653b4364bL

    .line 148
    .local v4, x:J
    :goto_3
    shr-long v8, v2, v7

    xor-long v2, v8, v4

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 40
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v2           #part:J
    .end local v4           #x:J
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 147
    .restart local v0       #i:I
    .restart local v1       #j:I
    .restart local v2       #part:J
    :cond_2
    const-wide/16 v4, 0x0

    goto :goto_3

    .line 150
    :cond_3
    sget-object v6, Lcom/android/gallery3d/ui/Utils;->sCrcTable:[J

    aput-wide v2, v6, v0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    .end local v1           #j:I
    .end local v2           #part:J
    :cond_4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertTrue(Z)V
    .locals 1
    .parameter "cond"

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_0
    return-void
.end method

.method public static nextPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 79
    if-lez p0, :cond_0

    const/high16 v0, 0x4000

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 80
    :cond_1
    add-int/lit8 p0, p0, -0x1

    .line 81
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 82
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 83
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 84
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 85
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 86
    add-int/lit8 v0, p0, 0x1

    return v0
.end method
