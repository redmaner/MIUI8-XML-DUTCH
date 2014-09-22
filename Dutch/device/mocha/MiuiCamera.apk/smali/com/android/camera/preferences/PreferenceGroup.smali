.class public Lcom/android/camera/preferences/PreferenceGroup;
.super Lcom/android/camera/preferences/CameraPreference;
.source "PreferenceGroup.java"


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/preferences/CameraPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/camera/preferences/CameraPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/preferences/PreferenceGroup;->list:Ljava/util/ArrayList;

    .line 35
    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/camera/preferences/CameraPreference;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;
    .locals 4
    .parameter "key"

    .prologue
    .line 61
    iget-object v3, p0, Lcom/android/camera/preferences/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/preferences/CameraPreference;

    .line 62
    .local v2, pref:Lcom/android/camera/preferences/CameraPreference;
    instance-of v3, v2, Lcom/android/camera/preferences/ListPreference;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 63
    check-cast v1, Lcom/android/camera/preferences/ListPreference;

    .line 64
    .local v1, listPref:Lcom/android/camera/preferences/ListPreference;
    invoke-virtual {v1}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    .end local v1           #listPref:Lcom/android/camera/preferences/ListPreference;
    .end local v2           #pref:Lcom/android/camera/preferences/CameraPreference;
    :goto_0
    return-object v1

    .line 65
    .restart local v2       #pref:Lcom/android/camera/preferences/CameraPreference;
    :cond_1
    instance-of v3, v2, Lcom/android/camera/preferences/PreferenceGroup;

    if-eqz v3, :cond_0

    .line 66
    check-cast v2, Lcom/android/camera/preferences/PreferenceGroup;

    .end local v2           #pref:Lcom/android/camera/preferences/CameraPreference;
    invoke-virtual {v2, p1}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v1

    .line 68
    .restart local v1       #listPref:Lcom/android/camera/preferences/ListPreference;
    if-eqz v1, :cond_0

    goto :goto_0

    .line 71
    .end local v1           #listPref:Lcom/android/camera/preferences/ListPreference;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get(I)Lcom/android/camera/preferences/CameraPreference;
    .locals 1
    .parameter "index"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/preferences/CameraPreference;

    return-object v0
.end method

.method public removePreference(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/preferences/PreferenceGroup;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
