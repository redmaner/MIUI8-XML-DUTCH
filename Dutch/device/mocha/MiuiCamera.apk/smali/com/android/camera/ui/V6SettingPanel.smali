.class public Lcom/android/camera/ui/V6SettingPanel;
.super Landroid/widget/RelativeLayout;
.source "V6SettingPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/android/camera/ui/MessageDispacher;
.implements Lcom/android/camera/ui/Rotatable;
.implements Lcom/android/camera/ui/V6FunctionUI;


# static fields
.field private static final DEFAULT_COLUMN_COUNT:I

.field private static final DEFAULT_ROW_COUNT:I


# instance fields
.field private mAnimationIn:Landroid/view/animation/Animation;

.field private mAnimationInCallback:Ljava/lang/Runnable;

.field private mAnimationOut:Landroid/view/animation/Animation;

.field private mAnimationOutCallback:Ljava/lang/Runnable;

.field private mDisabledIndicator:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDismissButton:Lcom/android/camera/ui/RotateImageView;

.field private mDismissButtonHeight:I

.field private mEnabled:Z

.field private mIndicatorWidth:I

.field private mIndicators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ui/V6IndicatorButton;",
            ">;"
        }
    .end annotation
.end field

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field public mOrientation:I

.field public mPopupParent:Landroid/view/ViewGroup;

.field private mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

.field public mSettingView:Lcom/android/camera/ui/ScreenView;

.field private mSettingViewHeight:I

.field public mSettingViewParent:Landroid/view/View;

.field private mShowPopupFromOther:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 39
    sget-boolean v0, Lcom/android/camera/Device;->IS_TABLET:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    :goto_0
    sput v0, Lcom/android/camera/ui/V6SettingPanel;->DEFAULT_COLUMN_COUNT:I

    .line 40
    sget-boolean v0, Lcom/android/camera/Device;->IS_TABLET:Z

    if-eqz v0, :cond_0

    :cond_0
    sput v1, Lcom/android/camera/ui/V6SettingPanel;->DEFAULT_ROW_COUNT:I

    return-void

    .line 39
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mIndicators:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mDisabledIndicator:Ljava/util/Set;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mIndicators:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mDisabledIndicator:Ljava/util/Set;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/V6SettingPanel;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mAnimationIn:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/V6SettingPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/camera/ui/V6SettingPanel;->hidePopup()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/V6SettingPanel;)Lcom/android/camera/ui/MessageDispacher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    return-object v0
.end method

.method private filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V
    .locals 2
    .parameter "group"
    .parameter "pref"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/preferences/PreferenceGroup;",
            "Lcom/android/camera/preferences/ListPreference;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 538
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 539
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/V6SettingPanel;->removePreference(Lcom/android/camera/preferences/PreferenceGroup;Ljava/lang/String;)Z

    .line 550
    :goto_0
    return-void

    .line 543
    :cond_1
    invoke-virtual {p2, p3}, Lcom/android/camera/preferences/ListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 544
    invoke-virtual {p2}, Lcom/android/camera/preferences/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_2

    .line 545
    invoke-virtual {p2}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/V6SettingPanel;->removePreference(Lcom/android/camera/preferences/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0

    .line 549
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/camera/ui/V6SettingPanel;->resetIfInvalid(Lcom/android/camera/preferences/ListPreference;)V

    goto :goto_0
.end method

.method private hasKey(Ljava/lang/String;)Z
    .locals 3
    .parameter "key"

    .prologue
    .line 579
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPanel;->mKeys:Ljava/util/List;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 580
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPanel;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 581
    .local v1, s:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 582
    const/4 v2, 0x1

    .line 586
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private hidePopup()Z
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6SettingPanel;->hidePopup(Lcom/android/camera/ui/V6IndicatorButton;)Z

    move-result v0

    return v0
.end method

.method private hidePopup(Lcom/android/camera/ui/V6IndicatorButton;)Z
    .locals 4
    .parameter "but"

    .prologue
    .line 285
    const/4 v1, 0x0

    .line 286
    .local v1, result:Z
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingPanel;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/V6IndicatorButton;

    .line 287
    .local v2, v:Lcom/android/camera/ui/V6IndicatorButton;
    if-eqz p1, :cond_1

    if-eq v2, p1, :cond_0

    .line 288
    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/ui/V6IndicatorButton;->dismissPopup()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 289
    const/4 v1, 0x1

    goto :goto_0

    .line 292
    .end local v2           #v:Lcom/android/camera/ui/V6IndicatorButton;
    :cond_2
    return v1
.end method

.method private initPreference()V
    .locals 11

    .prologue
    .line 495
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v1

    .line 496
    .local v1, cameraId:I
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 497
    .local v4, parameters:Landroid/hardware/Camera$Parameters;
    new-instance v3, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPanel;->mContext:Landroid/content/Context;

    invoke-direct {v3, v9}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 498
    .local v3, inflater:Lcom/android/camera/preferences/PreferenceInflater;
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v9

    if-eqz v9, :cond_6

    const v9, 0x7f060006

    :goto_0
    invoke-virtual {v3, v9}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v9

    check-cast v9, Lcom/android/camera/preferences/PreferenceGroup;

    iput-object v9, p0, Lcom/android/camera/ui/V6SettingPanel;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    .line 501
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPanel;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string v10, "pref_video_quality_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v7

    .line 502
    .local v7, videoQuality:Lcom/android/camera/preferences/ListPreference;
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPanel;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string v10, "pref_video_time_lapse_frame_interval_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v6

    .line 503
    .local v6, timeLapseInterval:Lcom/android/camera/preferences/ListPreference;
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPanel;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string v10, "pref_camera_whitebalance_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v8

    .line 504
    .local v8, whiteBalance:Lcom/android/camera/preferences/ListPreference;
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPanel;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string v10, "pref_camera_scenemode_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v5

    .line 505
    .local v5, sceneMode:Lcom/android/camera/preferences/ListPreference;
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPanel;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string v10, "pref_camera_coloreffect_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v2

    .line 506
    .local v2, colorEffect:Lcom/android/camera/preferences/ListPreference;
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPanel;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string v10, "pref_camera_focus_mode_key"

    invoke-virtual {v9, v10}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v0

    .line 510
    .local v0, cameraFocusMode:Lcom/android/camera/preferences/ListPreference;
    if-eqz v7, :cond_0

    .line 511
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPanel;->mContext:Landroid/content/Context;

    check-cast v9, Lcom/android/camera/ActivityBase;

    invoke-virtual {v9}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v9

    const v10, 0x7f080001

    invoke-interface {v9, v10}, Lcom/android/camera/module/Module;->getDefaultPreferenceId(I)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/camera/preferences/ListPreference;->setEntryValues(I)V

    .line 513
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPanel;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    invoke-static {v4, v1}, Lcom/android/camera/CameraSettings;->getSupportedVideoQuality(Landroid/hardware/Camera$Parameters;I)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {p0, v9, v7, v10}, Lcom/android/camera/ui/V6SettingPanel;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    .line 516
    :cond_0
    if-eqz v8, :cond_1

    .line 517
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPanel;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v9, v8, v10}, Lcom/android/camera/ui/V6SettingPanel;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    .line 520
    :cond_1
    if-eqz v5, :cond_2

    .line 521
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPanel;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v9, v5, v10}, Lcom/android/camera/ui/V6SettingPanel;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    .line 525
    :cond_2
    if-eqz v2, :cond_3

    .line 526
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPanel;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v9, v2, v10}, Lcom/android/camera/ui/V6SettingPanel;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    .line 530
    :cond_3
    if-eqz v0, :cond_4

    .line 531
    iget-object v9, p0, Lcom/android/camera/ui/V6SettingPanel;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v9, v0, v10}, Lcom/android/camera/ui/V6SettingPanel;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    .line 534
    :cond_4
    if-eqz v6, :cond_5

    invoke-direct {p0, v6}, Lcom/android/camera/ui/V6SettingPanel;->resetIfInvalid(Lcom/android/camera/preferences/ListPreference;)V

    .line 535
    :cond_5
    return-void

    .line 498
    .end local v0           #cameraFocusMode:Lcom/android/camera/preferences/ListPreference;
    .end local v2           #colorEffect:Lcom/android/camera/preferences/ListPreference;
    .end local v5           #sceneMode:Lcom/android/camera/preferences/ListPreference;
    .end local v6           #timeLapseInterval:Lcom/android/camera/preferences/ListPreference;
    .end local v7           #videoQuality:Lcom/android/camera/preferences/ListPreference;
    .end local v8           #whiteBalance:Lcom/android/camera/preferences/ListPreference;
    :cond_6
    const v9, 0x7f060001

    goto/16 :goto_0
.end method

.method private removeKey(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 590
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPanel;->mKeys:Ljava/util/List;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 591
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPanel;->mKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 592
    .local v1, s:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 593
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPanel;->mKeys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 598
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #s:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private removePreference(Lcom/android/camera/preferences/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5
    .parameter "group"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    .line 561
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p1}, Lcom/android/camera/preferences/PreferenceGroup;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 562
    invoke-virtual {p1, v1}, Lcom/android/camera/preferences/PreferenceGroup;->get(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v0

    .line 563
    .local v0, child:Lcom/android/camera/preferences/CameraPreference;
    instance-of v3, v0, Lcom/android/camera/preferences/PreferenceGroup;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 564
    check-cast v3, Lcom/android/camera/preferences/PreferenceGroup;

    invoke-direct {p0, v3, p2}, Lcom/android/camera/ui/V6SettingPanel;->removePreference(Lcom/android/camera/preferences/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 575
    .end local v0           #child:Lcom/android/camera/preferences/CameraPreference;
    :goto_1
    return v3

    .line 568
    .restart local v0       #child:Lcom/android/camera/preferences/CameraPreference;
    :cond_0
    instance-of v3, v0, Lcom/android/camera/preferences/ListPreference;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/android/camera/preferences/ListPreference;

    .end local v0           #child:Lcom/android/camera/preferences/CameraPreference;
    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 570
    invoke-virtual {p1, v1}, Lcom/android/camera/preferences/PreferenceGroup;->removePreference(I)V

    .line 571
    invoke-direct {p0, p2}, Lcom/android/camera/ui/V6SettingPanel;->removeKey(Ljava/lang/String;)V

    move v3, v4

    .line 572
    goto :goto_1

    .line 561
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 575
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private resetIfInvalid(Lcom/android/camera/preferences/ListPreference;)V
    .locals 3
    .parameter "pref"

    .prologue
    .line 554
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 556
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/camera/preferences/ListPreference;->setValueIndex(I)V

    .line 558
    :cond_0
    return-void
.end method

.method private updatePrefence(Lcom/android/camera/preferences/IconListPreference;)V
    .locals 2
    .parameter "pref"

    .prologue
    .line 402
    const-string v0, "pref_camera_shader_coloreffect_key"

    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getEntries()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/IconListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 404
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getEntryValues()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/IconListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 406
    :cond_0
    return-void
.end method


# virtual methods
.method public backFirstPanel()Z
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mSettingViewParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mSettingViewParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Lcom/android/camera/ui/V6SettingPanel$3;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6SettingPanel$3;-><init>(Lcom/android/camera/ui/V6SettingPanel;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    .line 272
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mSettingViewParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6SettingPanel;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 273
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPanel;->reloadPreferences()V

    .line 274
    const/4 v0, 0x1

    .line 276
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public backTopControl()Z
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mSettingViewParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mSettingViewParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/android/camera/ui/V6SettingPanel$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6SettingPanel$2;-><init>(Lcom/android/camera/ui/V6SettingPanel;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    .line 250
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mSettingViewParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 251
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mSettingViewParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6SettingPanel;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 252
    const/4 v0, 0x1

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .parameter "what"
    .parameter "sender"
    .parameter "receiver"
    .parameter "extra1"
    .parameter "extra2"

    .prologue
    const/4 v6, 0x0

    .line 325
    iget-boolean v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mEnabled:Z

    if-nez v0, :cond_1

    .line 335
    .end local p4
    .end local p5
    :cond_0
    :goto_0
    return v6

    .line 326
    .restart local p4
    .restart local p5
    :cond_1
    if-nez p1, :cond_2

    .line 327
    check-cast p4, Ljava/lang/String;

    .end local p4
    invoke-virtual {p0, p4}, Lcom/android/camera/ui/V6SettingPanel;->toSecondPanel(Ljava/lang/String;)V

    .line 331
    :goto_1
    instance-of v0, p5, Lcom/android/camera/ui/V6IndicatorButton;

    if-eqz v0, :cond_0

    move-object v0, p5

    .line 332
    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6IndicatorButton;->reloadPreference()V

    .line 333
    check-cast p5, Lcom/android/camera/ui/V6IndicatorButton;

    .end local p5
    invoke-direct {p0, p5}, Lcom/android/camera/ui/V6SettingPanel;->hidePopup(Lcom/android/camera/ui/V6IndicatorButton;)Z

    goto :goto_0

    .line 329
    .restart local p4
    .restart local p5
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const v2, 0x7f0c004c

    const/4 v3, 0x2

    const/4 v5, 0x0

    move v1, p1

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public enableControls(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6SettingPanel;->setEnabled(Z)V

    .line 314
    iput-boolean p1, p0, Lcom/android/camera/ui/V6SettingPanel;->mEnabled:Z

    .line 315
    return-void
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "what"
    .parameter "sender"
    .parameter "extra1"
    .parameter "extra2"

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method protected initIndicators()V
    .locals 24

    .prologue
    .line 339
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/V6SettingPanel;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/camera/ActivityBase;

    invoke-virtual {v5}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/module/Module;->getSupportedSettingKeys()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/camera/ui/V6SettingPanel;->mKeys:Ljava/util/List;

    .line 340
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/V6SettingPanel;->mKeys:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 399
    :cond_0
    return-void

    .line 341
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/V6SettingPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/LayoutInflater;

    .line 343
    .local v19, inflater:Landroid/view/LayoutInflater;
    const/16 v21, 0x0

    .line 345
    .local v21, key:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v20

    .line 346
    .local v20, isFrontCamera:Z
    sget-boolean v5, Lcom/android/camera/Device;->IS_PAD1:Z

    if-eqz v5, :cond_5

    if-nez v20, :cond_5

    const-string v5, "pref_camera_shader_coloreffect_key"

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/camera/ui/V6SettingPanel;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 347
    const-string v21, "pref_camera_shader_coloreffect_key"

    .line 352
    :cond_2
    :goto_0
    if-eqz v21, :cond_3

    .line 353
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/V6SettingPanel;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v3

    check-cast v3, Lcom/android/camera/preferences/IconListPreference;

    .line 355
    .local v3, pref:Lcom/android/camera/preferences/IconListPreference;
    if-eqz v3, :cond_3

    .line 356
    const v5, 0x7f040010

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/V6SettingPanel;->mPopupParent:Landroid/view/ViewGroup;

    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/V6IndicatorButton;

    .line 359
    .local v2, b:Lcom/android/camera/ui/V6IndicatorButton;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/ui/V6SettingPanel;->updatePrefence(Lcom/android/camera/preferences/IconListPreference;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/V6SettingPanel;->mPopupParent:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/ui/V6IndicatorButton;->initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;Landroid/view/ViewGroup;II)V

    .line 361
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/camera/ui/V6SettingPanel;->removeKey(Ljava/lang/String;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/V6SettingPanel;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    .end local v2           #b:Lcom/android/camera/ui/V6IndicatorButton;
    .end local v3           #pref:Lcom/android/camera/preferences/IconListPreference;
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/V6SettingPanel;->mKeys:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 367
    sget v5, Lcom/android/camera/ui/V6SettingPanel;->DEFAULT_ROW_COUNT:I

    sget v6, Lcom/android/camera/ui/V6SettingPanel;->DEFAULT_COLUMN_COUNT:I

    mul-int v23, v5, v6

    .line 368
    .local v23, screenGridCount:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/V6SettingPanel;->mKeys:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    div-int v5, v5, v23

    add-int/lit8 v11, v5, 0x1

    .line 371
    .local v11, screenCount:I
    const/4 v10, 0x0

    .local v10, screenIndex:I
    :goto_1
    if-ge v10, v11, :cond_0

    .line 372
    new-instance v4, Lcom/android/camera/ui/V6StaticGridView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/V6SettingPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/camera/ui/V6SettingPanel;->DEFAULT_ROW_COUNT:I

    sget v7, Lcom/android/camera/ui/V6SettingPanel;->DEFAULT_COLUMN_COUNT:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/camera/ui/V6SettingPanel;->mIndicatorWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/ui/V6SettingPanel;->mIndicatorWidth:I

    invoke-direct/range {v4 .. v11}, Lcom/android/camera/ui/V6StaticGridView;-><init>(Landroid/content/Context;IIIIII)V

    .line 381
    .local v4, gridView:Lcom/android/camera/ui/V6StaticGridView;
    const/16 v18, 0x0

    .local v18, gridIndex:I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 382
    sget v5, Lcom/android/camera/ui/V6SettingPanel;->DEFAULT_ROW_COUNT:I

    mul-int/2addr v5, v10

    sget v6, Lcom/android/camera/ui/V6SettingPanel;->DEFAULT_COLUMN_COUNT:I

    mul-int/2addr v5, v6

    add-int v22, v18, v5

    .line 383
    .local v22, listIndex:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/V6SettingPanel;->mKeys:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v22

    if-lt v0, v5, :cond_6

    .line 397
    .end local v22           #listIndex:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/V6SettingPanel;->mSettingView:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v5, v4}, Lcom/android/camera/ui/ScreenView;->addView(Landroid/view/View;)V

    .line 371
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 348
    .end local v4           #gridView:Lcom/android/camera/ui/V6StaticGridView;
    .end local v10           #screenIndex:I
    .end local v11           #screenCount:I
    .end local v18           #gridIndex:I
    .end local v23           #screenGridCount:I
    :cond_5
    if-eqz v20, :cond_2

    const-string v5, "pref_camera_face_beauty_key"

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/camera/ui/V6SettingPanel;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 349
    const-string v21, "pref_camera_face_beauty_key"

    goto/16 :goto_0

    .line 386
    .restart local v4       #gridView:Lcom/android/camera/ui/V6StaticGridView;
    .restart local v10       #screenIndex:I
    .restart local v11       #screenCount:I
    .restart local v18       #gridIndex:I
    .restart local v22       #listIndex:I
    .restart local v23       #screenGridCount:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/V6SettingPanel;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/V6SettingPanel;->mKeys:Ljava/util/List;

    move/from16 v0, v22

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v3

    check-cast v3, Lcom/android/camera/preferences/IconListPreference;

    .line 388
    .restart local v3       #pref:Lcom/android/camera/preferences/IconListPreference;
    if-eqz v3, :cond_7

    .line 389
    const v5, 0x7f040010

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/V6IndicatorButton;

    .line 391
    .restart local v2       #b:Lcom/android/camera/ui/V6IndicatorButton;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/ui/V6SettingPanel;->updatePrefence(Lcom/android/camera/preferences/IconListPreference;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/ui/V6SettingPanel;->mPopupParent:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/V6SettingPanel;->mIndicatorWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/V6SettingPanel;->mIndicatorWidth:I

    move/from16 v17, v0

    move-object v12, v2

    move-object v13, v3

    move-object/from16 v14, p0

    invoke-virtual/range {v12 .. v17}, Lcom/android/camera/ui/V6IndicatorButton;->initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;Landroid/view/ViewGroup;II)V

    .line 393
    invoke-virtual {v4, v2}, Lcom/android/camera/ui/V6StaticGridView;->addView(Landroid/view/View;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ui/V6SettingPanel;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    .end local v2           #b:Lcom/android/camera/ui/V6IndicatorButton;
    :cond_7
    add-int/lit8 v18, v18, 0x1

    goto :goto_2
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 425
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mAnimationIn:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_1

    .line 426
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 428
    iput-object v1, p0, Lcom/android/camera/ui/V6SettingPanel;->mAnimationInCallback:Ljava/lang/Runnable;

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mAnimationOut:Landroid/view/animation/Animation;

    if-ne v0, p1, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 433
    iput-object v1, p0, Lcom/android/camera/ui/V6SettingPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 441
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 421
    return-void
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mShowPopupFromOther:Z

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPanel;->backFirstPanel()Z

    move-result v0

    .line 179
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPanel;->backTopControl()Z

    move-result v0

    goto :goto_0
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPanel;->reload()V

    .line 132
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPanel;->onBack()Z

    .line 172
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/camera/ui/V6SettingPanel;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 98
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/android/camera/ui/V6SettingPanel;->mIndicatorWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 99
    iget-object v1, p0, Lcom/android/camera/ui/V6SettingPanel;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6SettingPanel;->updateLayout(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPanel;->requestLayout()V

    .line 103
    return-void
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    .line 70
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 71
    const v0, 0x7f0c004d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mSettingViewParent:Landroid/view/View;

    .line 72
    const v0, 0x7f0c004e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ScreenView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mSettingView:Lcom/android/camera/ui/ScreenView;

    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mSettingView:Lcom/android/camera/ui/ScreenView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ScreenView;->setOverScrollRatio(F)V

    .line 74
    const v0, 0x7f0c004f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mPopupParent:Landroid/view/ViewGroup;

    .line 75
    const v0, 0x7f0c0050

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mDismissButton:Lcom/android/camera/ui/RotateImageView;

    .line 76
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mDismissButton:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const v6, -0x40b33333

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mAnimationIn:Landroid/view/animation/Animation;

    .line 80
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mAnimationIn:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mAnimationIn:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 84
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    const v8, -0x40b33333

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mAnimationOut:Landroid/view/animation/Animation;

    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mAnimationOut:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mAnimationOut:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sget v1, Lcom/android/camera/ui/V6SettingPanel;->DEFAULT_COLUMN_COUNT:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mIndicatorWidth:I

    .line 91
    iget v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mIndicatorWidth:I

    sget v1, Lcom/android/camera/ui/V6SettingPanel;->DEFAULT_ROW_COUNT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mSettingViewHeight:I

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mDismissButton:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mDismissButtonHeight:I

    .line 93
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mSettingViewParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 138
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/camera/ui/V6SettingPanel;->hidePopup()Z

    .line 143
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mDismissButton:Lcom/android/camera/ui/RotateImageView;

    const v1, 0x7f02018b

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 144
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 3
    .parameter "keyvalues"

    .prologue
    .line 485
    array-length v2, p1

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 486
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 489
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPanel;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    .line 490
    .local v0, b:Lcom/android/camera/ui/V6IndicatorButton;
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6IndicatorButton;->overrideSettings([Ljava/lang/String;)V

    goto :goto_0

    .line 492
    .end local v0           #b:Lcom/android/camera/ui/V6IndicatorButton;
    :cond_1
    return-void
.end method

.method public reload()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 153
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mSettingView:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenView;->removeAllScreens()V

    .line 154
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 155
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mSettingView:Lcom/android/camera/ui/ScreenView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ScreenView;->setCurrentScreen(I)V

    .line 157
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mDisabledIndicator:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 158
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 160
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6SettingPanel;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mSettingViewParent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mSettingView:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/ScreenView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 165
    invoke-direct {p0}, Lcom/android/camera/ui/V6SettingPanel;->initPreference()V

    .line 166
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPanel;->initIndicators()V

    .line 167
    return-void
.end method

.method public reloadPreferences()V
    .locals 4

    .prologue
    .line 477
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPanel;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    .line 478
    .local v0, b:Lcom/android/camera/ui/V6IndicatorButton;
    iget v2, p0, Lcom/android/camera/ui/V6SettingPanel;->mOrientation:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ui/V6IndicatorButton;->setOrientation(IZ)V

    .line 479
    invoke-virtual {v0}, Lcom/android/camera/ui/V6IndicatorButton;->reloadPreference()V

    goto :goto_0

    .line 481
    .end local v0           #b:Lcom/android/camera/ui/V6IndicatorButton;
    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 3

    .prologue
    .line 452
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPanel;->mIndicators:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 457
    :cond_0
    return-void

    .line 453
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPanel;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 454
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPanel;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/V6IndicatorButton;

    .line 455
    .local v1, view:Lcom/android/camera/ui/V6IndicatorButton;
    invoke-virtual {v1}, Lcom/android/camera/ui/V6IndicatorButton;->requestRender()V

    .line 453
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 410
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPanel;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    .line 411
    .local v0, i:Lcom/android/camera/ui/V6IndicatorButton;
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPanel;->mDisabledIndicator:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 412
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6IndicatorButton;->setEnabled(Z)V

    goto :goto_0

    .line 415
    .end local v0           #i:Lcom/android/camera/ui/V6IndicatorButton;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 416
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/camera/ui/V6SettingPanel;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 319
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 445
    iput p1, p0, Lcom/android/camera/ui/V6SettingPanel;->mOrientation:I

    .line 446
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/V6SettingPanel;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/android/camera/ui/V6SettingPanel;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/V6IndicatorButton;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/V6IndicatorButton;->setOrientation(IZ)V

    .line 446
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 449
    :cond_0
    return-void
.end method

.method public showPopup(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 296
    if-nez p1, :cond_1

    .line 302
    :cond_0
    return-void

    .line 297
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPanel;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    .line 298
    .local v0, i:Lcom/android/camera/ui/V6IndicatorButton;
    invoke-virtual {v0}, Lcom/android/camera/ui/V6IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 299
    invoke-virtual {v0}, Lcom/android/camera/ui/V6IndicatorButton;->showPopup()V

    goto :goto_0
.end method

.method public toFirstPanel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 184
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6SettingPanel;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mDismissButton:Lcom/android/camera/ui/RotateImageView;

    const v1, 0x7f02018b

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 186
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mSettingViewParent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mSettingView:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/ScreenView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mPopupParent:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mSettingViewParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 190
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mSettingViewParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6SettingPanel;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingPanel;->updateLayout(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPanel;->reloadPreferences()V

    .line 193
    return-void
.end method

.method public toSecondPanel(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 196
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6SettingPanel;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mSettingViewParent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mSettingView:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mShowPopupFromOther:Z

    .line 205
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mShowPopupFromOther:Z

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mSettingView:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/ScreenView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mDismissButton:Lcom/android/camera/ui/RotateImageView;

    const v1, 0x7f02018b

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 209
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mSettingViewParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 210
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mSettingViewParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6SettingPanel;->mAnimationIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6SettingPanel;->updateLayout(Ljava/lang/String;)V

    .line 226
    :goto_1
    return-void

    .line 202
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/ui/V6SettingPanel;->mShowPopupFromOther:Z

    goto :goto_0

    .line 214
    :cond_1
    new-instance v0, Lcom/android/camera/ui/V6SettingPanel$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/V6SettingPanel$1;-><init>(Lcom/android/camera/ui/V6SettingPanel;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mAnimationOutCallback:Ljava/lang/Runnable;

    .line 224
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingPanel;->mSettingViewParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6SettingPanel;->mAnimationOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public updateLayout(Ljava/lang/String;)V
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 106
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPanel;->mSettingViewParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 107
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez p1, :cond_1

    .line 108
    iget v2, p0, Lcom/android/camera/ui/V6SettingPanel;->mSettingViewHeight:I

    iget v3, p0, Lcom/android/camera/ui/V6SettingPanel;->mDismissButtonHeight:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 117
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingPanel;->mSettingViewParent:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    sget-boolean v2, Lcom/android/camera/Device;->IS_TABLET:Z

    if-nez v2, :cond_0

    .line 119
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getPictureSize()Lcom/android/camera/PictureSize;

    move-result-object v1

    .line 120
    .local v1, pictureSize:Lcom/android/camera/PictureSize;
    invoke-virtual {v1}, Lcom/android/camera/PictureSize;->isAspectRatio16_9()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 121
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/android/camera/ui/V6SettingPanel;->setPadding(IIII)V

    .line 126
    .end local v1           #pictureSize:Lcom/android/camera/PictureSize;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SettingPanel;->requestLayout()V

    .line 127
    return-void

    .line 110
    :cond_1
    const-string v2, "pref_camera_shader_coloreffect_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "pref_camera_coloreffect_key"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 112
    :cond_2
    sget v2, Lcom/android/camera/effect/EffectController;->SURFACE_WIDTH:I

    iget v3, p0, Lcom/android/camera/ui/V6SettingPanel;->mDismissButtonHeight:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 114
    :cond_3
    iget v2, p0, Lcom/android/camera/ui/V6SettingPanel;->mIndicatorWidth:I

    iget v3, p0, Lcom/android/camera/ui/V6SettingPanel;->mDismissButtonHeight:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 123
    .restart local v1       #pictureSize:Lcom/android/camera/PictureSize;
    :cond_4
    sget v2, Lcom/android/camera/CameraSettings;->TOP_CONTROL_HEIGHT:I

    invoke-virtual {p0, v4, v2, v4, v4}, Lcom/android/camera/ui/V6SettingPanel;->setPadding(IIII)V

    goto :goto_1
.end method
