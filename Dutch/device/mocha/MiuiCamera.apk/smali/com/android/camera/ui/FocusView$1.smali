.class Lcom/android/camera/ui/FocusView$1;
.super Landroid/os/Handler;
.source "FocusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FocusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FocusView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FocusView;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/high16 v8, 0x4396

    const/high16 v7, 0x4000

    .line 194
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 196
    :pswitch_0
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 197
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mStartTime:J
    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->access$000(Lcom/android/camera/ui/FocusView;)J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 198
    .local v0, duration:J
    const-wide/16 v3, 0x12c

    cmp-long v3, v0, v3

    if-gtz v3, :cond_0

    .line 201
    const-wide/16 v3, 0x2

    mul-long/2addr v3, v0

    const-wide/16 v5, 0x12c

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 202
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    sget v4, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    int-to-float v4, v4

    long-to-float v5, v0

    mul-float/2addr v5, v7

    div-float/2addr v5, v8

    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$200()I

    move-result v6

    sget v7, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    #setter for: Lcom/android/camera/ui/FocusView;->mBigRadius:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$102(Lcom/android/camera/ui/FocusView;I)I

    .line 208
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$300(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    const-wide/16 v5, 0x14

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 205
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$200()I

    move-result v4

    int-to-float v4, v4

    long-to-float v5, v0

    mul-float/2addr v5, v7

    div-float/2addr v5, v8

    const/high16 v6, 0x3f80

    sub-float/2addr v5, v6

    sget v6, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$200()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    #setter for: Lcom/android/camera/ui/FocusView;->mBigRadius:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$102(Lcom/android/camera/ui/FocusView;I)I

    goto :goto_1

    .line 213
    .end local v0           #duration:J
    :pswitch_1
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 214
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mState:I
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$400(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    if-ne v3, v10, :cond_0

    .line 215
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mSuccessTime:J
    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->access$500(Lcom/android/camera/ui/FocusView;)J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 216
    .restart local v0       #duration:J
    const-wide/16 v3, 0x82

    cmp-long v3, v0, v3

    if-gtz v3, :cond_0

    .line 217
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    long-to-float v4, v0

    const/high16 v5, 0x4302

    div-float/2addr v4, v5

    #calls: Lcom/android/camera/ui/FocusView;->getInterpolation(F)F
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$600(Lcom/android/camera/ui/FocusView;F)F

    move-result v2

    .line 218
    .local v2, t:F
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/16 v4, 0xff

    #setter for: Lcom/android/camera/ui/FocusView;->mSmallAlpha:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$702(Lcom/android/camera/ui/FocusView;I)I

    .line 219
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$900()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$1000()I

    move-result v5

    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$900()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    #setter for: Lcom/android/camera/ui/FocusView;->mSmallRadius:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$802(Lcom/android/camera/ui/FocusView;I)I

    .line 220
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$1200()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/android/camera/ui/FocusView;->access$1200()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    float-to-int v4, v4

    #setter for: Lcom/android/camera/ui/FocusView;->mSmallLineWidth:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$1102(Lcom/android/camera/ui/FocusView;I)I

    .line 221
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$300(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x14

    invoke-virtual {v3, v10, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 226
    .end local v0           #duration:J
    .end local v2           #t:F
    :pswitch_2
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 227
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mState:I
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$400(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    if-ne v3, v11, :cond_0

    .line 228
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mFailTime:J
    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->access$1300(Lcom/android/camera/ui/FocusView;)J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 229
    .restart local v0       #duration:J
    const-wide/16 v3, 0x226

    cmp-long v3, v0, v3

    if-gtz v3, :cond_0

    .line 230
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mBigAlpha:I
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1400(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 231
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #setter for: Lcom/android/camera/ui/FocusView;->mBigAlpha:I
    invoke-static {v3, v9}, Lcom/android/camera/ui/FocusView;->access$1402(Lcom/android/camera/ui/FocusView;I)I

    .line 232
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #setter for: Lcom/android/camera/ui/FocusView;->mSmallAlpha:I
    invoke-static {v3, v9}, Lcom/android/camera/ui/FocusView;->access$702(Lcom/android/camera/ui/FocusView;I)I

    .line 237
    :goto_2
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$300(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v11, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 234
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/16 v4, 0x64

    #setter for: Lcom/android/camera/ui/FocusView;->mSmallAlpha:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$702(Lcom/android/camera/ui/FocusView;I)I

    .line 235
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    const/16 v4, 0xb4

    #setter for: Lcom/android/camera/ui/FocusView;->mBigAlpha:I
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView;->access$1402(Lcom/android/camera/ui/FocusView;I)I

    goto :goto_2

    .line 243
    .end local v0           #duration:J
    :pswitch_3
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1500(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView$ExposureView;->isDraw()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 244
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #calls: Lcom/android/camera/ui/FocusView;->clearMessages()V
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1600(Lcom/android/camera/ui/FocusView;)V

    .line 245
    const/4 v3, 0x5

    const-wide/16 v4, 0x32

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/camera/ui/FocusView$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 247
    :cond_3
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$1;->this$0:Lcom/android/camera/ui/FocusView;

    #calls: Lcom/android/camera/ui/FocusView;->reset()V
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$1700(Lcom/android/camera/ui/FocusView;)V

    goto/16 :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
