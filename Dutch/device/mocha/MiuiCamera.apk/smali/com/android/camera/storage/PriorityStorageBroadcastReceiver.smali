.class public Lcom/android/camera/storage/PriorityStorageBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PriorityStorageBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static isPriorityStorage()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 19
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 21
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/android/camera/storage/PriorityStorageBroadcastReceiver;

    invoke-direct {v3, v1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 26
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq v2, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setPriorityStorage(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 31
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 33
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/android/camera/storage/PriorityStorageBroadcastReceiver;

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 36
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 16
    return-void
.end method
