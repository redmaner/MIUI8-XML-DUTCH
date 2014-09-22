.class Lcom/android/camera/ui/UIController$2;
.super Ljava/lang/Object;
.source "UIController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/UIController;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/UIController;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/UIController;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/camera/ui/UIController$2;->this$0:Lcom/android/camera/ui/UIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/camera/ui/UIController$2;->this$0:Lcom/android/camera/ui/UIController;

    iget-object v0, v0, Lcom/android/camera/ui/UIController;->mSettingPanel:Lcom/android/camera/ui/V6SettingPanel;

    const-string v1, "pref_camera_face_beauty_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SettingPanel;->showPopup(Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/UIController$2;->this$0:Lcom/android/camera/ui/UIController;

    iget-object v0, v0, Lcom/android/camera/ui/UIController;->mSettingPanel:Lcom/android/camera/ui/V6SettingPanel;

    const-string v1, "pref_camera_shader_coloreffect_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SettingPanel;->showPopup(Ljava/lang/String;)V

    goto :goto_0
.end method
