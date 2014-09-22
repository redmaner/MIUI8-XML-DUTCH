.class public Lcom/android/camera/AutoLockManager;
.super Ljava/lang/Object;
.source "AutoLockManager.java"


# static fields
.field private static sMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/android/camera/AutoLockManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private volatile mCount:I

.field private mHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private mScreenOffTimeOut:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/AutoLockManager;->sMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/android/camera/AutoLockManager;->mScreenOffTimeOut:J

    .line 25
    iput-object p1, p0, Lcom/android/camera/AutoLockManager;->mContext:Landroid/content/Context;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/AutoLockManager;->mCount:I

    .line 28
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/camera/AutoLockManager;->mScreenOffTimeOut:J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/AutoLockManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/camera/AutoLockManager;->lockSreen()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 36
    sget-object v1, Lcom/android/camera/AutoLockManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/AutoLockManager;

    .line 37
    .local v0, instance:Lcom/android/camera/AutoLockManager;
    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/android/camera/AutoLockManager;

    .end local v0           #instance:Lcom/android/camera/AutoLockManager;
    invoke-direct {v0, p0}, Lcom/android/camera/AutoLockManager;-><init>(Landroid/content/Context;)V

    .line 39
    .restart local v0       #instance:Lcom/android/camera/AutoLockManager;
    sget-object v1, Lcom/android/camera/AutoLockManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_0
    return-object v0
.end method

.method private initHandler()V
    .locals 3

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 73
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "my_handler_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 75
    new-instance v1, Lcom/android/camera/AutoLockManager$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/camera/AutoLockManager$1;-><init>(Lcom/android/camera/AutoLockManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    .line 84
    .end local v0           #handlerThread:Landroid/os/HandlerThread;
    :cond_0
    return-void
.end method

.method private lockSreen()V
    .locals 2

    .prologue
    .line 87
    iget v1, p0, Lcom/android/camera/AutoLockManager;->mCount:I

    if-gtz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/AutoLockManager;->mPaused:Z

    if-nez v1, :cond_0

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.app.ExtraStatusBarManager.TRIGGER_TOGGLE_LOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/AutoLockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 91
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static removeInstance(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 45
    sget-object v1, Lcom/android/camera/AutoLockManager;->sMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/AutoLockManager;

    .line 46
    .local v0, instance:Lcom/android/camera/AutoLockManager;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, v0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public lockScreenDelayed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    invoke-direct {p0}, Lcom/android/camera/AutoLockManager;->initHandler()V

    .line 101
    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/android/camera/AutoLockManager;->mScreenOffTimeOut:J

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 105
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/AutoLockManager;->mPaused:Z

    .line 53
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/AutoLockManager;->mPaused:Z

    .line 57
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget v0, p0, Lcom/android/camera/AutoLockManager;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/AutoLockManager;->mCount:I

    .line 62
    monitor-exit p0

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeMessage()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/camera/AutoLockManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 97
    :cond_0
    return-void
.end method
