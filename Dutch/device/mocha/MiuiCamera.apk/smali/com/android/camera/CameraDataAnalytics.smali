.class public Lcom/android/camera/CameraDataAnalytics;
.super Ljava/lang/Object;
.source "CameraDataAnalytics.java"


# static fields
.field private static final PREFERENCE_FILE_PATH:Ljava/lang/String;

.field private static sAnalytics:Lcom/android/camera/CameraDataAnalytics;

.field private static final sTrackEventMap:Ljava/util/HashMap;
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


# instance fields
.field private mAnalytics:Lmiui/analytics/Analytics;

.field private mPreference:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_data_analytics"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraDataAnalytics;->PREFERENCE_FILE_PATH:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    .line 45
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_layout_mode_key"

    const-string v2, "\u7b80\u5355\u6a21\u5f0f\u5f00\u542f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "camera_picture_taken_key"

    const-string v2, "\u62cd\u7167\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "video_recorded_key"

    const-string v2, "\u5f55\u50cf\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_panoramamode_key"

    const-string v2, "\u5168\u666f\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_ae_bracket_hdr_key"

    const-string v2, "HDR\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_hand_night_key"

    const-string v2, "\u591c\u666f\u9632\u6296\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_audio_capture"

    const-string v2, "\u58f0\u5361\u63a7\u5feb\u95e8\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_whitebalance_key"

    const-string v2, "\u767d\u5e73\u8861\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_coloreffect_key"

    const-string v2, "\u6ee4\u955c\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_qc_camera_iso_key"

    const-string v2, "ISO\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_exposure_key"

    const-string v2, "\u66dd\u5149\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_camera_referenceline_key"

    const-string v2, "\u8f85\u52a9\u7ebf\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "pref_settings"

    const-string v2, "\u8bbe\u7f6e\u70b9\u51fb\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "open_camera_times_key"

    const-string v2, "\u76f8\u673a\u5f00\u542f\u6301\u7eed\u65f6\u95f4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    const-string v1, "open_camera_fail_key"

    const-string v2, "\u76f8\u673a\u65e0\u6cd5\u8fde\u63a5\u6b21\u6570"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {}, Lmiui/analytics/Analytics;->getInstance()Lmiui/analytics/Analytics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraDataAnalytics;->mAnalytics:Lmiui/analytics/Analytics;

    .line 74
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraDataAnalytics;->PREFERENCE_FILE_PATH:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    .line 76
    return-void
.end method

.method public static instance()Lcom/android/camera/CameraDataAnalytics;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sAnalytics:Lcom/android/camera/CameraDataAnalytics;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/android/camera/CameraDataAnalytics;

    invoke-direct {v0}, Lcom/android/camera/CameraDataAnalytics;-><init>()V

    sput-object v0, Lcom/android/camera/CameraDataAnalytics;->sAnalytics:Lcom/android/camera/CameraDataAnalytics;

    .line 68
    :cond_0
    sget-object v0, Lcom/android/camera/CameraDataAnalytics;->sAnalytics:Lcom/android/camera/CameraDataAnalytics;

    return-object v0
.end method


# virtual methods
.method public trackEvent(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 117
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    .line 118
    return-void
.end method

.method public trackEvent(Ljava/lang/String;J)V
    .locals 7
    .parameter "key"
    .parameter "newValue"

    .prologue
    .line 134
    if-nez p1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    sget-object v4, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 136
    .local v3, trackEvent:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 137
    iget-object v4, p0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 138
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    const-wide/16 v5, 0x0

    invoke-interface {v4, p1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 139
    .local v1, oldValue:J
    const-string v4, "pref_layout_mode_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 140
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 144
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 142
    :cond_2
    add-long v4, p2, v1

    invoke-interface {v0, p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public trackEventTime(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;J)V

    .line 122
    return-void
.end method

.method public uploadToServer()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 79
    iget-object v10, p0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    const-string v11, "open_camera_times_key"

    invoke-interface {v10, v11, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 80
    .local v6, startTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v4, v10, v6

    .line 81
    .local v4, lastTime:J
    const-wide/32 v10, 0x5265c00

    cmp-long v10, v4, v10

    if-gtz v10, :cond_0

    const-wide/16 v10, 0x7d0

    cmp-long v10, v4, v10

    if-gez v10, :cond_1

    .line 82
    :cond_0
    iget-object v10, p0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 83
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 114
    :goto_0
    return-void

    .line 88
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v10, p0, Lcom/android/camera/CameraDataAnalytics;->mAnalytics:Lmiui/analytics/Analytics;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11}, Lmiui/analytics/Analytics;->startSession(Landroid/content/Context;)V

    .line 89
    sget-object v10, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 90
    .local v3, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 91
    .local v2, key:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v10, v2, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 92
    .local v8, value:J
    const-string v10, "pref_layout_mode_key"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 93
    cmp-long v10, v8, v12

    if-nez v10, :cond_3

    .line 94
    iget-object v10, p0, Lcom/android/camera/CameraDataAnalytics;->mAnalytics:Lmiui/analytics/Analytics;

    const-string v11, "\u7b80\u5355\u6a21\u5f0f\u5f00\u542f"

    invoke-virtual {v10, v11}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :cond_3
    iget-object v10, p0, Lcom/android/camera/CameraDataAnalytics;->mAnalytics:Lmiui/analytics/Analytics;

    const-string v11, "\u4e13\u5bb6\u6a21\u5f0f\u5f00\u542f"

    invoke-virtual {v10, v11}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;)V

    goto :goto_1

    .line 99
    :cond_4
    cmp-long v10, v8, v12

    if-eqz v10, :cond_2

    .line 100
    const-string v10, "open_camera_times_key"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 102
    iget-object v11, p0, Lcom/android/camera/CameraDataAnalytics;->mAnalytics:Lmiui/analytics/Analytics;

    sget-object v10, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10, v4, v5}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;J)V

    goto :goto_1

    .line 104
    :cond_5
    iget-object v11, p0, Lcom/android/camera/CameraDataAnalytics;->mAnalytics:Lmiui/analytics/Analytics;

    sget-object v10, Lcom/android/camera/CameraDataAnalytics;->sTrackEventMap:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10, v8, v9}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;J)V

    goto :goto_1

    .line 108
    .end local v2           #key:Ljava/lang/String;
    .end local v8           #value:J
    :cond_6
    iget-object v10, p0, Lcom/android/camera/CameraDataAnalytics;->mAnalytics:Lmiui/analytics/Analytics;

    sget-object v11, Lcom/android/camera/Device;->MODULE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lmiui/analytics/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 109
    iget-object v10, p0, Lcom/android/camera/CameraDataAnalytics;->mAnalytics:Lmiui/analytics/Analytics;

    invoke-virtual {v10}, Lmiui/analytics/Analytics;->endSession()V

    .line 111
    iget-object v10, p0, Lcom/android/camera/CameraDataAnalytics;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 112
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method
