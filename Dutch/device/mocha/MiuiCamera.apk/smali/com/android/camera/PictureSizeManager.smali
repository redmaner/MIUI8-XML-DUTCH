.class public Lcom/android/camera/PictureSizeManager;
.super Ljava/lang/Object;
.source "PictureSizeManager.java"


# static fields
.field private static final sDefaultValue:Ljava/lang/String;

.field private static final sEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sEntryValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPictureList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/PictureSize;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/PictureSizeManager;->sEntries:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    .line 15
    sget-boolean v0, Lcom/android/camera/Device;->IS_TABLET:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    const-string v1, "4x3"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    sput-object v0, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    .line 18
    sget-object v0, Lcom/android/camera/PictureSizeManager;->sEntries:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/String;

    const v2, 0x7f0d003d

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    const-string v1, "4x3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lcom/android/camera/PictureSizeManager;->sEntries:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/String;

    const v2, 0x7f0d003e

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    const-string v1, "16x9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "16x9"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/PictureSize;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, supported:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/PictureSize;>;"
    const/4 v2, 0x0

    .line 123
    .local v2, maxWidth:I
    const/4 v1, 0x0

    .line 124
    .local v1, maxHeight:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/PictureSize;

    .line 125
    .local v3, size:Lcom/android/camera/PictureSize;
    iget v4, v3, Lcom/android/camera/PictureSize;->width:I

    iget v5, v3, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    iget v4, v3, Lcom/android/camera/PictureSize;->width:I

    iget v5, v3, Lcom/android/camera/PictureSize;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v2, v1

    if-le v4, v5, :cond_0

    .line 127
    iget v2, v3, Lcom/android/camera/PictureSize;->width:I

    .line 128
    iget v1, v3, Lcom/android/camera/PictureSize;->height:I

    goto :goto_0

    .line 132
    .end local v3           #size:Lcom/android/camera/PictureSize;
    :cond_1
    if-eqz v2, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v2, v1}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method public static _findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/PictureSize;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, supported:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/PictureSize;>;"
    const/4 v2, 0x0

    .line 109
    .local v2, maxWidth:I
    const/4 v1, 0x0

    .line 110
    .local v1, maxHeight:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/PictureSize;

    .line 111
    .local v3, size:Lcom/android/camera/PictureSize;
    iget v4, v3, Lcom/android/camera/PictureSize;->width:I

    iget v5, v3, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 112
    iget v4, v3, Lcom/android/camera/PictureSize;->width:I

    iget v5, v3, Lcom/android/camera/PictureSize;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v2, v1

    if-le v4, v5, :cond_0

    .line 113
    iget v2, v3, Lcom/android/camera/PictureSize;->width:I

    .line 114
    iget v1, v3, Lcom/android/camera/PictureSize;->height:I

    goto :goto_0

    .line 118
    .end local v3           #size:Lcom/android/camera/PictureSize;
    :cond_1
    if-eqz v2, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v2, v1}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method public static findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v2, 0x0

    .line 151
    .local v2, maxWidth:I
    const/4 v1, 0x0

    .line 152
    .local v1, maxHeight:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 153
    .local v3, size:Landroid/hardware/Camera$Size;
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v2, v1

    if-le v4, v5, :cond_0

    .line 155
    iget v2, v3, Landroid/hardware/Camera$Size;->width:I

    .line 156
    iget v1, v3, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0

    .line 160
    .end local v3           #size:Landroid/hardware/Camera$Size;
    :cond_1
    if-eqz v2, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v2, v1}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method private static findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v2, 0x0

    .line 137
    .local v2, maxWidth:I
    const/4 v1, 0x0

    .line 138
    .local v1, maxHeight:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 139
    .local v3, size:Landroid/hardware/Camera$Size;
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v2, v1

    if-le v4, v5, :cond_0

    .line 141
    iget v2, v3, Landroid/hardware/Camera$Size;->width:I

    .line 142
    iget v1, v3, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0

    .line 146
    .end local v3           #size:Landroid/hardware/Camera$Size;
    :cond_1
    if-eqz v2, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v2, v1}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method public static getBestPictureSize()Lcom/android/camera/PictureSize;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 60
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getPictureSize()Lcom/android/camera/PictureSize;

    move-result-object v0

    .line 61
    .local v0, candidate:Lcom/android/camera/PictureSize;
    const/4 v1, 0x0

    .line 62
    .local v1, desire:Lcom/android/camera/PictureSize;
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isAspectRatio16_9()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v1

    .line 68
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/PictureSize;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    :cond_1
    new-instance v1, Lcom/android/camera/PictureSize;

    .end local v1           #desire:Lcom/android/camera/PictureSize;
    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    iget v3, v2, Lcom/android/camera/PictureSize;->width:I

    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    iget v2, v2, Lcom/android/camera/PictureSize;->height:I

    invoke-direct {v1, v3, v2}, Lcom/android/camera/PictureSize;-><init>(II)V

    .line 73
    .restart local v1       #desire:Lcom/android/camera/PictureSize;
    :cond_2
    return-object v1

    .line 64
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isAspectRatio4_3()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDefauleValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public static getEntries()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 28
    .local v0, result:[Ljava/lang/String;
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 29
    return-object v0
.end method

.method public static getEntryValues()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 34
    .local v0, result:[Ljava/lang/String;
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 35
    return-object v0
.end method

.method public static getPictureSize()Lcom/android/camera/PictureSize;
    .locals 4

    .prologue
    .line 51
    new-instance v0, Lcom/android/camera/PictureSize;

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    const-string v2, "pref_camera_picturesize_key"

    sget-object v3, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/PictureSize;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static initialize(Lcom/android/camera/ActivityBase;Ljava/util/List;I)V
    .locals 7
    .parameter "mActivity"
    .parameter
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ActivityBase;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    sget-object v5, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 78
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 79
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The supported picture size list return from hal is null!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 82
    :cond_1
    if-eqz p2, :cond_4

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Size;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 85
    .local v2, size:Landroid/hardware/Camera$Size;
    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v5, v6

    if-gt v5, p2, :cond_2

    .line 86
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    .end local v2           #size:Landroid/hardware/Camera$Size;
    :cond_3
    move-object p1, v1

    .line 92
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Size;>;"
    :cond_4
    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v4

    .line 93
    .local v4, size4_3:Lcom/android/camera/PictureSize;
    if-eqz v4, :cond_5

    .line 94
    sget-object v5, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_5
    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v3

    .line 98
    .local v3, size16_9:Lcom/android/camera/PictureSize;
    if-eqz v3, :cond_6

    .line 99
    sget-object v5, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_6
    sget-object v5, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_7

    .line 103
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Not find the desire picture sizes!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 105
    :cond_7
    return-void
.end method
