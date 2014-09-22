.class Lcom/android/camera/AutoLockManager$1;
.super Landroid/os/Handler;
.source "AutoLockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/AutoLockManager;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/AutoLockManager;


# direct methods
.method constructor <init>(Lcom/android/camera/AutoLockManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/camera/AutoLockManager$1;->this$0:Lcom/android/camera/AutoLockManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/camera/AutoLockManager$1;->this$0:Lcom/android/camera/AutoLockManager;

    #calls: Lcom/android/camera/AutoLockManager;->lockSreen()V
    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->access$000(Lcom/android/camera/AutoLockManager;)V

    .line 81
    :cond_0
    return-void
.end method
