.class Lcom/android/camera/ui/V6EffectCropView$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "V6EffectCropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6EffectCropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6EffectCropView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/V6EffectCropView;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/camera/ui/V6EffectCropView$MyGestureListener;->this$0:Lcom/android/camera/ui/V6EffectCropView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/V6EffectCropView;Lcom/android/camera/ui/V6EffectCropView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6EffectCropView$MyGestureListener;-><init>(Lcom/android/camera/ui/V6EffectCropView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 292
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->getInvertFlag()I

    move-result v0

    .line 293
    .local v0, invert:I
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/camera/effect/EffectController;->setInvertFlag(I)V

    .line 294
    return v2

    .line 293
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
