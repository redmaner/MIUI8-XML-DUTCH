.class public Lcom/android/camera/MutexModeManager;
.super Ljava/lang/Object;
.source "MutexModeManager.java"


# instance fields
.field private mCurrentMutexMode:I

.field private mRunnableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    .line 24
    iput-object p1, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    .line 25
    return-void
.end method

.method private enter(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 123
    iput p1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    .line 124
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 126
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;"
    if-eqz v1, :cond_0

    .line 127
    const-string v2, "enter"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 128
    .local v0, enter:Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 131
    .end local v0           #enter:Ljava/lang/Runnable;
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;"
    :cond_0
    return-void
.end method

.method private exit(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 112
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    .line 113
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 115
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;"
    if-eqz v1, :cond_0

    .line 116
    const-string v2, "exit"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 117
    .local v0, exit:Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 120
    .end local v0           #exit:Ljava/lang/Runnable;
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;"
    :cond_0
    return-void
.end method

.method public static getMutexModeName(I)Ljava/lang/String;
    .locals 1
    .parameter "mode"

    .prologue
    .line 97
    packed-switch p0, :pswitch_data_0

    .line 107
    const-string v0, "none"

    :goto_0
    return-object v0

    .line 99
    :pswitch_0
    const-string v0, "hdr"

    goto :goto_0

    .line 101
    :pswitch_1
    const-string v0, "aohdr"

    goto :goto_0

    .line 103
    :pswitch_2
    const-string v0, "hand-night"

    goto :goto_0

    .line 105
    :pswitch_3
    const-string v0, "raw"

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private switchMutexMode(II)V
    .locals 0
    .parameter "from"
    .parameter "to"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/camera/MutexModeManager;->exit(I)V

    .line 135
    invoke-direct {p0, p2}, Lcom/android/camera/MutexModeManager;->enter(I)V

    .line 136
    return-void
.end method


# virtual methods
.method public getMutexMode()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    return v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    packed-switch v0, :pswitch_data_0

    .line 92
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 83
    :pswitch_0
    const-string v0, "_AO_HDR"

    goto :goto_0

    .line 86
    :pswitch_1
    const-string v0, "_HDR"

    goto :goto_0

    .line 88
    :pswitch_2
    const-string v0, "_HHT"

    goto :goto_0

    .line 90
    :pswitch_3
    const-string v0, "_RAW"

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public isAoHdr()Z
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHandNight()Z
    .locals 2

    .prologue
    .line 77
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMTKHdr()Z
    .locals 2

    .prologue
    .line 64
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMorphoHdr()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 56
    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedComposed()Z
    .locals 2

    .prologue
    .line 72
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNormal()Z
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRAW()Z
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportedFlashOn()Z
    .locals 2

    .prologue
    .line 44
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetMutexMode()V
    .locals 2

    .prologue
    .line 34
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz v0, :cond_0

    .line 35
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/MutexModeManager;->switchMutexMode(II)V

    .line 37
    :cond_0
    return-void
.end method
