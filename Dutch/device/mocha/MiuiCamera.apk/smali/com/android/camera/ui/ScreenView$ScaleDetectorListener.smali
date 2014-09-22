.class Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;
.super Ljava/lang/Object;
.source "ScreenView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ScreenView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/ScreenView;)V
    .locals 0
    .parameter

    .prologue
    .line 1639
    iput-object p1, p0, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/ScreenView;Lcom/android/camera/ui/ScreenView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1639
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;-><init>(Lcom/android/camera/ui/ScreenView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .parameter "detector"

    .prologue
    const/4 v1, 0x1

    .line 1655
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 1657
    .local v0, scale:F
    iget-object v2, p0, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;->this$0:Lcom/android/camera/ui/ScreenView;

    #getter for: Lcom/android/camera/ui/ScreenView;->mTouchState:I
    invoke-static {v2}, Lcom/android/camera/ui/ScreenView;->access$800(Lcom/android/camera/ui/ScreenView;)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getTimeDelta()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x4348

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    const v2, 0x3f733333

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_0

    const v2, 0x3f86bca2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 1661
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;->this$0:Lcom/android/camera/ui/ScreenView;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1664
    :cond_1
    const v2, 0x3f4ccccd

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    .line 1665
    iget-object v2, p0, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v2, p1}, Lcom/android/camera/ui/ScreenView;->onPinchIn(Landroid/view/ScaleGestureDetector;)V

    .line 1674
    :goto_0
    return v1

    .line 1669
    :cond_2
    const v2, 0x3f99999a

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    .line 1670
    iget-object v2, p0, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v2, p1}, Lcom/android/camera/ui/ScreenView;->onPinchOut(Landroid/view/ScaleGestureDetector;)V

    goto :goto_0

    .line 1674
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;->this$0:Lcom/android/camera/ui/ScreenView;

    #getter for: Lcom/android/camera/ui/ScreenView;->mTouchState:I
    invoke-static {v0}, Lcom/android/camera/ui/ScreenView;->access$800(Lcom/android/camera/ui/ScreenView;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .parameter "detector"

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenView;->finishCurrentGesture()V

    .line 1652
    return-void
.end method
