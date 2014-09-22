.class public Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawAttribute;
.source "DrawExtTexAttribute.java"


# instance fields
.field public mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

.field public mHeight:I

.field public mTextureTransform:[F

.field public mWidth:I

.field public mX:I

.field public mY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)V
    .locals 1
    .parameter "texture"
    .parameter "textureTransform"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    .line 13
    iput p3, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mX:I

    .line 14
    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mY:I

    .line 15
    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    .line 16
    iput p6, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    .line 17
    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 18
    iput-object p2, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    .line 19
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTarget:I

    .line 20
    return-void
.end method


# virtual methods
.method public init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;
    .locals 1
    .parameter "texture"
    .parameter "textureTransform"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 23
    iput p3, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mX:I

    .line 24
    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mY:I

    .line 25
    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    .line 26
    iput p6, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    .line 27
    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 28
    iput-object p2, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    .line 29
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTarget:I

    .line 30
    return-object p0
.end method
