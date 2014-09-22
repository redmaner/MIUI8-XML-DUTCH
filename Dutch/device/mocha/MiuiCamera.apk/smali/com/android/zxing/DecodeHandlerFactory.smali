.class final Lcom/android/zxing/DecodeHandlerFactory;
.super Ljava/lang/Object;
.source "DecodeHandlerFactory.java"


# instance fields
.field private mHandler:Lcom/android/zxing/DecodeHandler;

.field private final mHandlerInitLatch:Ljava/util/concurrent/CountDownLatch;


# virtual methods
.method public getHandler()Lcom/android/zxing/DecodeHandler;
    .locals 1

    .prologue
    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/android/zxing/DecodeHandlerFactory;->mHandlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/android/zxing/DecodeHandlerFactory;->mHandler:Lcom/android/zxing/DecodeHandler;

    return-object v0

    .line 46
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public quit()V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/zxing/DecodeHandlerFactory;->getHandler()Lcom/android/zxing/DecodeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/DecodeHandler;->cancel()V

    .line 60
    invoke-virtual {p0}, Lcom/android/zxing/DecodeHandlerFactory;->getHandler()Lcom/android/zxing/DecodeHandler;

    move-result-object v0

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Lcom/android/zxing/DecodeHandler;->removeMessages(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/zxing/DecodeHandlerFactory;->getHandler()Lcom/android/zxing/DecodeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/DecodeHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 62
    return-void
.end method
