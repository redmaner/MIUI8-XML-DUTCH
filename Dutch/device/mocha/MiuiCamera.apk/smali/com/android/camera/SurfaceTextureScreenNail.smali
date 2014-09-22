.class public abstract Lcom/android/camera/SurfaceTextureScreenNail;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/android/camera/ui/Rotatable;


# static fields
.field private static final MOVIE_SOLID_CROPPED_X:F

.field private static final MOVIE_SOLID_CROPPED_Y:F

.field private static sFrameListener:Landroid/os/HandlerThread;

.field private static sMaxHightProrityFrameCount:I


# instance fields
.field private currentFrameCount:I

.field protected mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

.field protected mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field private mDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field protected mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

.field protected mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field protected mGLSurfaceStatusBar:Lcom/android/camera/GLSurfaceStatusBar;

.field private mHasTexture:Z

.field private mHeight:I

.field private mIsFullScreen:Z

.field protected mIsRatio16_9:Z

.field protected mLayoutHeight:I

.field protected mLayoutWidth:I

.field protected mModuleSwitching:Z

.field private mNeedCropped:Z

.field private mRenderHeight:I

.field private mRenderWidth:I

.field private mScaleX:F

.field private mScaleY:F

.field protected mSkipFirstFrame:Z

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTransform:[F

.field private mUncroppedRenderHeight:I

.field private mUncroppedRenderWidth:I

.field private mVideoStabilizationCropped:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const v1, 0x3f666666

    const v2, 0x3f4ccccd

    .line 43
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput v0, Lcom/android/camera/SurfaceTextureScreenNail;->MOVIE_SOLID_CROPPED_X:F

    .line 44
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput v1, Lcom/android/camera/SurfaceTextureScreenNail;->MOVIE_SOLID_CROPPED_Y:F

    .line 68
    const/16 v0, 0x8

    sput v0, Lcom/android/camera/SurfaceTextureScreenNail;->sMaxHightProrityFrameCount:I

    .line 70
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FrameListener"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    return-void

    :cond_0
    move v0, v2

    .line 43
    goto :goto_0

    :cond_1
    move v1, v2

    .line 44
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/android/camera/GLSurfaceStatusBar;

    invoke-direct {v0}, Lcom/android/camera/GLSurfaceStatusBar;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mGLSurfaceStatusBar:Lcom/android/camera/GLSurfaceStatusBar;

    .line 59
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    .line 60
    iput-boolean v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    .line 63
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 64
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    .line 69
    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    .line 71
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 75
    return-void
.end method

.method private checkThreadPriority()V
    .locals 2

    .prologue
    .line 145
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    sget v1, Lcom/android/camera/SurfaceTextureScreenNail;->sMaxHightProrityFrameCount:I

    if-ne v0, v1, :cond_1

    .line 146
    const-string v0, "Camera/SurfaceTextureScreenNail"

    const-string v1, "normalHandlerCapacity:set normal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object v0, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 148
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    sget v1, Lcom/android/camera/SurfaceTextureScreenNail;->sMaxHightProrityFrameCount:I

    if-ge v0, v1, :cond_0

    .line 150
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    goto :goto_0
.end method

.method private initializeTexture()V
    .locals 4

    .prologue
    .line 93
    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3:Z

    if-eqz v0, :cond_1

    .line 94
    sget-object v0, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    sget-object v0, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 98
    :cond_0
    :try_start_0
    const-class v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/os/Looper;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 99
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/ExtTexture;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 102
    const-string v0, "Camera/SurfaceTextureScreenNail"

    const-string v1, "fullHandlerCapacity:set urgent display"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v0, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    const/4 v1, -0x8

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_1
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ExtTexture;->getId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    goto :goto_0

    .line 109
    :catch_1
    move-exception v0

    goto :goto_0

    .line 108
    :catch_2
    move-exception v0

    goto :goto_0

    .line 107
    :catch_3
    move-exception v0

    goto :goto_0

    .line 106
    :catch_4
    move-exception v0

    goto :goto_0

    .line 105
    :catch_5
    move-exception v0

    goto :goto_0
.end method

.method private updateRenderSize()V
    .locals 2

    .prologue
    .line 229
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderWidth:I

    .line 230
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderHeight:I

    .line 231
    return-void
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 78
    new-instance v0, Lcom/android/gallery3d/ui/ExtTexture;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/ExtTexture;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 79
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/ExtTexture;->setSize(II)V

    .line 80
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->initializeTexture()V

    .line 81
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 82
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 83
    new-instance v0, Lcom/android/gallery3d/ui/RawTexture;

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 85
    monitor-enter p0

    .line 86
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mModuleSwitching:Z

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSkipFirstFrame:Z

    .line 89
    monitor-exit p0

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 252
    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSkipFirstFrame:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mModuleSwitching:Z

    if-eqz v0, :cond_2

    .line 253
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSkipFirstFrame:Z

    if-eqz v0, :cond_1

    .line 254
    iput-boolean v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSkipFirstFrame:Z

    .line 255
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 266
    :cond_1
    :goto_0
    return-void

    .line 260
    :cond_2
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    .line 261
    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    if-eqz v0, :cond_3

    .line 262
    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLayoutWidth:I

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLayoutHeight:I

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0

    .line 264
    :cond_3
    sget v3, Lcom/android/camera/CameraSettings;->TOP_CONTROL_HEIGHT:I

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLayoutWidth:I

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLayoutHeight:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 7
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 270
    monitor-enter p0

    .line 271
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z

    if-nez v0, :cond_0

    monitor-exit p0

    .line 282
    :goto_0
    return-void

    .line 272
    :cond_0
    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->checkThreadPriority()V

    .line 273
    :cond_1
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->setPreviewSize(II)V

    .line 274
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 275
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 276
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 277
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {p0, v0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateTransformMatrix([F)V

    .line 278
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 279
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 281
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    return v0
.end method

.method public getRenderHeight()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderHeight:I

    return v0
.end method

.method public getRenderWidth()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderWidth:I

    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    return v0
.end method

.method public abstract releaseBitmapIfNeeded()V
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    monitor-enter p0

    .line 123
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 124
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ExtTexture;->recycle()V

    .line 127
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 132
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 133
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/RawTexture;->recycle()V

    .line 137
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 139
    :cond_2
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 140
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mGLSurfaceStatusBar:Lcom/android/camera/GLSurfaceStatusBar;

    invoke-virtual {v0}, Lcom/android/camera/GLSurfaceStatusBar;->release()V

    .line 141
    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->releaseBitmapIfNeeded()V

    .line 142
    return-void

    .line 124
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mGLSurfaceStatusBar:Lcom/android/camera/GLSurfaceStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/GLSurfaceStatusBar;->setOrientation(I)V

    .line 291
    return-void
.end method

.method public setRenderSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 223
    iput p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    .line 224
    iput p2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    .line 225
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateRenderSize()V

    .line 226
    return-void
.end method

.method public setSize(II)V
    .locals 9
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v8, 0x4110

    const/high16 v4, 0x3f80

    const/high16 v7, 0x3f40

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 155
    if-le p1, p2, :cond_0

    .line 156
    move v2, p1

    .line 157
    .local v2, tmp:I
    move p1, p2

    .line 158
    move p2, v2

    .line 160
    .end local v2           #tmp:I
    :cond_0
    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->isNearRatio16_9(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 161
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    .line 162
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 163
    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v3

    if-nez v3, :cond_3

    .line 164
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 165
    mul-int/lit8 v3, p1, 0x10

    mul-int/lit8 v4, p2, 0x9

    if-le v3, v4, :cond_2

    .line 166
    move v1, p1

    .line 167
    .local v1, oldWidth:I
    int-to-float v3, p2

    mul-float/2addr v3, v8

    const/high16 v4, 0x4180

    div-float/2addr v3, v4

    float-to-int p1, v3

    .line 168
    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 179
    .end local v1           #oldWidth:I
    :goto_0
    sget-boolean v3, Lcom/android/camera/Device;->IS_PAD1:Z

    if-eqz v3, :cond_1

    .line 180
    iput-boolean v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    .line 181
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 182
    int-to-float v3, p2

    mul-float/2addr v3, v7

    float-to-int p2, v3

    .line 183
    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    mul-float/2addr v3, v7

    iput v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    .line 217
    :cond_1
    :goto_1
    iput p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    .line 218
    iput p2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    .line 219
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateRenderSize()V

    .line 220
    return-void

    .line 170
    :cond_2
    move v0, p2

    .line 171
    .local v0, oldHeight:I
    int-to-float v3, p1

    const/high16 v4, 0x4180

    mul-float/2addr v3, v4

    div-float/2addr v3, v8

    float-to-int p2, v3

    .line 172
    int-to-float v3, p2

    int-to-float v4, v0

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_0

    .line 175
    .end local v0           #oldHeight:I
    :cond_3
    iput-boolean v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 176
    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 177
    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_0

    .line 186
    :cond_4
    iput-boolean v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 187
    iput-boolean v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    .line 188
    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v3

    if-nez v3, :cond_7

    .line 189
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 190
    mul-int/lit8 v3, p1, 0x4

    mul-int/lit8 v4, p2, 0x3

    if-le v3, v4, :cond_6

    .line 191
    move v1, p1

    .line 192
    .restart local v1       #oldWidth:I
    int-to-float v3, p2

    mul-float/2addr v3, v7

    float-to-int p1, v3

    .line 193
    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 205
    .end local v1           #oldWidth:I
    :goto_2
    sget-boolean v3, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v3, :cond_5

    .line 206
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 207
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 208
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    .line 209
    int-to-float v3, p1

    const/high16 v4, 0x4180

    mul-float/2addr v3, v4

    div-float/2addr v3, v8

    float-to-int p2, v3

    .line 210
    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    mul-float/2addr v3, v7

    iput v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 213
    :cond_5
    sget-boolean v3, Lcom/android/camera/Device;->IS_PAD1:Z

    if-eqz v3, :cond_1

    .line 214
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    goto :goto_1

    .line 195
    :cond_6
    move v0, p2

    .line 196
    .restart local v0       #oldHeight:I
    int-to-float v3, p1

    const/high16 v4, 0x4080

    mul-float/2addr v3, v4

    const/high16 v4, 0x4040

    div-float/2addr v3, v4

    float-to-int p2, v3

    .line 197
    int-to-float v3, p2

    int-to-float v4, v0

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_2

    .line 200
    .end local v0           #oldHeight:I
    :cond_7
    iput-boolean v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 201
    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 202
    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_2
.end method

.method public setVideoStabilizationCropped(Z)V
    .locals 1
    .parameter "cropped"

    .prologue
    .line 294
    invoke-static {}, Lcom/android/camera/Device;->isVideoStabilizationNeedCropped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iput-boolean p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mVideoStabilizationCropped:Z

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mVideoStabilizationCropped:Z

    goto :goto_0
.end method

.method protected updateTransformMatrix([F)V
    .locals 8
    .parameter "matrix"

    .prologue
    const/high16 v7, 0x3f00

    const/4 v6, 0x0

    const/high16 v5, -0x4100

    const/4 v4, 0x0

    .line 302
    const/high16 v1, 0x3f80

    .line 303
    .local v1, scaleX:F
    const/high16 v2, 0x3f80

    .line 304
    .local v2, scaleY:F
    const/4 v0, 0x0

    .line 305
    .local v0, change:Z
    iget-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mVideoStabilizationCropped:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 306
    sget v3, Lcom/android/camera/SurfaceTextureScreenNail;->MOVIE_SOLID_CROPPED_X:F

    mul-float/2addr v1, v3

    .line 307
    sget v3, Lcom/android/camera/SurfaceTextureScreenNail;->MOVIE_SOLID_CROPPED_Y:F

    mul-float/2addr v2, v3

    .line 308
    const/4 v0, 0x1

    .line 310
    :cond_0
    iget-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    if-eqz v3, :cond_1

    .line 311
    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    mul-float/2addr v1, v3

    .line 312
    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    mul-float/2addr v2, v3

    .line 313
    const/4 v0, 0x1

    .line 315
    :cond_1
    if-eqz v0, :cond_2

    .line 316
    invoke-static {p1, v4, v7, v7, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 317
    const/high16 v3, 0x3f80

    invoke-static {p1, v4, v1, v2, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 318
    invoke-static {p1, v4, v5, v5, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 320
    :cond_2
    return-void
.end method
