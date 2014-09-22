.class public Lcom/android/camera/preferences/IconListPreference;
.super Lcom/android/camera/preferences/ListPreference;
.source "IconListPreference.java"


# instance fields
.field private mIconIds:[I

.field private mImageIds:[I

.field private mLargeIconIds:[I

.field private mSingleIconId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/camera/preferences/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    sget-object v2, Lcom/android/camera/R$styleable;->IconListPreference:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 41
    .local v1, res:Landroid/content/res/Resources;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/preferences/IconListPreference;->mSingleIconId:I

    .line 43
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/preferences/IconListPreference;->getIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/preferences/IconListPreference;->mIconIds:[I

    .line 45
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/preferences/IconListPreference;->getIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/preferences/IconListPreference;->mLargeIconIds:[I

    .line 47
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/preferences/IconListPreference;->getIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/preferences/IconListPreference;->mImageIds:[I

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    return-void
.end method

.method private getIds(Landroid/content/res/Resources;I)[I
    .locals 5
    .parameter "res"
    .parameter "iconsRes"

    .prologue
    .line 81
    if-nez p2, :cond_0

    const/4 v2, 0x0

    .line 89
    :goto_0
    return-object v2

    .line 82
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    .line 84
    .local v3, n:I
    new-array v2, v3, [I

    .line 85
    .local v2, ids:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 86
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v2, v1

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public filterUnsupported(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 95
    .local v0, entryValues:[Ljava/lang/CharSequence;
    new-instance v2, Lcom/android/camera/IntArray;

    invoke-direct {v2}, Lcom/android/camera/IntArray;-><init>()V

    .line 96
    .local v2, iconIds:Lcom/android/camera/IntArray;
    new-instance v4, Lcom/android/camera/IntArray;

    invoke-direct {v4}, Lcom/android/camera/IntArray;-><init>()V

    .line 97
    .local v4, largeIconIds:Lcom/android/camera/IntArray;
    new-instance v3, Lcom/android/camera/IntArray;

    invoke-direct {v3}, Lcom/android/camera/IntArray;-><init>()V

    .line 99
    .local v3, imageIds:Lcom/android/camera/IntArray;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v5, v0

    .local v5, len:I
    :goto_0
    if-ge v1, v5, :cond_3

    .line 100
    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_2

    .line 101
    iget-object v6, p0, Lcom/android/camera/preferences/IconListPreference;->mIconIds:[I

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/preferences/IconListPreference;->mIconIds:[I

    aget v6, v6, v1

    invoke-virtual {v2, v6}, Lcom/android/camera/IntArray;->add(I)V

    .line 102
    :cond_0
    iget-object v6, p0, Lcom/android/camera/preferences/IconListPreference;->mLargeIconIds:[I

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/preferences/IconListPreference;->mLargeIconIds:[I

    aget v6, v6, v1

    invoke-virtual {v4, v6}, Lcom/android/camera/IntArray;->add(I)V

    .line 103
    :cond_1
    iget-object v6, p0, Lcom/android/camera/preferences/IconListPreference;->mImageIds:[I

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/preferences/IconListPreference;->mImageIds:[I

    aget v6, v6, v1

    invoke-virtual {v3, v6}, Lcom/android/camera/IntArray;->add(I)V

    .line 99
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_3
    iget-object v6, p0, Lcom/android/camera/preferences/IconListPreference;->mIconIds:[I

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Lcom/android/camera/IntArray;->size()I

    move-result v6

    new-array v6, v6, [I

    invoke-virtual {v2, v6}, Lcom/android/camera/IntArray;->toArray([I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/preferences/IconListPreference;->mIconIds:[I

    .line 107
    :cond_4
    iget-object v6, p0, Lcom/android/camera/preferences/IconListPreference;->mLargeIconIds:[I

    if-eqz v6, :cond_5

    .line 108
    invoke-virtual {v4}, Lcom/android/camera/IntArray;->size()I

    move-result v6

    new-array v6, v6, [I

    invoke-virtual {v4, v6}, Lcom/android/camera/IntArray;->toArray([I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/preferences/IconListPreference;->mLargeIconIds:[I

    .line 110
    :cond_5
    iget-object v6, p0, Lcom/android/camera/preferences/IconListPreference;->mImageIds:[I

    if-eqz v6, :cond_6

    invoke-virtual {v3}, Lcom/android/camera/IntArray;->size()I

    move-result v6

    new-array v6, v6, [I

    invoke-virtual {v3, v6}, Lcom/android/camera/IntArray;->toArray([I)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/preferences/IconListPreference;->mImageIds:[I

    .line 111
    :cond_6
    invoke-super {p0, p1}, Lcom/android/camera/preferences/ListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 112
    return-void
.end method

.method public getIconIds()[I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/preferences/IconListPreference;->mIconIds:[I

    return-object v0
.end method

.method public getSingleIcon()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/android/camera/preferences/IconListPreference;->mSingleIconId:I

    return v0
.end method
