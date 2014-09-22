.class public Lcom/android/camera/ui/V6PreviewFrame;
.super Landroid/widget/RelativeLayout;
.source "V6PreviewFrame.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field private mAspectRatio:D

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field public mReferenceGrid:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const-wide v0, 0x3ffc71c71c71c71cL

    iput-wide v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:D

    .line 25
    return-void
.end method

.method private isReferenceLineEnabled()Z
    .locals 3

    .prologue
    .line 93
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_camera_referenceline_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public enableControls(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 55
    return-void
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "what"
    .parameter "sender"
    .parameter "extra1"
    .parameter "extra2"

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 68
    const v0, 0x7f0c0045

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Landroid/view/View;

    .line 69
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6PreviewFrame;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 70
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "oldLeft"
    .parameter "oldTop"
    .parameter "oldRight"
    .parameter "oldBottom"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x1

    const v2, 0x7f0c0044

    const/4 v3, 0x2

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    :cond_0
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewFrame;->updatePreviewGrid(Z)V

    .line 114
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const v2, 0x7f0c0044

    const/4 v3, 0x2

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    :cond_0
    return-void
.end method

.method public setAspectRatio(D)V
    .locals 4
    .parameter "ratio"

    .prologue
    .line 73
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 75
    :cond_0
    iget-wide v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:D

    sub-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f847ae147ae147bL

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 76
    iput-wide p1, p0, Lcom/android/camera/ui/V6PreviewFrame;->mAspectRatio:D

    .line 77
    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewFrame;->requestLayout()V

    .line 79
    :cond_1
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewFrame;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 99
    return-void
.end method

.method public updatePreviewGrid(Z)V
    .locals 2
    .parameter "full"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewFrame;->isReferenceLineEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6PreviewFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isScanQRCodeIntent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Landroid/view/View;

    const v1, 0x7f0201bd

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceGrid:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
