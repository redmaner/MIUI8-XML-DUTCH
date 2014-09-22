.class public Lcom/android/camera/GLSurfaceStatusBar;
.super Ljava/lang/Object;
.source "GLSurfaceStatusBar.java"


# static fields
.field private static final PREVIEW_TOP_PADDING:I

.field private static final ZOOM_HINT_TEXT_WIDTH:I


# instance fields
.field private mDrawVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/ui/BasicTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mEV:F

.field private mEvTexture:Lcom/android/gallery3d/ui/BasicTexture;

.field private mOrientation:I

.field private mPaint:Lcom/android/gallery3d/ui/GLPaint;

.field private mZoomScale:F

.field private mZoomTexture:Lcom/android/gallery3d/ui/BasicTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/GLSurfaceStatusBar;->PREVIEW_TOP_PADDING:I

    .line 17
    const/high16 v0, 0x4100

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    sput v0, Lcom/android/camera/GLSurfaceStatusBar;->ZOOM_HINT_TEXT_WIDTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mZoomScale:F

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mEV:F

    .line 25
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mDrawVector:Ljava/util/Vector;

    .line 26
    new-instance v0, Lcom/android/gallery3d/ui/GLPaint;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/GLPaint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mPaint:Lcom/android/gallery3d/ui/GLPaint;

    .line 33
    iget-object v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mPaint:Lcom/android/gallery3d/ui/GLPaint;

    const v1, 0x40ffffff

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLPaint;->setColor(I)V

    .line 34
    iget-object v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mPaint:Lcom/android/gallery3d/ui/GLPaint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLPaint;->setLineWidth(F)V

    .line 35
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mZoomTexture:Lcom/android/gallery3d/ui/BasicTexture;

    .line 43
    iput-object v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mEvTexture:Lcom/android/gallery3d/ui/BasicTexture;

    .line 44
    iget-object v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mDrawVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 45
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 38
    iput p1, p0, Lcom/android/camera/GLSurfaceStatusBar;->mOrientation:I

    .line 39
    return-void
.end method
