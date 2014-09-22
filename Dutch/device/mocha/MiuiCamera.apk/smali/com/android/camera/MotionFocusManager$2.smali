.class Lcom/android/camera/MotionFocusManager$2;
.super Ljava/lang/Object;
.source "MotionFocusManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MotionFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MotionFocusManager;


# direct methods
.method constructor <init>(Lcom/android/camera/MotionFocusManager;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/camera/MotionFocusManager$2;->this$0:Lcom/android/camera/MotionFocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 211
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .parameter "e"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 163
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v6, p0, Lcom/android/camera/MotionFocusManager$2;->this$0:Lcom/android/camera/MotionFocusManager;

    #getter for: Lcom/android/camera/MotionFocusManager;->mAccelerometerTimeStamp:J
    invoke-static {v6}, Lcom/android/camera/MotionFocusManager;->access$400(Lcom/android/camera/MotionFocusManager;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 164
    .local v2, elapseTime:J
    iget-object v4, p0, Lcom/android/camera/MotionFocusManager$2;->this$0:Lcom/android/camera/MotionFocusManager;

    #getter for: Lcom/android/camera/MotionFocusManager;->mMotionFocusListener:Lcom/android/camera/MotionFocusManager$MotionFocusListener;
    invoke-static {v4}, Lcom/android/camera/MotionFocusManager;->access$100(Lcom/android/camera/MotionFocusManager;)Lcom/android/camera/MotionFocusManager$MotionFocusListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/MotionFocusManager$MotionFocusListener;->isWorking()Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/32 v4, 0x5f5e100

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v4, p0, Lcom/android/camera/MotionFocusManager$2;->this$0:Lcom/android/camera/MotionFocusManager;

    #getter for: Lcom/android/camera/MotionFocusManager;->mAccelerometerTimeStamp:J
    invoke-static {v4}, Lcom/android/camera/MotionFocusManager;->access$400(Lcom/android/camera/MotionFocusManager;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    const-wide/32 v4, 0x3b9aca00

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    .line 169
    :cond_2
    iget-object v4, p0, Lcom/android/camera/MotionFocusManager$2;->this$0:Lcom/android/camera/MotionFocusManager;

    iget-wide v5, p1, Landroid/hardware/SensorEvent;->timestamp:J

    #setter for: Lcom/android/camera/MotionFocusManager;->mAccelerometerTimeStamp:J
    invoke-static {v4, v5, v6}, Lcom/android/camera/MotionFocusManager;->access$402(Lcom/android/camera/MotionFocusManager;J)J

    goto :goto_0

    .line 173
    :cond_3
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v8

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v8

    mul-float/2addr v4, v5

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v9

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v10

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v10

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 176
    .local v0, a:D
    iget-object v4, p0, Lcom/android/camera/MotionFocusManager$2;->this$0:Lcom/android/camera/MotionFocusManager;

    iget-wide v5, p1, Landroid/hardware/SensorEvent;->timestamp:J

    #setter for: Lcom/android/camera/MotionFocusManager;->mAccelerometerTimeStamp:J
    invoke-static {v4, v5, v6}, Lcom/android/camera/MotionFocusManager;->access$402(Lcom/android/camera/MotionFocusManager;J)J

    .line 178
    const-wide/high16 v4, 0x3ff0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_0

    .line 179
    iget-object v4, p0, Lcom/android/camera/MotionFocusManager$2;->this$0:Lcom/android/camera/MotionFocusManager;

    #calls: Lcom/android/camera/MotionFocusManager;->deviceKeepMoving(D)V
    invoke-static {v4, v0, v1}, Lcom/android/camera/MotionFocusManager;->access$300(Lcom/android/camera/MotionFocusManager;D)V

    goto :goto_0
.end method
