.class public Lcom/android/camera/ui/V6SettingButton;
.super Lcom/android/camera/ui/V6TopAnimationImageView;
.source "V6SettingButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6TopAnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method

.method private update()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingButton;->setVisibility(I)V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingButton;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Lcom/android/camera/ui/V6TopAnimationImageView;->onCameraOpen()V

    .line 31
    invoke-direct {p0}, Lcom/android/camera/ui/V6SettingButton;->update()V

    .line 32
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const v2, 0x7f0c0033

    const/4 v3, 0x3

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Lcom/android/camera/ui/V6TopAnimationImageView;->onFinishInflate()V

    .line 19
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6SettingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lcom/android/camera/ui/V6TopAnimationImageView;->onResume()V

    .line 25
    invoke-direct {p0}, Lcom/android/camera/ui/V6SettingButton;->update()V

    .line 26
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 57
    return-void
.end method
