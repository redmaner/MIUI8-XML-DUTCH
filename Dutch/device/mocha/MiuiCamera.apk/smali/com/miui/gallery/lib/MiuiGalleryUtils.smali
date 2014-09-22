.class public Lcom/miui/gallery/lib/MiuiGalleryUtils;
.super Ljava/lang/Object;
.source "MiuiGalleryUtils.java"


# static fields
.field private static final ALBUM_SHARE_BARCODE_URLS:[Ljava/lang/String;

.field private static final ALBUM_SHARE_BARCODE_URL_PATTERNS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALBUM_SHARE_BARCODE_URL_STRICT_PATTERNS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALBUM_SHARE_INVITATION_URLS:[Ljava/lang/String;

.field private static final ALBUM_SHARE_INVITATION_URL_PATTERNS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALBUM_SHARE_INVITATION_URL_STRICT_PATTERNS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field public static SUPPORT_SHARE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 25
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_HK_BUILD:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_TW_BUILD:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/miui/gallery/lib/MiuiGalleryUtils;->SUPPORT_SHARE:Z

    .line 144
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "http://mij.cc/[a-z]+/[a-zA-Z0-9\\-_]{16}#a"

    aput-object v0, v3, v1

    const-string v0, "http://mi1.cc/[a-zA-Z0-9\\-_]{16}#a"

    aput-object v0, v3, v2

    const/4 v1, 0x2

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    sput-object v3, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_INVITATION_URLS:[Ljava/lang/String;

    .line 150
    sget-object v0, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_INVITATION_URLS:[Ljava/lang/String;

    sput-object v0, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_BARCODE_URLS:[Ljava/lang/String;

    .line 152
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_INVITATION_URL_PATTERNS:Ljava/util/ArrayList;

    .line 153
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_INVITATION_URL_STRICT_PATTERNS:Ljava/util/ArrayList;

    .line 154
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_BARCODE_URL_PATTERNS:Ljava/util/ArrayList;

    .line 155
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_BARCODE_URL_STRICT_PATTERNS:Ljava/util/ArrayList;

    .line 158
    sget-object v0, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_INVITATION_URLS:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_INVITATION_URL_PATTERNS:Ljava/util/ArrayList;

    sget-object v2, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_INVITATION_URL_STRICT_PATTERNS:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/lib/MiuiGalleryUtils;->initPatterns([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 159
    sget-object v0, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_BARCODE_URLS:[Ljava/lang/String;

    sget-object v1, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_BARCODE_URL_PATTERNS:Ljava/util/ArrayList;

    sget-object v2, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_BARCODE_URL_STRICT_PATTERNS:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/miui/gallery/lib/MiuiGalleryUtils;->initPatterns([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 160
    return-void

    :cond_1
    move v0, v1

    .line 25
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasMatch(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter "url"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, patterns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/regex/Pattern;>;"
    const/4 v2, 0x0

    .line 305
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v2

    .line 309
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    .line 310
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 311
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static initPatterns([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "strs"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, patterns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/regex/Pattern;>;"
    .local p2, strictPatterns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/regex/Pattern;>;"
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 164
    .local v3, p:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 165
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    const-string v4, "^%s$"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    .end local v3           #p:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static isAlbumShareBarcodeUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 291
    sget-boolean v0, Lcom/miui/gallery/lib/MiuiGalleryUtils;->SUPPORT_SHARE:Z

    if-nez v0, :cond_0

    .line 292
    const/4 v0, 0x0

    .line 294
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_BARCODE_URL_STRICT_PATTERNS:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/miui/gallery/lib/MiuiGalleryUtils;->hasMatch(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isAlbumShareInvitationUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 279
    sget-boolean v0, Lcom/miui/gallery/lib/MiuiGalleryUtils;->SUPPORT_SHARE:Z

    if-nez v0, :cond_0

    .line 280
    const/4 v0, 0x0

    .line 282
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/miui/gallery/lib/MiuiGalleryUtils;->ALBUM_SHARE_INVITATION_URL_STRICT_PATTERNS:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/miui/gallery/lib/MiuiGalleryUtils;->hasMatch(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isAlbumShareUrl(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 298
    sget-boolean v1, Lcom/miui/gallery/lib/MiuiGalleryUtils;->SUPPORT_SHARE:Z

    if-nez v1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/miui/gallery/lib/MiuiGalleryUtils;->isAlbumShareInvitationUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/miui/gallery/lib/MiuiGalleryUtils;->isAlbumShareBarcodeUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
