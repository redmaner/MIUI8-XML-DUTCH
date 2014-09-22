.class public abstract Lcom/android/gallery3d/ui/BasicTexture;
.super Ljava/lang/Object;
.source "BasicTexture.java"

# interfaces
.implements Lcom/android/gallery3d/ui/Texture;


# static fields
.field private static sAllTextures:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/gallery3d/ui/BasicTexture;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sInFinalizer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mCanvasRef:Lcom/android/gallery3d/ui/GLCanvas;

.field private mHasBorder:Z

.field protected mHeight:I

.field protected mId:I

.field protected mState:I

.field private mTextureHeight:I

.field private mTextureWidth:I

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/gallery3d/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    .line 52
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/gallery3d/ui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/gallery3d/ui/BasicTexture;-><init>(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 65
    return-void
.end method

.method protected constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 3
    .parameter "canvas"
    .parameter "id"
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mWidth:I

    .line 42
    iput v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mHeight:I

    .line 49
    iput-object v1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mCanvasRef:Lcom/android/gallery3d/ui/GLCanvas;

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/BasicTexture;->setAssociatedCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 56
    iput p2, p0, Lcom/android/gallery3d/ui/BasicTexture;->mId:I

    .line 57
    iput p3, p0, Lcom/android/gallery3d/ui/BasicTexture;->mState:I

    .line 58
    sget-object v1, Lcom/android/gallery3d/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, Lcom/android/gallery3d/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    monitor-exit v1

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private freeResource()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mCanvasRef:Lcom/android/gallery3d/ui/GLCanvas;

    .line 163
    .local v0, canvas:Lcom/android/gallery3d/ui/GLCanvas;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-interface {v0, p0}, Lcom/android/gallery3d/ui/GLCanvas;->deleteTexture(Lcom/android/gallery3d/ui/BasicTexture;)Z

    .line 166
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mState:I

    .line 167
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/BasicTexture;->setAssociatedCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 168
    return-void
.end method

.method public static invalidateAllTextures()V
    .locals 4

    .prologue
    .line 193
    sget-object v3, Lcom/android/gallery3d/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v3

    .line 194
    :try_start_0
    sget-object v2, Lcom/android/gallery3d/ui/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/BasicTexture;

    .line 195
    .local v1, t:Lcom/android/gallery3d/ui/BasicTexture;
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/gallery3d/ui/BasicTexture;->mState:I

    .line 196
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/BasicTexture;->setAssociatedCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V

    goto :goto_0

    .line 198
    .end local v1           #t:Lcom/android/gallery3d/ui/BasicTexture;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    return-void
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 132
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 133
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 172
    sget-object v0, Lcom/android/gallery3d/ui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    const-class v1, Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BasicTexture;->recycle()V

    .line 174
    sget-object v0, Lcom/android/gallery3d/ui/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 175
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mHeight:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mId:I

    return v0
.end method

.method public abstract getTarget()I
.end method

.method public getTextureHeight()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureHeight:I

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mWidth:I

    return v0
.end method

.method public isLoaded()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 143
    iget v1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/gallery3d/ui/BasicTexture;->freeResource()V

    .line 150
    return-void
.end method

.method protected setAssociatedCanvas(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mCanvasRef:Lcom/android/gallery3d/ui/GLCanvas;

    .line 69
    return-void
.end method

.method protected setBorder(Z)V
    .locals 0
    .parameter "hasBorder"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mHasBorder:Z

    .line 125
    return-void
.end method

.method public setSize(II)V
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v1, 0x1000

    .line 76
    iput p1, p0, Lcom/android/gallery3d/ui/BasicTexture;->mWidth:I

    .line 77
    iput p2, p0, Lcom/android/gallery3d/ui/BasicTexture;->mHeight:I

    .line 78
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mWidth:I

    iput v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureWidth:I

    .line 79
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mHeight:I

    iput v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureHeight:I

    .line 80
    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureWidth:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureHeight:I

    if-le v0, v1, :cond_1

    .line 81
    :cond_0
    const-string v0, "BasicTexture"

    const-string v1, "texture is too large: %d x %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/gallery3d/ui/BasicTexture;->mTextureHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    :cond_1
    return-void
.end method
