.class Lcom/android/camera/ui/FocusView$ExposureView$1;
.super Landroid/os/Handler;
.source "FocusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FocusView$ExposureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/FocusView$ExposureView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FocusView$ExposureView;)V
    .locals 0
    .parameter

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/camera/ui/FocusView$ExposureView$1;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x2

    .line 507
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView$1;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;
    invoke-static {v1}, Lcom/android/camera/ui/FocusView$ExposureView;->access$1800(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 510
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView$1;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mScroller:Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;
    invoke-static {v1}, Lcom/android/camera/ui/FocusView$ExposureView;->access$1900(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->computeOffset()I

    move-result v0

    .line 511
    .local v0, delta:I
    if-eqz v0, :cond_2

    .line 512
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView$1;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #calls: Lcom/android/camera/ui/FocusView$ExposureView;->performRolling(I)V
    invoke-static {v1, v0}, Lcom/android/camera/ui/FocusView$ExposureView;->access$2000(Lcom/android/camera/ui/FocusView$ExposureView;I)V

    .line 514
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView$1;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mScroller:Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;
    invoke-static {v1}, Lcom/android/camera/ui/FocusView$ExposureView;->access$1900(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    .line 515
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FocusView$ExposureView$1;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 516
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView$1;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I
    invoke-static {v1}, Lcom/android/camera/ui/FocusView$ExposureView;->access$2100(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView$1;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #calls: Lcom/android/camera/ui/FocusView$ExposureView;->justify()V
    invoke-static {v1}, Lcom/android/camera/ui/FocusView$ExposureView;->access$2200(Lcom/android/camera/ui/FocusView$ExposureView;)V

    goto :goto_0

    .line 522
    .end local v0           #delta:I
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView$1;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mIsDown:Z
    invoke-static {v1}, Lcom/android/camera/ui/FocusView$ExposureView;->access$2300(Lcom/android/camera/ui/FocusView$ExposureView;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 523
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView$1;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/ui/FocusView$ExposureView;->access$2400(Lcom/android/camera/ui/FocusView$ExposureView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 524
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView$1;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/camera/ui/FocusView$ExposureView;->access$2400(Lcom/android/camera/ui/FocusView$ExposureView;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 526
    :cond_4
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView$1;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/FocusView$ExposureView;->setDraw(Z)V

    goto :goto_0

    .line 530
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView$1;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$ExposureView$1;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;
    invoke-static {v2}, Lcom/android/camera/ui/FocusView$ExposureView;->access$1800(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView$1;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I
    invoke-static {v3}, Lcom/android/camera/ui/FocusView$ExposureView;->access$2500(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/FocusView$ExposureView;->scrollToOffset(I)V

    goto :goto_0

    .line 508
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
