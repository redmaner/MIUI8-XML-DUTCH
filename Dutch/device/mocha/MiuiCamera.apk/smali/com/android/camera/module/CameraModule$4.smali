.class Lcom/android/camera/module/CameraModule$4;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/CameraModule;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;

.field final synthetic val$extra1:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/camera/module/CameraModule;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iput-object p2, p0, Lcom/android/camera/module/CameraModule$4;->val$extra1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1341
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$4;->val$extra1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #calls: Lcom/android/camera/module/CameraModule;->switchToOtherMode(I)V
    invoke-static {v1, v0}, Lcom/android/camera/module/CameraModule;->access$4400(Lcom/android/camera/module/CameraModule;I)V

    .line 1342
    return-void
.end method
