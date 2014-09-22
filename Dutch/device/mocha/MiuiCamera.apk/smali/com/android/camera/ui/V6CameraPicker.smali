.class public Lcom/android/camera/ui/V6CameraPicker;
.super Lcom/android/camera/ui/V6TopAnimationImageView;
.source "V6CameraPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCameraFacing:I

.field private mEnabled:Z

.field private mPreference:Lcom/android/camera/preferences/ListPreference;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6TopAnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    .line 26
    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 27
    .local v0, inflater:Lcom/android/camera/preferences/PreferenceInflater;
    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/ListPreference;

    iput-object v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    .line 28
    return-void
.end method

.method private updateLayout()V
    .locals 8

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xb

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v0

    .line 39
    .local v0, isFrontCamera:Z
    invoke-virtual {p0}, Lcom/android/camera/ui/V6CameraPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 41
    .local v1, p1:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v2

    .line 42
    .local v2, rules1:[I
    sget-boolean v3, Lcom/android/camera/Device;->IS_PAD1:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    aput v5, v2, v7

    .line 44
    aput v4, v2, v6

    .line 49
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6CameraPicker;->requestLayout()V

    .line 50
    return-void

    .line 46
    :cond_1
    aput v4, v2, v7

    .line 47
    aput v5, v2, v6

    goto :goto_0
.end method


# virtual methods
.method public enableControls(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6CameraPicker;->setEnabled(Z)V

    .line 61
    iput-boolean p1, p0, Lcom/android/camera/ui/V6CameraPicker;->mEnabled:Z

    .line 62
    return-void
.end method

.method public onCameraOpen()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 66
    invoke-super {p0}, Lcom/android/camera/ui/V6TopAnimationImageView;->onCameraOpen()V

    .line 67
    invoke-direct {p0}, Lcom/android/camera/ui/V6CameraPicker;->updateLayout()V

    .line 68
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    .line 69
    .local v1, cameraInfo:[Landroid/hardware/Camera$CameraInfo;
    array-length v5, v1

    .line 70
    .local v5, numOfCameras:I
    if-ge v5, v9, :cond_0

    .line 71
    iput-boolean v7, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    .line 72
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/android/camera/ui/V6CameraPicker;->setVisibility(I)V

    .line 97
    :goto_0
    return-void

    .line 76
    :cond_0
    new-array v2, v9, [Ljava/lang/CharSequence;

    .line 77
    .local v2, entryValues:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v8, v1

    if-ge v3, v8, :cond_1

    .line 78
    aget-object v8, v1, v3

    iget v8, v8, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v8, v6, :cond_2

    move v4, v6

    .line 81
    .local v4, index:I
    :goto_2
    aget-object v8, v2, v4

    if-nez v8, :cond_4

    .line 82
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v4

    .line 83
    if-ne v4, v6, :cond_3

    move v8, v7

    :goto_3
    aget-object v8, v2, v8

    if-eqz v8, :cond_4

    .line 86
    .end local v4           #index:I
    :cond_1
    iget-object v8, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {v8, v2}, Lcom/android/camera/preferences/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 87
    iput-boolean v6, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    .line 88
    invoke-virtual {p0, v7}, Lcom/android/camera/ui/V6CameraPicker;->setVisibility(I)V

    .line 89
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6CameraPicker;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v8, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {v8}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, cameraId:Ljava/lang/String;
    aget-object v8, v2, v6

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 93
    iput v6, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    goto :goto_0

    .end local v0           #cameraId:Ljava/lang/String;
    :cond_2
    move v4, v7

    .line 78
    goto :goto_2

    .restart local v4       #index:I
    :cond_3
    move v8, v6

    .line 83
    goto :goto_3

    .line 77
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 95
    .end local v4           #index:I
    .restart local v0       #cameraId:Ljava/lang/String;
    :cond_5
    iput v7, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mEnabled:Z

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    if-nez v0, :cond_3

    const/4 v6, 0x1

    .line 105
    .local v6, newCameraIndex:I
    :goto_1
    iget v7, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    .line 106
    .local v7, oldFacing:I
    iput v6, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    .line 107
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 109
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const v2, 0x7f0c0034

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    iput v7, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    iget-object v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mPreference:Lcom/android/camera/preferences/ListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/ui/V6CameraPicker;->mCameraFacing:I

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .end local v6           #newCameraIndex:I
    .end local v7           #oldFacing:I
    :cond_3
    move v6, v1

    .line 102
    goto :goto_1
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Lcom/android/camera/ui/V6TopAnimationImageView;->onCreate()V

    .line 34
    invoke-direct {p0}, Lcom/android/camera/ui/V6CameraPicker;->updateLayout()V

    .line 35
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/android/camera/ui/V6TopAnimationImageView;->onResume()V

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6CameraPicker;->setVisibility(I)V

    .line 56
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraPicker;->mVisible:Z

    if-nez v0, :cond_0

    .line 125
    const/16 p1, 0x8

    .line 127
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/V6TopAnimationImageView;->setVisibility(I)V

    .line 128
    return-void
.end method
