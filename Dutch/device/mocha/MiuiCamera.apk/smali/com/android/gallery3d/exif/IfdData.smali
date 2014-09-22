.class Lcom/android/gallery3d/exif/IfdData;
.super Ljava/lang/Object;
.source "IfdData.java"


# static fields
.field private static final sIfds:[I


# instance fields
.field private final mExifTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Short;",
            "Lcom/android/gallery3d/exif/ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private final mIfdId:I

.field private mOffsetToNextIfd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/gallery3d/exif/IfdData;->sIfds:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(I)V
    .locals 1
    .parameter "ifdId"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/exif/IfdData;->mOffsetToNextIfd:I

    .line 47
    iput p1, p0, Lcom/android/gallery3d/exif/IfdData;->mIfdId:I

    .line 48
    return-void
.end method

.method protected static getIfds()[I
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/gallery3d/exif/IfdData;->sIfds:[I

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .parameter "obj"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 128
    if-ne p0, p1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v7

    .line 131
    :cond_1
    if-nez p1, :cond_2

    move v7, v8

    .line 132
    goto :goto_0

    .line 134
    :cond_2
    instance-of v9, p1, Lcom/android/gallery3d/exif/IfdData;

    if-eqz v9, :cond_5

    move-object v1, p1

    .line 135
    check-cast v1, Lcom/android/gallery3d/exif/IfdData;

    .line 136
    .local v1, data:Lcom/android/gallery3d/exif/IfdData;
    invoke-virtual {v1}, Lcom/android/gallery3d/exif/IfdData;->getId()I

    move-result v9

    iget v10, p0, Lcom/android/gallery3d/exif/IfdData;->mIfdId:I

    if-ne v9, v10, :cond_5

    invoke-virtual {v1}, Lcom/android/gallery3d/exif/IfdData;->getTagCount()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/gallery3d/exif/IfdData;->getTagCount()I

    move-result v10

    if-ne v9, v10, :cond_5

    .line 137
    invoke-virtual {v1}, Lcom/android/gallery3d/exif/IfdData;->getAllTags()[Lcom/android/gallery3d/exif/ExifTag;

    move-result-object v6

    .line 138
    .local v6, tags:[Lcom/android/gallery3d/exif/ExifTag;
    move-object v0, v6

    .local v0, arr$:[Lcom/android/gallery3d/exif/ExifTag;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 139
    .local v4, tag:Lcom/android/gallery3d/exif/ExifTag;
    invoke-virtual {v4}, Lcom/android/gallery3d/exif/ExifTag;->getTagId()S

    move-result v9

    invoke-static {v9}, Lcom/android/gallery3d/exif/ExifInterface;->isOffsetTag(S)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 138
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 142
    :cond_4
    iget-object v9, p0, Lcom/android/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/android/gallery3d/exif/ExifTag;->getTagId()S

    move-result v10

    invoke-static {v10}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/exif/ExifTag;

    .line 143
    .local v5, tag2:Lcom/android/gallery3d/exif/ExifTag;
    invoke-virtual {v4, v5}, Lcom/android/gallery3d/exif/ExifTag;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    move v7, v8

    .line 144
    goto :goto_0

    .end local v0           #arr$:[Lcom/android/gallery3d/exif/ExifTag;
    .end local v1           #data:Lcom/android/gallery3d/exif/IfdData;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #tag:Lcom/android/gallery3d/exif/ExifTag;
    .end local v5           #tag2:Lcom/android/gallery3d/exif/ExifTag;
    .end local v6           #tags:[Lcom/android/gallery3d/exif/ExifTag;
    :cond_5
    move v7, v8

    .line 150
    goto :goto_0
.end method

.method protected getAllTags()[Lcom/android/gallery3d/exif/ExifTag;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/gallery3d/exif/ExifTag;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/exif/ExifTag;

    return-object v0
.end method

.method protected getId()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/gallery3d/exif/IfdData;->mIfdId:I

    return v0
.end method

.method protected getOffsetToNextIfd()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/android/gallery3d/exif/IfdData;->mOffsetToNextIfd:I

    return v0
.end method

.method protected getTag(S)Lcom/android/gallery3d/exif/ExifTag;
    .locals 2
    .parameter "tagId"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/exif/ExifTag;

    return-object v0
.end method

.method protected getTagCount()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method protected removeTag(S)V
    .locals 2
    .parameter "tagId"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method protected setOffsetToNextIfd(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 112
    iput p1, p0, Lcom/android/gallery3d/exif/IfdData;->mOffsetToNextIfd:I

    .line 113
    return-void
.end method

.method protected setTag(Lcom/android/gallery3d/exif/ExifTag;)Lcom/android/gallery3d/exif/ExifTag;
    .locals 2
    .parameter "tag"

    .prologue
    .line 86
    iget v0, p0, Lcom/android/gallery3d/exif/IfdData;->mIfdId:I

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/exif/ExifTag;->setIfd(I)V

    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/exif/IfdData;->mExifTags:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/gallery3d/exif/ExifTag;->getTagId()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/exif/ExifTag;

    return-object v0
.end method
