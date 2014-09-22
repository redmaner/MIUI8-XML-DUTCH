.class public interface abstract Lcom/android/camera/MotionFocusManager$MotionFocusListener;
.super Ljava/lang/Object;
.source "MotionFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MotionFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MotionFocusListener"
.end annotation


# virtual methods
.method public abstract isWorking()Z
.end method

.method public abstract onDeviceBecomeStable()V
.end method

.method public abstract onDeviceKeepMoving(D)V
.end method
