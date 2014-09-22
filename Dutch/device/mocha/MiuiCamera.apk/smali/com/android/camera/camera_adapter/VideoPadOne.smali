.class public Lcom/android/camera/camera_adapter/VideoPadOne;
.super Lcom/android/camera/module/VideoModule;
.source "VideoPadOne.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultPreferenceId(I)I
    .locals 1
    .parameter "prefId"

    .prologue
    .line 18
    const v0, 0x7f0d0020

    if-ne p1, v0, :cond_0

    .line 19
    const v0, 0x7f0d0021

    .line 21
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/module/VideoModule;->getDefaultPreferenceId(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSupportedSettingKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .local v0, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    return-object v0
.end method
