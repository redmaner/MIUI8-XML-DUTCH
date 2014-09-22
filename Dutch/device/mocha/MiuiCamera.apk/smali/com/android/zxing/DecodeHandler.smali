.class final Lcom/android/zxing/DecodeHandler;
.super Landroid/os/Handler;
.source "DecodeHandler.java"


# instance fields
.field private mCancel:Z

.field private final mContext:Landroid/content/Context;

.field private final mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;


# direct methods
.method private decode([BII)V
    .locals 11
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 44
    iget-boolean v9, p0, Lcom/android/zxing/DecodeHandler;->mCancel:Z

    if-eqz v9, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    array-length v9, p1

    new-array v4, v9, [B

    .line 46
    .local v4, rotatedData:[B
    const/4 v8, 0x0

    .local v8, y:I
    :goto_1
    if-ge v8, p3, :cond_3

    .line 47
    const/4 v7, 0x0

    .local v7, x:I
    :goto_2
    if-ge v7, p2, :cond_2

    .line 48
    mul-int v9, v7, p3

    add-int/2addr v9, p3

    sub-int/2addr v9, v8

    add-int/lit8 v9, v9, -0x1

    mul-int v10, v8, p2

    add-int/2addr v10, v7

    aget-byte v10, p1, v10

    aput-byte v10, v4, v9

    .line 47
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 46
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 51
    .end local v7           #x:I
    :cond_3
    move v6, p2

    .line 52
    .local v6, temp:I
    move p2, p3

    .line 53
    move p3, v6

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, bitmap:Lcom/google/zxing/BinaryBitmap;
    const/4 v1, 0x2

    .line 57
    .local v1, decodeTimeMost:I
    const/4 v5, 0x0

    .line 58
    .local v5, source:Lcom/android/zxing/YUVLuminanceSource;
    const/4 v3, 0x0

    .line 62
    .local v3, rawResult:Lcom/google/zxing/Result;
    :cond_4
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_6

    .line 63
    iget-boolean v9, p0, Lcom/android/zxing/DecodeHandler;->mCancel:Z

    if-nez v9, :cond_0

    .line 64
    iget-object v9, p0, Lcom/android/zxing/DecodeHandler;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v10

    if-nez v1, :cond_5

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v10, v4, p2, p3, v9}, Lcom/android/zxing/QRCodeManager;->buildLuminanceSource([BIIZ)Lcom/android/zxing/YUVLuminanceSource;

    move-result-object v5

    .line 66
    if-eqz v5, :cond_4

    .line 69
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    .end local v0           #bitmap:Lcom/google/zxing/BinaryBitmap;
    new-instance v9, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v9, v5}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v0, v9}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 71
    .restart local v0       #bitmap:Lcom/google/zxing/BinaryBitmap;
    :try_start_0
    iget-object v9, p0, Lcom/android/zxing/DecodeHandler;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v9, v0}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 75
    iget-object v9, p0, Lcom/android/zxing/DecodeHandler;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v9}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 77
    :goto_4
    if-eqz v3, :cond_4

    .line 78
    iget-boolean v9, p0, Lcom/android/zxing/DecodeHandler;->mCancel:Z

    if-nez v9, :cond_0

    .line 79
    iget-object v9, p0, Lcom/android/zxing/DecodeHandler;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/zxing/QRCodeManager;->getHandler()Landroid/os/Handler;

    move-result-object v9

    const v10, 0x7f0c0006

    invoke-virtual {v9, v10, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 81
    .local v2, message:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 64
    .end local v2           #message:Landroid/os/Message;
    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    .line 72
    :catch_0
    move-exception v9

    .line 75
    iget-object v9, p0, Lcom/android/zxing/DecodeHandler;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v9}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_4

    :catchall_0
    move-exception v9

    iget-object v10, p0, Lcom/android/zxing/DecodeHandler;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v10}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v9

    .line 85
    :cond_6
    iget-boolean v9, p0, Lcom/android/zxing/DecodeHandler;->mCancel:Z

    if-nez v9, :cond_0

    .line 86
    iget-object v9, p0, Lcom/android/zxing/DecodeHandler;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/zxing/QRCodeManager;->getHandler()Landroid/os/Handler;

    move-result-object v9

    const v10, 0x7f0c0008

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/zxing/DecodeHandler;->mCancel:Z

    .line 41
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 32
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 37
    :goto_0
    return-void

    .line 34
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/zxing/DecodeHandler;->decode([BII)V

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x7f0c0004
        :pswitch_0
    .end packed-switch
.end method
