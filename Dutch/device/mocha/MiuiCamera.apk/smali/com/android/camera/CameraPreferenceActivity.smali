.class public Lcom/android/camera/CameraPreferenceActivity;
.super Lcom/android/camera/BasePreferenceActivity;
.source "CameraPreferenceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPreferenceXml(Z)I
    .locals 1
    .parameter "isSimpleLayoutMode"

    .prologue
    .line 9
    const/high16 v0, 0x7f06

    return v0
.end method

.method protected onSettingChanged(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 14
    sget-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/ChangeManager;->request(I)V

    .line 15
    return-void
.end method
