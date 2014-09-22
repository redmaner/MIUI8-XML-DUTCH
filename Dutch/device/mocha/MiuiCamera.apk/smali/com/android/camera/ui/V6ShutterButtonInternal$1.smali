.class Lcom/android/camera/ui/V6ShutterButtonInternal$1;
.super Landroid/os/Handler;
.source "V6ShutterButtonInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6ShutterButtonInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6ShutterButtonInternal;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 41
    :goto_0
    return-void

    .line 38
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonInternal;

    #calls: Lcom/android/camera/ui/V6ShutterButtonInternal;->onLongPress()V
    invoke-static {v0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->access$000(Lcom/android/camera/ui/V6ShutterButtonInternal;)V

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
