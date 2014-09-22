.class public Lcom/android/camera/ui/V6ThumbnailButton;
.super Lcom/android/camera/ui/V6BottomAnimationViewGroup;
.source "V6ThumbnailButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BORDER:I


# instance fields
.field public mBackground:Lcom/android/camera/ui/RotateImageView;

.field private mEnabled:Z

.field public mImage:Lcom/android/camera/ui/RotateImageView;

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/high16 v0, 0x4080

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6ThumbnailButton;->BORDER:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method


# virtual methods
.method public enableControls(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mBackground:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 79
    iput-boolean p1, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mEnabled:Z

    .line 80
    return-void
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 101
    iget-object v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mEnabled:Z

    if-nez v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const v2, 0x7f0c0029

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->onCreate()V

    .line 52
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 30
    invoke-super {p0}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->onFinishInflate()V

    .line 31
    const v1, 0x7f0c002a

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mBackground:Lcom/android/camera/ui/RotateImageView;

    .line 32
    const v1, 0x7f0c002b

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    .line 33
    iget-object v1, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mBackground:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v1, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 35
    .local v0, layout:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mBackground:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1}, Lcom/android/camera/ui/RotateImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sget v2, Lcom/android/camera/ui/V6ThumbnailButton;->BORDER:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 36
    iget-object v1, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/RotateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/android/camera/ui/V6ThumbnailButton;->clearAnimation()V

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    .line 58
    .local v0, activity:Lcom/android/camera/ActivityBase;
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isVideoCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mVisible:Z

    .line 59
    iget-boolean v1, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mVisible:Z

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6ThumbnailButton;->setVisibility(I)V

    .line 64
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 58
    goto :goto_0

    .line 62
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6ThumbnailButton;->setVisibility(I)V

    goto :goto_1
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 97
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mBackground:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 86
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mVisible:Z

    if-nez v0, :cond_0

    const/16 p1, 0x8

    .line 91
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6BottomAnimationViewGroup;->setVisibility(I)V

    .line 92
    return-void
.end method

.method public updateThumbnail(Lcom/android/camera/Thumbnail;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {p1}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 47
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/V6ThumbnailButton;->mImage:Lcom/android/camera/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method
