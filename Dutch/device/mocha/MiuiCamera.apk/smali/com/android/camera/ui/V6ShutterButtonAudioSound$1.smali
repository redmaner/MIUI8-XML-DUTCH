.class Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;
.super Landroid/os/Handler;
.source "V6ShutterButtonAudioSound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6ShutterButtonAudioSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6ShutterButtonAudioSound;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 131
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 133
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    #getter for: Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mStartTime:J
    invoke-static {v5}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->access$000(Lcom/android/camera/ui/V6ShutterButtonAudioSound;)J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 134
    .local v0, duration:J
    const-wide/16 v3, 0x12c

    cmp-long v3, v0, v3

    if-gtz v3, :cond_0

    .line 135
    long-to-float v3, v0

    const/high16 v4, 0x4396

    div-float v2, v3, v4

    .line 136
    .local v2, t:F
    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    iget-object v4, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    #getter for: Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mStartRadius:I
    invoke-static {v4}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->access$200(Lcom/android/camera/ui/V6ShutterButtonAudioSound;)I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    #getter for: Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mMaxRadius:I
    invoke-static {v5}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->access$300(Lcom/android/camera/ui/V6ShutterButtonAudioSound;)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    #getter for: Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mStartRadius:I
    invoke-static {v6}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->access$200(Lcom/android/camera/ui/V6ShutterButtonAudioSound;)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    #calls: Lcom/android/camera/ui/V6ShutterButtonAudioSound;->getInterpolation(F)F
    invoke-static {v6, v2}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->access$400(Lcom/android/camera/ui/V6ShutterButtonAudioSound;F)F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    #setter for: Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mCurrentRadius:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->access$102(Lcom/android/camera/ui/V6ShutterButtonAudioSound;I)I

    .line 137
    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    const/high16 v4, -0x3c81

    mul-float/2addr v4, v2

    float-to-int v4, v4

    add-int/lit16 v4, v4, 0xff

    #setter for: Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mAlpha:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->access$502(Lcom/android/camera/ui/V6ShutterButtonAudioSound;I)I

    .line 138
    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    #getter for: Lcom/android/camera/ui/V6ShutterButtonAudioSound;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->access$600(Lcom/android/camera/ui/V6ShutterButtonAudioSound;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x14

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 139
    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    invoke-virtual {v3}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->invalidate()V

    goto :goto_0

    .line 143
    .end local v0           #duration:J
    .end local v2           #t:F
    :pswitch_1
    iget-object v3, p0, Lcom/android/camera/ui/V6ShutterButtonAudioSound$1;->this$0:Lcom/android/camera/ui/V6ShutterButtonAudioSound;

    invoke-virtual {v3}, Lcom/android/camera/ui/V6ShutterButtonAudioSound;->invalidate()V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
