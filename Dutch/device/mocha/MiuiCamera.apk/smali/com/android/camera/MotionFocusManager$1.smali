.class Lcom/android/camera/MotionFocusManager$1;
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
    .line 115
    iput-object p1, p0, Lcom/android/camera/MotionFocusManager$1;->this$0:Lcom/android/camera/MotionFocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 156
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .parameter "e"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 118
    iget-wide v5, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v7, p0, Lcom/android/camera/MotionFocusManager$1;->this$0:Lcom/android/camera/MotionFocusManager;

    #getter for: Lcom/android/camera/MotionFocusManager;->mGyrocopeTimeStamp:J
    invoke-static {v7}, Lcom/android/camera/MotionFocusManager;->access$000(Lcom/android/camera/MotionFocusManager;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 119
    .local v1, elapseTime:J
    iget-object v5, p0, Lcom/android/camera/MotionFocusManager$1;->this$0:Lcom/android/camera/MotionFocusManager;

    #getter for: Lcom/android/camera/MotionFocusManager;->mMotionFocusListener:Lcom/android/camera/MotionFocusManager$MotionFocusListener;
    invoke-static {v5}, Lcom/android/camera/MotionFocusManager;->access$100(Lcom/android/camera/MotionFocusManager;)Lcom/android/camera/MotionFocusManager$MotionFocusListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/MotionFocusManager$MotionFocusListener;->isWorking()Z

    move-result v5

    if-eqz v5, :cond_0

    const-wide/32 v5, 0x5f5e100

    cmp-long v5, v1, v5

    if-gez v5, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v5, p0, Lcom/android/camera/MotionFocusManager$1;->this$0:Lcom/android/camera/MotionFocusManager;

    #getter for: Lcom/android/camera/MotionFocusManager;->mGyrocopeTimeStamp:J
    invoke-static {v5}, Lcom/android/camera/MotionFocusManager;->access$000(Lcom/android/camera/MotionFocusManager;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    const-wide/32 v5, 0x3b9aca00

    cmp-long v5, v1, v5

    if-lez v5, :cond_3

    .line 124
    :cond_2
    iget-object v5, p0, Lcom/android/camera/MotionFocusManager$1;->this$0:Lcom/android/camera/MotionFocusManager;

    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    #setter for: Lcom/android/camera/MotionFocusManager;->mGyrocopeTimeStamp:J
    invoke-static {v5, v6, v7}, Lcom/android/camera/MotionFocusManager;->access$002(Lcom/android/camera/MotionFocusManager;J)J

    goto :goto_0

    .line 128
    :cond_3
    long-to-float v5, v1

    const v6, 0x3089705f

    mul-float v0, v5, v6

    .line 129
    .local v0, dT:F
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v9

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v9

    mul-float/2addr v5, v6

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v10

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v10

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v11

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v11

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 132
    .local v3, w:D
    iget-object v5, p0, Lcom/android/camera/MotionFocusManager$1;->this$0:Lcom/android/camera/MotionFocusManager;

    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    #setter for: Lcom/android/camera/MotionFocusManager;->mGyrocopeTimeStamp:J
    invoke-static {v5, v6, v7}, Lcom/android/camera/MotionFocusManager;->access$002(Lcom/android/camera/MotionFocusManager;J)J

    .line 134
    const-wide v5, 0x3fa99999a0000000L

    cmpg-double v5, v3, v5

    if-ltz v5, :cond_0

    .line 137
    iget-object v5, p0, Lcom/android/camera/MotionFocusManager$1;->this$0:Lcom/android/camera/MotionFocusManager;

    float-to-double v6, v0

    mul-double/2addr v6, v3

    invoke-static {v5, v6, v7}, Lcom/android/camera/MotionFocusManager;->access$218(Lcom/android/camera/MotionFocusManager;D)D

    .line 138
    iget-object v5, p0, Lcom/android/camera/MotionFocusManager$1;->this$0:Lcom/android/camera/MotionFocusManager;

    #getter for: Lcom/android/camera/MotionFocusManager;->mAngleTotal:D
    invoke-static {v5}, Lcom/android/camera/MotionFocusManager;->access$200(Lcom/android/camera/MotionFocusManager;)D

    move-result-wide v5

    const-wide v7, 0x3fe0c152382d7365L

    cmpl-double v5, v5, v7

    if-lez v5, :cond_0

    .line 139
    iget-object v5, p0, Lcom/android/camera/MotionFocusManager$1;->this$0:Lcom/android/camera/MotionFocusManager;

    const-wide/16 v6, 0x0

    #setter for: Lcom/android/camera/MotionFocusManager;->mAngleTotal:D
    invoke-static {v5, v6, v7}, Lcom/android/camera/MotionFocusManager;->access$202(Lcom/android/camera/MotionFocusManager;D)D

    .line 140
    iget-object v5, p0, Lcom/android/camera/MotionFocusManager$1;->this$0:Lcom/android/camera/MotionFocusManager;

    const-wide v6, 0x40c3880000000000L

    #calls: Lcom/android/camera/MotionFocusManager;->deviceKeepMoving(D)V
    invoke-static {v5, v6, v7}, Lcom/android/camera/MotionFocusManager;->access$300(Lcom/android/camera/MotionFocusManager;D)V

    goto :goto_0
.end method
