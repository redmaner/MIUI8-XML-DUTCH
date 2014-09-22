.class public Lcom/android/camera/ui/V6ShutterButtonInternal;
.super Lcom/android/camera/ui/V6BottomAnimationImageView;
.source "V6ShutterButtonInternal.java"


# static fields
.field private static LONG_PRESSED_TRIGER_TIME:I


# instance fields
.field private FLING_DISTANCE_THRESHOLD:I

.field private FLING_VELOCITY_THRESHOLD:I

.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mInShutterButton:Z

.field private mLongClickable:Z

.field private mOutTime:J

.field private mShutterRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x1f4

    sput v0, Lcom/android/camera/ui/V6ShutterButtonInternal;->LONG_PRESSED_TRIGER_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v2, 0x43c8

    const/high16 v1, 0x41a8

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mLongClickable:Z

    .line 26
    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->FLING_VELOCITY_THRESHOLD:I

    .line 27
    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->FLING_DISTANCE_THRESHOLD:I

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOutTime:J

    .line 32
    new-instance v0, Lcom/android/camera/ui/V6ShutterButtonInternal$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6ShutterButtonInternal$1;-><init>(Lcom/android/camera/ui/V6ShutterButtonInternal;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/V6ShutterButtonInternal;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->onLongPress()V

    return-void
.end method

.method private checkGesture(II)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 177
    iget-wide v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOutTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 178
    iget-object v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mShutterRect:Landroid/graphics/Rect;

    if-nez v4, :cond_0

    .line 179
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mShutterRect:Landroid/graphics/Rect;

    .line 180
    iget-object v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6ShutterButtonInternal;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 182
    :cond_0
    iget-object v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int v2, p1, v4

    .line 183
    .local v2, dx:I
    iget-object v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    sub-int v3, p2, v4

    .line 184
    .local v3, dy:I
    mul-int v4, v2, v2

    mul-int v5, v3, v3

    add-int v0, v4, v5

    .line 185
    .local v0, d2:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOutTime:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 186
    .local v1, duration:I
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gesture d2(d*d)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dutation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-lez v1, :cond_1

    iget v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->FLING_VELOCITY_THRESHOLD:I

    div-int v5, v0, v1

    if-le v4, v5, :cond_2

    :cond_1
    iget v4, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->FLING_DISTANCE_THRESHOLD:I

    if-ge v4, v0, :cond_3

    .line 191
    :cond_2
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v5, Landroid/graphics/Point;

    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, v4, v5}, Lcom/android/camera/ui/V6ShutterButtonInternal;->onFling(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 195
    .end local v0           #d2:I
    .end local v1           #duration:I
    .end local v2           #dx:I
    .end local v3           #dy:I
    :cond_3
    return-void
.end method

.method private onClick()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const v2, 0x7f0c002c

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    :cond_0
    return-void
.end method

.method private onFling(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 6
    .parameter "start"
    .parameter "center"

    .prologue
    const/4 v1, 0x2

    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const v2, 0x7f0c002c

    move v3, v1

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    :cond_0
    return-void
.end method

.method private onFocused(Z)V
    .locals 6
    .parameter "focus"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x3

    const v2, 0x7f0c002c

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    :cond_0
    return-void
.end method

.method private onLongPress()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x1

    const v2, 0x7f0c002c

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 132
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 133
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 135
    .local v3, y:F
    packed-switch v0, :pswitch_data_0

    .line 169
    :cond_0
    :goto_0
    return v5

    .line 138
    :pswitch_0
    iget-boolean v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mLongClickable:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    move v1, v5

    .line 139
    .local v1, needClick:Z
    :goto_1
    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    invoke-static {v2, v3, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mInShutterButton:Z

    .line 141
    if-eqz v1, :cond_4

    iget-boolean v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mInShutterButton:Z

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 142
    invoke-direct {p0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->onClick()V

    .line 147
    :cond_2
    :goto_2
    invoke-direct {p0, v4}, Lcom/android/camera/ui/V6ShutterButtonInternal;->onFocused(Z)V

    .line 148
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/V6ShutterButtonInternal;->setPressed(Z)V

    .line 149
    iput-wide v8, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOutTime:J

    goto :goto_0

    .end local v1           #needClick:Z
    :cond_3
    move v1, v4

    .line 138
    goto :goto_1

    .line 143
    .restart local v1       #needClick:Z
    :cond_4
    if-eqz v1, :cond_2

    iget-boolean v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mInShutterButton:Z

    if-nez v6, :cond_2

    .line 144
    float-to-int v6, v2

    float-to-int v7, v3

    invoke-direct {p0, v6, v7}, Lcom/android/camera/ui/V6ShutterButtonInternal;->checkGesture(II)V

    goto :goto_2

    .line 154
    .end local v1           #needClick:Z
    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/android/camera/ui/V6ShutterButtonInternal;->setPressed(Z)V

    .line 155
    invoke-direct {p0, v5}, Lcom/android/camera/ui/V6ShutterButtonInternal;->onFocused(Z)V

    .line 156
    iget-boolean v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mLongClickable:Z

    if-eqz v6, :cond_0

    .line 157
    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    iget-object v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mHandler:Landroid/os/Handler;

    sget v7, Lcom/android/camera/ui/V6ShutterButtonInternal;->LONG_PRESSED_TRIGER_TIME:I

    int-to-long v7, v7

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 162
    :pswitch_2
    invoke-static {v2, v3, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 163
    iput-wide v8, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOutTime:J

    goto :goto_0

    .line 164
    :cond_5
    iget-wide v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOutTime:J

    cmp-long v4, v6, v8

    if-nez v4, :cond_0

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mOutTime:J

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public enableControls(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mEnabled:Z

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6ShutterButtonInternal;->setEnabled(Z)V

    .line 116
    return-void
.end method

.method public isCancled()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mInShutterButton:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraOpen()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->onCameraOpen()V

    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->enableControls(Z)V

    .line 110
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->onCreate()V

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ShutterButtonInternal;->enableControls(Z)V

    .line 98
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->onFinishInflate()V

    .line 121
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationImageView;->onResume()V

    .line 104
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 0
    .parameter "longClickable"

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/camera/ui/V6ShutterButtonInternal;->mLongClickable:Z

    .line 127
    return-void
.end method
