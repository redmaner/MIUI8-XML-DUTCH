.class Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;
.super Ljava/lang/Object;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureVelocityTracker"
.end annotation


# instance fields
.field private mFoldX:F

.field private mPointerId:I

.field private mPrevX:F

.field private mStartX:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final synthetic this$0:Lcom/android/camera/ui/ScreenView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/ScreenView;)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, -0x4080

    .line 179
    iput-object p1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPointerId:I

    .line 182
    iput v1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mStartX:F

    .line 183
    iput v1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    .line 184
    iput v1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/ScreenView;Lcom/android/camera/ui/ScreenView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;-><init>(Lcom/android/camera/ui/ScreenView;)V

    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPointerId:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mStartX:F

    iput v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    iput v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    .line 241
    return-void
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "ev"

    .prologue
    const/high16 v5, 0x4040

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 200
    iget-object v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_0

    .line 201
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 203
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 205
    .local v0, curX:F
    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPointerId:I

    if-eq v2, v4, :cond_1

    .line 206
    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 207
    .local v1, pIndex:I
    if-eq v1, v4, :cond_2

    .line 208
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 213
    .end local v1           #pIndex:I
    :cond_1
    :goto_0
    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mStartX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 214
    iput v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mStartX:F

    .line 238
    :goto_1
    return-void

    .line 210
    .restart local v1       #pIndex:I
    :cond_2
    iput v4, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPointerId:I

    goto :goto_0

    .line 217
    .end local v1           #pIndex:I
    :cond_3
    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 218
    iput v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    goto :goto_1

    .line 221
    :cond_4
    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    .line 222
    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    iget v3, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mStartX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_6

    :cond_5
    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    iget v3, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mStartX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_7

    .line 223
    :cond_6
    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mStartX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_7

    .line 224
    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    iput v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    .line 237
    :cond_7
    :goto_2
    iput v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    goto :goto_1

    .line 228
    :cond_8
    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    iget v3, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_7

    .line 229
    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    iget v3, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_a

    :cond_9
    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    iget v3, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_7

    .line 230
    :cond_a
    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_7

    .line 231
    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    iput v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mStartX:F

    .line 232
    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    iput v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    goto :goto_2
.end method

.method public getFlingDirection(F)I
    .locals 5
    .parameter "velocity"

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x3

    .line 256
    const/high16 v3, 0x4396

    cmpl-float v3, p1, v3

    if-lez v3, :cond_6

    .line 257
    iget v3, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 258
    iget v2, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    iget v3, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mStartX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 274
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 258
    goto :goto_0

    .line 260
    :cond_2
    iget v3, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    iget v4, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 261
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->this$0:Lcom/android/camera/ui/ScreenView;

    #getter for: Lcom/android/camera/ui/ScreenView;->mScrollX:I
    invoke-static {v0}, Lcom/android/camera/ui/ScreenView;->access$100(Lcom/android/camera/ui/ScreenView;)I

    move-result v0

    iget-object v3, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v3}, Lcom/android/camera/ui/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v0, v3, :cond_3

    move v0, v2

    .line 262
    goto :goto_0

    :cond_3
    move v0, v1

    .line 264
    goto :goto_0

    .line 266
    :cond_4
    iget v1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPrevX:F

    iget v3, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mFoldX:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5

    .line 267
    iget-object v1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->this$0:Lcom/android/camera/ui/ScreenView;

    #getter for: Lcom/android/camera/ui/ScreenView;->mScrollX:I
    invoke-static {v1}, Lcom/android/camera/ui/ScreenView;->access$200(Lcom/android/camera/ui/ScreenView;)I

    move-result v1

    iget-object v3, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->this$0:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v3}, Lcom/android/camera/ui/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-le v1, v3, :cond_0

    move v0, v2

    .line 268
    goto :goto_0

    :cond_5
    move v0, v2

    .line 272
    goto :goto_0

    .line 274
    :cond_6
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getXVelocity(III)F
    .locals 2
    .parameter "units"
    .parameter "maxVelocity"
    .parameter "pointerId"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 253
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    return v0
.end method

.method public init(I)V
    .locals 1
    .parameter "pointerId"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 244
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 248
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->reset()V

    .line 249
    iput p1, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mPointerId:I

    .line 250
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->reset()V

    .line 197
    return-void
.end method
