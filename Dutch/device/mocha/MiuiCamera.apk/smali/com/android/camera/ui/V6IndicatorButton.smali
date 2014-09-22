.class public Lcom/android/camera/ui/V6IndicatorButton;
.super Lcom/android/camera/ui/V6AbstractIndicator;
.source "V6IndicatorButton.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispacher;


# instance fields
.field private mOverrideValue:Ljava/lang/String;

.field private mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6AbstractIndicator;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->isPopupVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->dismiss()V

    .line 102
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .parameter "what"
    .parameter "sender"
    .parameter "receiver"
    .parameter "extra1"
    .parameter "extra2"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;Landroid/view/ViewGroup;II)V
    .locals 0
    .parameter "preference"
    .parameter "p"
    .parameter "popupRoot"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 30
    invoke-super/range {p0 .. p5}, Lcom/android/camera/ui/V6AbstractIndicator;->initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;Landroid/view/ViewGroup;II)V

    .line 31
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6IndicatorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method

.method protected initializePopup()V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopupRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 119
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopupRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 121
    :cond_0
    return-void
.end method

.method public isPopupVisible()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->showPopup()V

    .line 55
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 4
    .parameter "keyvalues"

    .prologue
    .line 35
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/ui/V6IndicatorButton;->mOverrideValue:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 37
    aget-object v1, p1, v0

    .line 38
    .local v1, key:Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    aget-object v2, p1, v3

    .line 39
    .local v2, value:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 40
    iput-object v2, p0, Lcom/android/camera/ui/V6IndicatorButton;->mOverrideValue:Ljava/lang/String;

    .line 41
    if-nez v2, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/V6IndicatorButton;->setEnabled(Z)V

    .line 45
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->reloadPreference()V

    .line 46
    return-void

    .line 41
    .restart local v1       #key:Ljava/lang/String;
    .restart local v2       #value:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 36
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public reloadPreference()V
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->updateTitle()V

    .line 125
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->reloadPreference()V

    .line 126
    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 129
    const-string v0, "pref_camera_shader_coloreffect_key"

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->requestRender()V

    .line 134
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractIndicator;->setOrientation(IZ)V

    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    .line 64
    :cond_0
    return-void
.end method

.method public showPopup()V
    .locals 10

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->initializePopup()V

    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v4

    move v2, v1

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    iget v2, p0, Lcom/android/camera/ui/V6IndicatorButton;->mOrientation:I

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setOrientation(IZ)V

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/V6IndicatorButton;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->show()V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/V6IndicatorButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v8

    move v6, v1

    move v7, v3

    move-object v9, p0

    invoke-interface/range {v4 .. v9}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method
