.class Lcom/android/camera/BasePreferenceActivity$3;
.super Ljava/lang/Object;
.source "BasePreferenceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BasePreferenceActivity;->changeToLayoutMode(Landroid/preference/CheckBoxPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BasePreferenceActivity;

.field final synthetic val$checkBox:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/camera/BasePreferenceActivity;Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/camera/BasePreferenceActivity$3;->this$0:Lcom/android/camera/BasePreferenceActivity;

    iput-object p2, p0, Lcom/android/camera/BasePreferenceActivity$3;->val$checkBox:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 231
    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity$3;->this$0:Lcom/android/camera/BasePreferenceActivity;

    iget-object v1, v1, Lcom/android/camera/BasePreferenceActivity;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 232
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_layout_mode_key"

    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity$3;->this$0:Lcom/android/camera/BasePreferenceActivity;

    #getter for: Lcom/android/camera/BasePreferenceActivity;->mIsSimpleLayoutMode:Z
    invoke-static {v1}, Lcom/android/camera/BasePreferenceActivity;->access$100(Lcom/android/camera/BasePreferenceActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 233
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 234
    iget-object v1, p0, Lcom/android/camera/BasePreferenceActivity$3;->val$checkBox:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/camera/BasePreferenceActivity$3;->this$0:Lcom/android/camera/BasePreferenceActivity;

    #getter for: Lcom/android/camera/BasePreferenceActivity;->mIsSimpleLayoutMode:Z
    invoke-static {v2}, Lcom/android/camera/BasePreferenceActivity;->access$100(Lcom/android/camera/BasePreferenceActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 235
    return-void

    .line 232
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
