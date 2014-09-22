.class Lcom/android/camera/MotionFocusManager$MainHandler;
.super Landroid/os/Handler;
.source "MotionFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MotionFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MotionFocusManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/MotionFocusManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/camera/MotionFocusManager$MainHandler;->this$0:Lcom/android/camera/MotionFocusManager;

    .line 236
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 237
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 240
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 248
    :goto_0
    return-void

    .line 242
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/MotionFocusManager$MainHandler;->this$0:Lcom/android/camera/MotionFocusManager;

    #calls: Lcom/android/camera/MotionFocusManager;->deviceBecomeStable()V
    invoke-static {v0}, Lcom/android/camera/MotionFocusManager;->access$500(Lcom/android/camera/MotionFocusManager;)V

    goto :goto_0

    .line 245
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/MotionFocusManager$MainHandler;->this$0:Lcom/android/camera/MotionFocusManager;

    #calls: Lcom/android/camera/MotionFocusManager;->update()V
    invoke-static {v0}, Lcom/android/camera/MotionFocusManager;->access$600(Lcom/android/camera/MotionFocusManager;)V

    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
