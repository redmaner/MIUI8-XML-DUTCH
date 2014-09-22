.class public abstract Lcom/android/camera/ui/V6AbstractSettingPopup;
.super Landroid/widget/RelativeLayout;
.source "V6AbstractSettingPopup.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field protected mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field protected mPreference:Lcom/android/camera/preferences/IconListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setVisibility(I)V

    .line 40
    return-void
.end method

.method public initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .parameter "preference"
    .parameter "p"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 17
    iput-object p2, p0, Lcom/android/camera/ui/V6AbstractSettingPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 18
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 28
    return-void
.end method

.method public abstract reloadPreference()V
.end method

.method public requestRender()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setVisibility(I)V

    .line 36
    return-void
.end method
