.class Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;
.super Ljava/lang/Object;
.source "CameraSettingPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/preferences/CameraSettingPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyEditor"
.end annotation


# instance fields
.field private mEditorGlobal:Landroid/content/SharedPreferences$Editor;

.field private mEditorLocal:Landroid/content/SharedPreferences$Editor;

.field private mEditorModeGlobal:Landroid/content/SharedPreferences$Editor;

.field final synthetic this$0:Lcom/android/camera/preferences/CameraSettingPreferences;


# direct methods
.method constructor <init>(Lcom/android/camera/preferences/CameraSettingPreferences;)V
    .locals 1
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->this$0:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    #getter for: Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->access$000(Lcom/android/camera/preferences/CameraSettingPreferences;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    .line 193
    #getter for: Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefModeGlobal:Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->access$100(Lcom/android/camera/preferences/CameraSettingPreferences;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorModeGlobal:Landroid/content/SharedPreferences$Editor;

    .line 194
    #getter for: Lcom/android/camera/preferences/CameraSettingPreferences;->mPrefLocal:Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->access$200(Lcom/android/camera/preferences/CameraSettingPreferences;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    .line 195
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 208
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorModeGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 209
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 210
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 216
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorModeGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 217
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 218
    return-object p0
.end method

.method public commit()Z
    .locals 4

    .prologue
    .line 199
    iget-object v3, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 200
    .local v0, result1:Z
    iget-object v3, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorModeGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 201
    .local v1, result2:Z
    iget-object v3, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 202
    .local v2, result3:Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 279
    #calls: Lcom/android/camera/preferences/CameraSettingPreferences;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->access$300(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 286
    :goto_0
    return-object p0

    .line 281
    :cond_0
    #calls: Lcom/android/camera/preferences/CameraSettingPreferences;->isModeGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->access$400(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorModeGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 267
    #calls: Lcom/android/camera/preferences/CameraSettingPreferences;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->access$300(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 274
    :goto_0
    return-object p0

    .line 269
    :cond_0
    #calls: Lcom/android/camera/preferences/CameraSettingPreferences;->isModeGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->access$400(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorModeGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 243
    #calls: Lcom/android/camera/preferences/CameraSettingPreferences;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->access$300(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 250
    :goto_0
    return-object p0

    .line 245
    :cond_0
    #calls: Lcom/android/camera/preferences/CameraSettingPreferences;->isModeGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->access$400(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorModeGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 255
    #calls: Lcom/android/camera/preferences/CameraSettingPreferences;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->access$300(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 262
    :goto_0
    return-object p0

    .line 257
    :cond_0
    #calls: Lcom/android/camera/preferences/CameraSettingPreferences;->isModeGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->access$400(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorModeGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 231
    #calls: Lcom/android/camera/preferences/CameraSettingPreferences;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->access$300(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 238
    :goto_0
    return-object p0

    .line 233
    :cond_0
    #calls: Lcom/android/camera/preferences/CameraSettingPreferences;->isModeGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->access$400(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorModeGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .prologue
    .line 292
    .local p2, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 224
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorModeGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 225
    iget-object v0, p0, Lcom/android/camera/preferences/CameraSettingPreferences$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 226
    return-object p0
.end method
