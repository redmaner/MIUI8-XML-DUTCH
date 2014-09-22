.class public Lcom/android/camera/VideoCameraPreferenceActivity;
.super Lcom/android/camera/BasePreferenceActivity;
.source "VideoCameraPreferenceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPreferenceXml(Z)I
    .locals 1
    .parameter "isSimpleLayoutMode"

    .prologue
    .line 7
    const/high16 v0, 0x7f06

    return v0
.end method

.method protected onSettingChanged(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 12
    sget-object v0, Lcom/android/camera/CameraSettings;->sVideoChangeManager:Lcom/android/camera/ChangeManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/ChangeManager;->request(I)V

    .line 13
    return-void
.end method
