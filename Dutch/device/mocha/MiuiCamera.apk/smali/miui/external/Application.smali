.class public Lmiui/external/Application;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Lmiui/external/SdkConstants;


# instance fields
.field private o:Z

.field private p:Lmiui/external/ApplicationDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 49
    invoke-direct {p0}, Lmiui/external/Application;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-direct {p0}, Lmiui/external/Application;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/external/Application;->o:Z

    .line 56
    invoke-virtual {p0}, Lmiui/external/Application;->onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;

    move-result-object v0

    iput-object v0, p0, Lmiui/external/Application;->p:Lmiui/external/ApplicationDelegate;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 136
    const-string v0, "miuisdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MIUI SDK encounter errors, please contact miuisdk@xiaomi.com for support. phase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget-object v0, Lmiui/external/SdkConstants$SdkError;->GENERIC:Lmiui/external/SdkConstants$SdkError;

    invoke-static {v0}, Lmiui/external/d;->a(Lmiui/external/SdkConstants$SdkError;)V

    .line 139
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2
    .parameter

    .prologue
    .line 117
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 131
    :cond_0
    const-string v0, "miuisdk"

    const-string v1, "MIUI SDK encounter errors, please contact miuisdk@xiaomi.com for support."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    sget-object v0, Lmiui/external/SdkConstants$SdkError;->GENERIC:Lmiui/external/SdkConstants$SdkError;

    invoke-static {v0}, Lmiui/external/d;->a(Lmiui/external/SdkConstants$SdkError;)V

    .line 133
    return-void

    .line 121
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 124
    :cond_2
    instance-of v0, p1, Ljava/lang/ExceptionInInitializerError;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0
.end method

.method private i()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 61
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/app/miui.apk"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 62
    if-nez v1, :cond_0

    .line 63
    const-class v1, Lmiui/external/Application;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1}, Lmiui/external/b;->a(Ljava/lang/ClassLoader;)Z

    move-result v1

    .line 64
    if-nez v1, :cond_0

    .line 65
    sget-object v1, Lmiui/external/SdkConstants$SdkError;->NO_SDK:Lmiui/external/SdkConstants$SdkError;

    invoke-static {v1}, Lmiui/external/d;->a(Lmiui/external/SdkConstants$SdkError;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return v0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    invoke-direct {p0, v1}, Lmiui/external/Application;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 73
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private j()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 78
    :try_start_0
    const-string v0, "com.miui.internal.core.SdkManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "initialize"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/app/Application;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/util/Map;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 81
    if-eqz v0, :cond_0

    .line 82
    const-string v2, "initialize"

    invoke-direct {p0, v2, v0}, Lmiui/external/Application;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 89
    :goto_0
    return v0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-direct {p0, v0}, Lmiui/external/Application;->a(Ljava/lang/Throwable;)V

    move v0, v1

    .line 87
    goto :goto_0

    :cond_0
    move v0, v2

    .line 89
    goto :goto_0
.end method

.method private k()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 94
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    const-string v3, "com.miui.sdk.defaultMinSdkVersion"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v3, "com.miui.sdk.defaultTargetSdkVersion"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v3, "com.miui.internal.core.SdkManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "start"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/util/Map;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 101
    if-ne v0, v2, :cond_0

    .line 102
    sget-object v0, Lmiui/external/SdkConstants$SdkError;->LOW_SDK_VERSION:Lmiui/external/SdkConstants$SdkError;

    invoke-static {v0}, Lmiui/external/d;->a(Lmiui/external/SdkConstants$SdkError;)V

    move v0, v1

    .line 112
    :goto_0
    return v0

    .line 104
    :cond_0
    if-eqz v0, :cond_1

    .line 105
    const-string v2, "start"

    invoke-direct {p0, v2, v0}, Lmiui/external/Application;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 106
    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-direct {p0, v0}, Lmiui/external/Application;->a(Ljava/lang/Throwable;)V

    move v0, v1

    .line 110
    goto :goto_0

    :cond_1
    move v0, v2

    .line 112
    goto :goto_0
.end method


# virtual methods
.method final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 215
    return-void
.end method

.method final a(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 228
    return-void
.end method

.method final l()V
    .locals 0

    .prologue
    .line 175
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 176
    return-void
.end method

.method final m()V
    .locals 0

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 189
    return-void
.end method

.method final n()V
    .locals 0

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 202
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lmiui/external/Application;->p:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lmiui/external/Application;->p:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0, p1}, Lmiui/external/ApplicationDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/external/Application;->a(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public final onCreate()V
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lmiui/external/Application;->o:Z

    if-nez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lmiui/external/Application;->p:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lmiui/external/Application;->p:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0, p0}, Lmiui/external/ApplicationDelegate;->a(Lmiui/external/Application;)V

    .line 164
    :cond_2
    invoke-direct {p0}, Lmiui/external/Application;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lmiui/external/Application;->p:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_3

    .line 168
    iget-object v0, p0, Lmiui/external/Application;->p:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0}, Lmiui/external/ApplicationDelegate;->onCreate()V

    goto :goto_0

    .line 170
    :cond_3
    invoke-virtual {p0}, Lmiui/external/Application;->l()V

    goto :goto_0
.end method

.method public onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onLowMemory()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lmiui/external/Application;->p:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lmiui/external/Application;->p:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0}, Lmiui/external/ApplicationDelegate;->onLowMemory()V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, Lmiui/external/Application;->n()V

    goto :goto_0
.end method

.method public final onTerminate()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lmiui/external/Application;->p:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lmiui/external/Application;->p:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0}, Lmiui/external/ApplicationDelegate;->onTerminate()V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-virtual {p0}, Lmiui/external/Application;->m()V

    goto :goto_0
.end method

.method public final onTrimMemory(I)V
    .locals 1
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lmiui/external/Application;->p:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lmiui/external/Application;->p:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0, p1}, Lmiui/external/ApplicationDelegate;->onTrimMemory(I)V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/external/Application;->a(I)V

    goto :goto_0
.end method
