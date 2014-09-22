.class public Lcom/android/camera/ui/ScreenView$SeekBarIndicator;
.super Landroid/widget/LinearLayout;
.source "ScreenView.java"

# interfaces
.implements Lcom/android/camera/ui/ScreenView$Indicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SeekBarIndicator"
.end annotation


# virtual methods
.method public fastOffset(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 461
    iget v0, p0, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->mRight:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->mLeft:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->mRight:I

    .line 462
    iput p1, p0, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->mLeft:I

    .line 463
    return-void
.end method
