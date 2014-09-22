.class public Lcom/android/camera/ui/V6FaceBeautyPopup;
.super Lcom/android/camera/ui/V6AbstractSettingPopup;
.source "V6FaceBeautyPopup.java"

# interfaces
.implements Lcom/android/camera/ui/V6FaceBeautyBar$OnValueChangedListener;


# instance fields
.field private mBar:Lcom/android/camera/ui/V6FaceBeautyBar;

.field private mTexts:Lcom/android/camera/ui/V6FaceBeautyTexts;

.field private mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V
    .locals 1
    .parameter "preference"
    .parameter "p"

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/V6AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;)V

    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/V6FaceBeautyPopup;->mTexts:Lcom/android/camera/ui/V6FaceBeautyTexts;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6FaceBeautyTexts;->initialize(Lcom/android/camera/preferences/IconListPreference;)V

    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/V6FaceBeautyPopup;->mBar:Lcom/android/camera/ui/V6FaceBeautyBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6FaceBeautyBar;->initialize(Lcom/android/camera/preferences/IconListPreference;)V

    .line 37
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/android/camera/ui/V6AbstractSettingPopup;->onFinishInflate()V

    .line 22
    const v0, 0x7f0c003c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6FaceBeautyPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6FaceBeautyBar;

    iput-object v0, p0, Lcom/android/camera/ui/V6FaceBeautyPopup;->mBar:Lcom/android/camera/ui/V6FaceBeautyBar;

    .line 23
    const v0, 0x7f0c003d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6FaceBeautyPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6FaceBeautyTexts;

    iput-object v0, p0, Lcom/android/camera/ui/V6FaceBeautyPopup;->mTexts:Lcom/android/camera/ui/V6FaceBeautyTexts;

    .line 24
    iget-object v0, p0, Lcom/android/camera/ui/V6FaceBeautyPopup;->mBar:Lcom/android/camera/ui/V6FaceBeautyBar;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/V6FaceBeautyBar;->setOnValueChangedListener(Lcom/android/camera/ui/V6FaceBeautyBar$OnValueChangedListener;)V

    .line 25
    return-void
.end method

.method public onValueChanged(I)V
    .locals 6
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 49
    iget v0, p0, Lcom/android/camera/ui/V6FaceBeautyPopup;->mValue:I

    if-eq p1, v0, :cond_0

    .line 50
    iput p1, p0, Lcom/android/camera/ui/V6FaceBeautyPopup;->mValue:I

    .line 51
    iget-object v0, p0, Lcom/android/camera/ui/V6FaceBeautyPopup;->mTexts:Lcom/android/camera/ui/V6FaceBeautyTexts;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6FaceBeautyTexts;->setValue(I)V

    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/V6FaceBeautyPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, p1}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 54
    iget-object v0, p0, Lcom/android/camera/ui/V6FaceBeautyPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/V6FaceBeautyPopup;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x2

    new-instance v4, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/ui/V6FaceBeautyPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    :cond_0
    return-void
.end method

.method public reloadPreference()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/V6FaceBeautyPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/V6FaceBeautyPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6FaceBeautyPopup;->mValue:I

    .line 42
    iget-object v0, p0, Lcom/android/camera/ui/V6FaceBeautyPopup;->mTexts:Lcom/android/camera/ui/V6FaceBeautyTexts;

    iget v1, p0, Lcom/android/camera/ui/V6FaceBeautyPopup;->mValue:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6FaceBeautyTexts;->setValue(I)V

    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/V6FaceBeautyPopup;->mBar:Lcom/android/camera/ui/V6FaceBeautyBar;

    iget v1, p0, Lcom/android/camera/ui/V6FaceBeautyPopup;->mValue:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6FaceBeautyBar;->setValue(I)V

    .line 44
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/ui/V6FaceBeautyPopup;->mTexts:Lcom/android/camera/ui/V6FaceBeautyTexts;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/V6FaceBeautyTexts;->setOrientation(IZ)V

    .line 30
    return-void
.end method
