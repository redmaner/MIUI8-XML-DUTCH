.class public Lcom/android/camera/ui/V6FlashButton;
.super Lcom/android/camera/ui/V6TopAnimationImageView;
.source "V6FlashButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mOverrideValue:Ljava/lang/String;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "FlashButton.java"

    sput-object v0, Lcom/android/camera/ui/V6FlashButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6TopAnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6FlashButton;->mVisible:Z

    .line 28
    return-void
.end method

.method private findCurrentIndex()I
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getPrefrenceSize()I
    .locals 2

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 161
    .local v0, entries:[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    array-length v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mOverrideValue:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public initializeXml(Z)V
    .locals 3
    .parameter "isVideo"

    .prologue
    .line 31
    if-eqz p1, :cond_0

    const v1, 0x7f060005

    .line 33
    .local v1, resId:I
    :goto_0
    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v2, p0, Lcom/android/camera/ui/V6FlashButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 34
    .local v0, inflater:Lcom/android/camera/preferences/PreferenceInflater;
    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/preferences/IconListPreference;

    iput-object v2, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 35
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->refreshValue()V

    .line 36
    return-void

    .line 31
    .end local v0           #inflater:Lcom/android/camera/preferences/PreferenceInflater;
    .end local v1           #resId:I
    :cond_0
    const v1, 0x7f060003

    goto :goto_0
.end method

.method public isOverridden()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraOpen()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 47
    invoke-super {p0}, Lcom/android/camera/ui/V6TopAnimationImageView;->onCameraOpen()V

    .line 48
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    iput-boolean v5, p0, Lcom/android/camera/ui/V6FlashButton;->mVisible:Z

    .line 50
    invoke-virtual {p0, v7}, Lcom/android/camera/ui/V6FlashButton;->setVisibility(I)V

    .line 77
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 54
    .local v0, parameter:Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_2

    move-object v1, v3

    .line 55
    .local v1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v6, :cond_3

    .line 56
    :cond_1
    iput-boolean v5, p0, Lcom/android/camera/ui/V6FlashButton;->mVisible:Z

    .line 57
    invoke-virtual {p0, v7}, Lcom/android/camera/ui/V6FlashButton;->setVisibility(I)V

    goto :goto_0

    .line 54
    .end local v1           #supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 60
    .restart local v1       #supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    iget-object v4, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4, v1}, Lcom/android/camera/preferences/IconListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 61
    iget-object v4, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    array-length v4, v4

    if-gt v4, v6, :cond_4

    .line 62
    iput-boolean v5, p0, Lcom/android/camera/ui/V6FlashButton;->mVisible:Z

    .line 63
    invoke-virtual {p0, v7}, Lcom/android/camera/ui/V6FlashButton;->setVisibility(I)V

    goto :goto_0

    .line 67
    :cond_4
    iput-object v3, p0, Lcom/android/camera/ui/V6FlashButton;->mOverrideValue:Ljava/lang/String;

    .line 68
    iput-boolean v6, p0, Lcom/android/camera/ui/V6FlashButton;->mVisible:Z

    .line 69
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/V6FlashButton;->setEnabled(Z)V

    .line 70
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6FlashButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {p0, v5}, Lcom/android/camera/ui/V6FlashButton;->setVisibility(I)V

    .line 72
    iget-object v3, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, value:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_5

    .line 74
    iget-object v3, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3, v5}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 76
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->refreshValue()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->toggle()V

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const/4 v1, 0x0

    const v2, 0x7f0c0031

    const/4 v3, 0x2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 89
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Lcom/android/camera/ui/V6TopAnimationImageView;->onResume()V

    .line 41
    sget-boolean v0, Lcom/android/camera/Device;->IS_PAD1:Z

    if-eqz v0, :cond_0

    .line 42
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6FlashButton;->setVisibility(I)V

    .line 44
    :cond_0
    return-void
.end method

.method public overrideSettings(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6FlashButton;->enableFilter(Z)V

    .line 141
    iput-object p1, p0, Lcom/android/camera/ui/V6FlashButton;->mOverrideValue:Ljava/lang/String;

    .line 142
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->refreshValue()V

    .line 143
    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6FlashButton;->setEnabled(Z)V

    .line 144
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public overrideValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/camera/ui/V6FlashButton;->mOverrideValue:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public refreshValue()V
    .locals 2

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v1, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/android/camera/ui/V6FlashButton;->findCurrentIndex()I

    move-result v0

    .line 130
    .local v0, index:I
    iget-object v1, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object v1

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6FlashButton;->setImageResource(I)V

    .line 132
    .end local v0           #index:I
    :cond_0
    return-void
.end method

.method public reloadPreference()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->refreshValue()V

    .line 125
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const/4 p1, 0x0

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 174
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6TopAnimationImageView;->setEnabled(Z)V

    .line 176
    :cond_1
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, p1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->refreshValue()V

    .line 153
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/camera/ui/V6FlashButton;->mVisible:Z

    if-nez v0, :cond_0

    const/16 p1, 0x8

    .line 95
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6TopAnimationImageView;->setVisibility(I)V

    .line 96
    return-void
.end method

.method public toggle()V
    .locals 4

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/V6FlashButton;->findCurrentIndex()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 112
    .local v0, index:I
    invoke-direct {p0}, Lcom/android/camera/ui/V6FlashButton;->getPrefrenceSize()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 113
    const/4 v0, 0x0

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/camera/ui/V6FlashButton;->refreshValue()V

    .line 118
    sget-object v1, Lcom/android/camera/ui/V6FlashButton;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch flash mode to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
