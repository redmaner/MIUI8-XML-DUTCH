.class Lcom/android/camera/ui/V6SmartShutterButton$1;
.super Landroid/os/Handler;
.source "V6SmartShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6SmartShutterButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6SmartShutterButton;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6SmartShutterButton;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/camera/ui/V6SmartShutterButton$1;->this$0:Lcom/android/camera/ui/V6SmartShutterButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 56
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/V6SmartShutterButton$1;->this$0:Lcom/android/camera/ui/V6SmartShutterButton;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/ui/V6SmartShutterButton;->mVisibleState:I
    invoke-static {v0, v1}, Lcom/android/camera/ui/V6SmartShutterButton;->access$002(Lcom/android/camera/ui/V6SmartShutterButton;I)I

    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/V6SmartShutterButton$1;->this$0:Lcom/android/camera/ui/V6SmartShutterButton;

    #calls: Lcom/android/camera/ui/V6SmartShutterButton;->updateVisibleState()V
    invoke-static {v0}, Lcom/android/camera/ui/V6SmartShutterButton;->access$100(Lcom/android/camera/ui/V6SmartShutterButton;)V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
