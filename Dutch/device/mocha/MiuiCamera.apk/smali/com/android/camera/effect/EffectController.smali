.class public Lcom/android/camera/effect/EffectController;
.super Ljava/lang/Object;
.source "EffectController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/EffectController$SurfaceCache;
    }
.end annotation


# static fields
.field public static final BUFFER_WIDTH:I

.field public static final SHOW_COUNT:I

.field public static final SURFACE_WIDTH:I

.field private static sInstance:Lcom/android/camera/effect/EffectController;


# instance fields
.field public mBlockCache:Ljava/nio/IntBuffer;

.field public mCache:[Lcom/android/camera/effect/EffectController$SurfaceCache;

.field public volatile mDisplayEndIndex:I

.field public volatile mDisplayShow:Z

.field public volatile mDisplayStartIndex:I

.field private mEffectEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectEntryValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectIndex:I

.field private mInvertFlag:I

.field private mNeedRectSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedScaleDownSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private mRectF:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    new-instance v0, Lcom/android/camera/effect/EffectController;

    invoke-direct {v0}, Lcom/android/camera/effect/EffectController;-><init>()V

    sput-object v0, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;

    .line 34
    sget-boolean v0, Lcom/android/camera/Device;->IS_TABLET:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    :goto_0
    sput v0, Lcom/android/camera/effect/EffectController;->SHOW_COUNT:I

    .line 35
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    sget v1, Lcom/android/camera/effect/EffectController;->SHOW_COUNT:I

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    sput v0, Lcom/android/camera/effect/EffectController;->SURFACE_WIDTH:I

    .line 36
    sget v0, Lcom/android/camera/effect/EffectController;->SURFACE_WIDTH:I

    int-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/android/camera/effect/EffectController;->BUFFER_WIDTH:I

    return-void

    .line 34
    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->mRectF:Landroid/graphics/RectF;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    .line 46
    iput-boolean v3, p0, Lcom/android/camera/effect/EffectController;->mDisplayShow:Z

    .line 47
    iput v3, p0, Lcom/android/camera/effect/EffectController;->mDisplayStartIndex:I

    .line 48
    sget v0, Lcom/android/camera/effect/EffectController;->SHOW_COUNT:I

    iput v0, p0, Lcom/android/camera/effect/EffectController;->mDisplayEndIndex:I

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectController;->getEffectGroup(Lcom/android/gallery3d/ui/GLCanvas;)Lcom/android/camera/effect/renders/RenderGroup;

    .line 56
    return-void
.end method

.method private addEntryItem(II)V
    .locals 2
    .parameter "strId"
    .parameter "id"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mEffectEntryValues:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method public static getInstance()Lcom/android/camera/effect/EffectController;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/camera/effect/EffectController;->sInstance:Lcom/android/camera/effect/EffectController;

    return-object v0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1
    .parameter "strId"

    .prologue
    .line 210
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allocateCache()V
    .locals 4

    .prologue
    .line 64
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mCache:[Lcom/android/camera/effect/EffectController$SurfaceCache;

    if-nez v1, :cond_0

    .line 65
    const/16 v1, 0xf

    new-array v1, v1, [Lcom/android/camera/effect/EffectController$SurfaceCache;

    iput-object v1, p0, Lcom/android/camera/effect/EffectController;->mCache:[Lcom/android/camera/effect/EffectController$SurfaceCache;

    .line 66
    sget v1, Lcom/android/camera/effect/EffectController;->BUFFER_WIDTH:I

    sget v2, Lcom/android/camera/effect/EffectController;->BUFFER_WIDTH:I

    mul-int/2addr v1, v2

    sget v2, Lcom/android/camera/effect/EffectController;->SHOW_COUNT:I

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/effect/EffectController;->mBlockCache:Ljava/nio/IntBuffer;

    .line 68
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mCache:[Lcom/android/camera/effect/EffectController$SurfaceCache;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mCache:[Lcom/android/camera/effect/EffectController$SurfaceCache;

    new-instance v2, Lcom/android/camera/effect/EffectController$SurfaceCache;

    invoke-direct {v2}, Lcom/android/camera/effect/EffectController$SurfaceCache;-><init>()V

    aput-object v2, v1, v0

    .line 70
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mCache:[Lcom/android/camera/effect/EffectController$SurfaceCache;

    aget-object v1, v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/camera/effect/EffectController$SurfaceCache;->mUpdateTime:J

    .line 71
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mCache:[Lcom/android/camera/effect/EffectController$SurfaceCache;

    aget-object v1, v1, v0

    sget v2, Lcom/android/camera/effect/EffectController;->BUFFER_WIDTH:I

    sget v3, Lcom/android/camera/effect/EffectController;->BUFFER_WIDTH:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/effect/EffectController$SurfaceCache;->mCache:Ljava/nio/IntBuffer;

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public getBlockCache()Ljava/nio/IntBuffer;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mBlockCache:Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public getCache(I)Lcom/android/camera/effect/EffectController$SurfaceCache;
    .locals 1
    .parameter "index"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mCache:[Lcom/android/camera/effect/EffectController$SurfaceCache;

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    if-ge p1, v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mCache:[Lcom/android/camera/effect/EffectController$SurfaceCache;

    aget-object v0, v0, p1

    .line 97
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayCount()I
    .locals 2

    .prologue
    .line 125
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mDisplayEndIndex:I

    iget v1, p0, Lcom/android/camera/effect/EffectController;->mDisplayStartIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getDisplayEndIndex()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mDisplayEndIndex:I

    return v0
.end method

.method public getDisplayStartIndex()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mDisplayStartIndex:I

    return v0
.end method

.method public getEffect()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    return v0
.end method

.method public getEffectGroup(Lcom/android/gallery3d/ui/GLCanvas;)Lcom/android/camera/effect/renders/RenderGroup;
    .locals 6
    .parameter "canvas"

    .prologue
    .line 220
    invoke-static {}, Lcom/android/camera/Device;->isSupporteShaderEffect()Z

    move-result v3

    if-nez v3, :cond_0

    .line 221
    const/4 v2, 0x0

    .line 355
    :goto_0
    return-object v2

    .line 223
    :cond_0
    new-instance v2, Lcom/android/camera/effect/renders/RenderGroup;

    invoke-direct {v2, p1}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 224
    .local v2, renderGroup:Lcom/android/camera/effect/renders/RenderGroup;
    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 225
    .local v0, addEntry:Z
    :goto_1
    const/4 v1, -0x1

    .line 226
    .local v1, id:I
    if-nez p1, :cond_1

    .line 227
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    .line 228
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/camera/effect/EffectController;->mEffectEntryValues:Ljava/util/ArrayList;

    .line 229
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    .line 230
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/camera/effect/EffectController;->mNeedScaleDownSet:Ljava/util/ArrayList;

    .line 231
    iget-object v3, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    const v4, 0x7f0d0092

    invoke-direct {p0, v4}, Lcom/android/camera/effect/EffectController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v3, p0, Lcom/android/camera/effect/EffectController;->mEffectEntryValues:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    const/4 v0, 0x1

    .line 237
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 238
    iget-object v3, p0, Lcom/android/camera/effect/EffectController;->mNeedScaleDownSet:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    if-eqz v0, :cond_3

    .line 240
    const v3, 0x7f0d0093

    invoke-direct {p0, v3, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 246
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 247
    if-eqz v0, :cond_4

    .line 248
    const v3, 0x7f0d0094

    invoke-direct {p0, v3, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 254
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 255
    if-eqz v0, :cond_5

    .line 256
    const v3, 0x7f0d0095

    invoke-direct {p0, v3, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 262
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 263
    if-eqz v0, :cond_6

    .line 264
    const v3, 0x7f0d0097

    invoke-direct {p0, v3, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 272
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 273
    iget-object v3, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    if-eqz v0, :cond_7

    .line 275
    const v3, 0x7f0d00a1

    invoke-direct {p0, v3, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 283
    :goto_6
    add-int/lit8 v1, v1, 0x1

    .line 284
    if-eqz v0, :cond_8

    .line 285
    const v3, 0x7f0d0099

    invoke-direct {p0, v3, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 291
    :goto_7
    add-int/lit8 v1, v1, 0x1

    .line 292
    iget-object v3, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    if-eqz v0, :cond_9

    .line 294
    const v3, 0x7f0d009c

    invoke-direct {p0, v3, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 300
    :goto_8
    add-int/lit8 v1, v1, 0x1

    .line 301
    if-eqz v0, :cond_a

    .line 302
    const v3, 0x7f0d0096

    invoke-direct {p0, v3, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 308
    :goto_9
    add-int/lit8 v1, v1, 0x1

    .line 309
    if-eqz v0, :cond_b

    .line 310
    const v3, 0x7f0d0098

    invoke-direct {p0, v3, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 316
    :goto_a
    add-int/lit8 v1, v1, 0x1

    .line 317
    if-eqz v0, :cond_c

    .line 318
    const v3, 0x7f0d009a

    invoke-direct {p0, v3, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 324
    :goto_b
    add-int/lit8 v1, v1, 0x1

    .line 325
    if-eqz v0, :cond_d

    .line 326
    const v3, 0x7f0d009b

    invoke-direct {p0, v3, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 332
    :goto_c
    add-int/lit8 v1, v1, 0x1

    .line 333
    if-eqz v0, :cond_e

    .line 334
    const v3, 0x7f0d009d

    invoke-direct {p0, v3, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 340
    :goto_d
    add-int/lit8 v1, v1, 0x1

    .line 341
    if-eqz v0, :cond_f

    .line 342
    const v3, 0x7f0d009e

    invoke-direct {p0, v3, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    .line 348
    :goto_e
    add-int/lit8 v1, v1, 0x1

    .line 349
    if-eqz v0, :cond_10

    .line 350
    const v3, 0x7f0d00a0

    invoke-direct {p0, v3, v1}, Lcom/android/camera/effect/EffectController;->addEntryItem(II)V

    goto/16 :goto_0

    .line 224
    .end local v0           #addEntry:Z
    .end local v1           #id:I
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 242
    .restart local v0       #addEntry:Z
    .restart local v1       #id:I
    :cond_3
    new-instance v3, Lcom/android/camera/effect/renders/GrayEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/GrayEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_2

    .line 250
    :cond_4
    new-instance v3, Lcom/android/camera/effect/renders/VividEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/VividEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_3

    .line 258
    :cond_5
    new-instance v3, Lcom/android/camera/effect/renders/YesteryearEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/YesteryearEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_4

    .line 266
    :cond_6
    new-instance v3, Lcom/android/camera/effect/renders/PipeRenderPair;

    new-instance v4, Lcom/android/camera/effect/renders/Gaussian2DEffectRender;

    invoke-direct {v4, p1, v1}, Lcom/android/camera/effect/renders/Gaussian2DEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    new-instance v5, Lcom/android/camera/effect/renders/SketchEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/SketchEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-direct {v3, p1, v4, v5}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_5

    .line 277
    :cond_7
    new-instance v3, Lcom/android/camera/effect/renders/PipeRenderPair;

    new-instance v4, Lcom/android/camera/effect/renders/XGaussianEffectRender;

    invoke-direct {v4, p1, v1}, Lcom/android/camera/effect/renders/XGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    new-instance v5, Lcom/android/camera/effect/renders/YGaussianEffectRender;

    invoke-direct {v5, p1, v1}, Lcom/android/camera/effect/renders/YGaussianEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-direct {v3, p1, v4, v5}, Lcom/android/camera/effect/renders/PipeRenderPair;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_6

    .line 287
    :cond_8
    new-instance v3, Lcom/android/camera/effect/renders/FishEyeEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/FishEyeEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_7

    .line 296
    :cond_9
    new-instance v3, Lcom/android/camera/effect/renders/MosaicEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/MosaicEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_8

    .line 304
    :cond_a
    new-instance v3, Lcom/android/camera/effect/renders/BrannanEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/BrannanEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_9

    .line 312
    :cond_b
    new-instance v3, Lcom/android/camera/effect/renders/SeventyEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/SeventyEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_a

    .line 320
    :cond_c
    new-instance v3, Lcom/android/camera/effect/renders/JStyleEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/JStyleEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_b

    .line 328
    :cond_d
    new-instance v3, Lcom/android/camera/effect/renders/XProIIEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/XProIIEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_c

    .line 336
    :cond_e
    new-instance v3, Lcom/android/camera/effect/renders/EarlyBirdEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/EarlyBirdEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_d

    .line 344
    :cond_f
    new-instance v3, Lcom/android/camera/effect/renders/NashvileEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/NashvileEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_e

    .line 352
    :cond_10
    new-instance v3, Lcom/android/camera/effect/renders/MirrorEffectRender;

    invoke-direct {v3, p1, v1}, Lcom/android/camera/effect/renders/MirrorEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    goto/16 :goto_0
.end method

.method public getEffectRectF()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 159
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mRectF:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public getEntries()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 102
    .local v0, result:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 103
    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 108
    .local v0, result:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/effect/EffectController;->mEffectEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 109
    return-object v0
.end method

.method public getInvertFlag()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mInvertFlag:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mOrientation:I

    return v0
.end method

.method public hasEffect()Z
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lcom/android/camera/Device;->isSupporteShaderEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisplayShow()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/camera/effect/EffectController;->mDisplayShow:Z

    return v0
.end method

.method public isNeedRect()Z
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/EffectController;->isNeedRect(I)Z

    move-result v0

    return v0
.end method

.method public isNeedRect(I)Z
    .locals 3
    .parameter "index"

    .prologue
    .line 184
    invoke-static {}, Lcom/android/camera/Device;->isSupporteShaderEffect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    iget-object v2, p0, Lcom/android/camera/effect/EffectController;->mNeedRectSet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 186
    .local v0, i:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 187
    const/4 v2, 0x1

    .line 191
    .end local v0           #i:Ljava/lang/Integer;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public needDownScale(I)Z
    .locals 3
    .parameter "index"

    .prologue
    .line 199
    invoke-static {}, Lcom/android/camera/Device;->isSupporteShaderEffect()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/android/camera/effect/EffectController;->mNeedScaleDownSet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 201
    .local v0, i:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 202
    const/4 v2, 0x1

    .line 206
    .end local v0           #i:Ljava/lang/Integer;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->mCache:[Lcom/android/camera/effect/EffectController$SurfaceCache;

    .line 151
    iput-object v0, p0, Lcom/android/camera/effect/EffectController;->mBlockCache:Ljava/nio/IntBuffer;

    .line 152
    return-void
.end method

.method public setDisplayEndtIndex(I)V
    .locals 0
    .parameter "end"

    .prologue
    .line 133
    iput p1, p0, Lcom/android/camera/effect/EffectController;->mDisplayEndIndex:I

    .line 134
    return-void
.end method

.method public setDisplayShow(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/camera/effect/EffectController;->mDisplayShow:Z

    .line 138
    invoke-virtual {p0}, Lcom/android/camera/effect/EffectController;->allocateCache()V

    .line 139
    return-void
.end method

.method public setDisplayStartIndex(I)V
    .locals 0
    .parameter "start"

    .prologue
    .line 129
    iput p1, p0, Lcom/android/camera/effect/EffectController;->mDisplayStartIndex:I

    .line 130
    return-void
.end method

.method public setEffect(I)V
    .locals 0
    .parameter "effect"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/camera/effect/EffectController;->mEffectIndex:I

    .line 83
    return-void
.end method

.method public setEffectRect(Landroid/graphics/RectF;)V
    .locals 1
    .parameter "rectF"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/camera/effect/EffectController;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 156
    return-void
.end method

.method public setInvertFlag(I)V
    .locals 0
    .parameter "invert"

    .prologue
    .line 163
    iput p1, p0, Lcom/android/camera/effect/EffectController;->mInvertFlag:I

    .line 164
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 171
    iput p1, p0, Lcom/android/camera/effect/EffectController;->mOrientation:I

    .line 172
    return-void
.end method
