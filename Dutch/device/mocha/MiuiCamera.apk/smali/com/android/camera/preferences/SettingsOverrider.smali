.class public Lcom/android/camera/preferences/SettingsOverrider;
.super Ljava/lang/Object;
.source "SettingsOverrider.java"


# instance fields
.field private mRestoredMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/preferences/SettingsOverrider;->mRestoredMap:Ljava/util/HashMap;

    .line 15
    return-void
.end method


# virtual methods
.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 8
    .parameter "keyvalues"

    .prologue
    .line 18
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v4

    .line 19
    .local v4, preferences:Lcom/android/camera/preferences/CameraSettingPreferences;
    invoke-virtual {v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 20
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v7, p0, Lcom/android/camera/preferences/SettingsOverrider;->mRestoredMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 21
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/preferences/SettingsOverrider;->mRestoredMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 22
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_1

    .line 23
    aget-object v2, p1, v1

    .line 24
    .local v2, key:Ljava/lang/String;
    add-int/lit8 v6, v1, 0x1

    aget-object v3, p1, v6

    .line 25
    .local v3, overrideValue:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 26
    .local v5, restoreValue:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/preferences/SettingsOverrider;->mRestoredMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    if-nez v3, :cond_0

    .line 28
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 22
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 30
    :cond_0
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 34
    .end local v1           #i:I
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #overrideValue:Ljava/lang/String;
    .end local v5           #restoreValue:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 33
    .restart local v1       #i:I
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 34
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    return-void
.end method

.method public restoreSettings()Z
    .locals 10

    .prologue
    .line 38
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v6

    .line 39
    .local v6, preferences:Lcom/android/camera/preferences/CameraSettingPreferences;
    invoke-virtual {v6}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 40
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v0, 0x0

    .line 41
    .local v0, change:Z
    iget-object v9, p0, Lcom/android/camera/preferences/SettingsOverrider;->mRestoredMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 42
    :try_start_0
    iget-object v8, p0, Lcom/android/camera/preferences/SettingsOverrider;->mRestoredMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 43
    .local v4, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 44
    .local v3, key:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v6, v3, v8}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 45
    .local v5, overrideValue:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/camera/preferences/SettingsOverrider;->mRestoredMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 46
    .local v7, restoreValue:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 47
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    if-eqz v5, :cond_0

    .line 49
    const/4 v0, 0x1

    goto :goto_0

    .line 52
    :cond_1
    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 54
    const/4 v0, 0x1

    goto :goto_0

    .line 58
    .end local v3           #key:Ljava/lang/String;
    .end local v5           #overrideValue:Ljava/lang/String;
    .end local v7           #restoreValue:Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/android/camera/preferences/SettingsOverrider;->mRestoredMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 59
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 61
    return v0

    .line 59
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method
