.class public Lcom/android/camera/Camera;
.super Lcom/android/camera/ActivityBase;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Camera$MyOrientationEventListener;
    }
.end annotation


# instance fields
.field private mCurrentModuleIndex:I

.field private mIsFromLauncher:Z

.field private mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    .line 204
    return-void
.end method

.method private closeModule(Lcom/android/camera/module/Module;)V
    .locals 1
    .parameter "module"

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    .line 115
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onPauseBeforeSuper()V

    .line 116
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onPauseAfterSuper()V

    .line 117
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onStop()V

    .line 118
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onDestroy()V

    .line 119
    return-void
.end method

.method private getCameraByDevice()Lcom/android/camera/module/Module;
    .locals 1

    .prologue
    .line 140
    sget-boolean v0, Lcom/android/camera/Device;->IS_PAD1:Z

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Lcom/android/camera/camera_adapter/CameraPadOne;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraPadOne;-><init>()V

    .line 146
    :goto_0
    return-object v0

    .line 142
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    new-instance v0, Lcom/android/camera/camera_adapter/CameraQcom;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/CameraQcom;-><init>()V

    goto :goto_0

    .line 146
    :cond_1
    new-instance v0, Lcom/android/camera/module/CameraModule;

    invoke-direct {v0}, Lcom/android/camera/module/CameraModule;-><init>()V

    goto :goto_0
.end method

.method private getModuleByIndex(I)Lcom/android/camera/module/Module;
    .locals 2
    .parameter "moduleIndex"

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, module:Lcom/android/camera/module/Module;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 124
    iput p1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    .line 125
    iget v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/ui/V6ModulePicker;->setCurrentMoudle(I)V

    .line 126
    invoke-direct {p0}, Lcom/android/camera/Camera;->getPanoramaByDevice()Lcom/android/camera/module/Module;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 127
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 128
    iput p1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    .line 129
    iget v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/ui/V6ModulePicker;->setCurrentMoudle(I)V

    .line 130
    invoke-direct {p0}, Lcom/android/camera/Camera;->getVideoByDevice()Lcom/android/camera/module/Module;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    .line 133
    iget v1, p0, Lcom/android/camera/Camera;->mCurrentModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/ui/V6ModulePicker;->setCurrentMoudle(I)V

    .line 134
    invoke-direct {p0}, Lcom/android/camera/Camera;->getCameraByDevice()Lcom/android/camera/module/Module;

    move-result-object v0

    goto :goto_0
.end method

.method private getPanoramaByDevice()Lcom/android/camera/module/Module;
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/android/camera/module/PanoramaModule;

    invoke-direct {v0}, Lcom/android/camera/module/PanoramaModule;-><init>()V

    return-object v0
.end method

.method private getVideoByDevice()Lcom/android/camera/module/Module;
    .locals 1

    .prologue
    .line 150
    sget-boolean v0, Lcom/android/camera/Device;->IS_PAD1:Z

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Lcom/android/camera/camera_adapter/VideoPadOne;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoPadOne;-><init>()V

    .line 155
    :goto_0
    return-object v0

    .line 152
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    new-instance v0, Lcom/android/camera/camera_adapter/VideoQcom;

    invoke-direct {v0}, Lcom/android/camera/camera_adapter/VideoQcom;-><init>()V

    goto :goto_0

    .line 155
    :cond_1
    new-instance v0, Lcom/android/camera/module/VideoModule;

    invoke-direct {v0}, Lcom/android/camera/module/VideoModule;-><init>()V

    goto :goto_0
.end method

.method private openModule(Lcom/android/camera/module/Module;)V
    .locals 1
    .parameter "module"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    .line 108
    invoke-interface {p1, p0}, Lcom/android/camera/module/Module;->onCreate(Lcom/android/camera/Camera;)V

    .line 109
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onResumeBeforeSuper()V

    .line 110
    invoke-interface {p1}, Lcom/android/camera/module/Module;->onResumeAfterSuper()V

    .line 111
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 195
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1}, Lcom/android/camera/module/Module;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/module/Module;->onActivityResult(IILandroid/content/Intent;)V

    .line 166
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    .line 173
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 31
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f040011

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setContentView(I)V

    .line 33
    new-instance v0, Lcom/android/camera/ui/UIController;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/UIController;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mUIController:Lcom/android/camera/ui/UIController;

    .line 34
    const-string v0, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->getModuleByIndex(I)Lcom/android/camera/module/Module;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    .line 40
    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mIsFromLauncher:Z

    .line 41
    invoke-static {p0}, Lcom/android/camera/Util;->updateCountryIso(Landroid/content/Context;)V

    .line 42
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p0}, Lcom/android/camera/module/Module;->onCreate(Lcom/android/camera/Camera;)V

    .line 43
    new-instance v0, Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/android/camera/Camera$MyOrientationEventListener;-><init>(Lcom/android/camera/Camera;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    .line 44
    return-void

    .line 38
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->getModuleByIndex(I)Lcom/android/camera/module/Module;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onDestroy()V

    .line 74
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onDestroy()V

    .line 75
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->release()V

    .line 76
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/module/Module;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/module/Module;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    .line 65
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/Camera$MyOrientationEventListener;->disable()V

    .line 66
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onPauseBeforeSuper()V

    .line 67
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    .line 68
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onPauseAfterSuper()V

    .line 69
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    .line 49
    invoke-static {}, Lcom/android/camera/storage/Storage;->readSystemPriorityStorage()V

    .line 50
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/Camera$MyOrientationEventListener;->enable()V

    .line 51
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onResumeBeforeSuper()V

    .line 52
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    .line 53
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onResumeAfterSuper()V

    .line 54
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onStop()V

    .line 59
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onStop()V

    .line 60
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onUserInteraction()V

    .line 201
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onUserInteraction()V

    .line 202
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onWindowFocusChanged(Z)V

    .line 190
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0, p1}, Lcom/android/camera/module/Module;->onWindowFocusChanged(Z)V

    .line 191
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->pause()V

    .line 90
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isVideoRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->resume()V

    .line 83
    :cond_0
    return-void
.end method

.method public switchToOtherModule(I)V
    .locals 1
    .parameter "moduleIndex"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPaused:Z

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsFromLauncher:Z

    .line 95
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->keep()V

    .line 96
    iget-object v0, p0, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->closeModule(Lcom/android/camera/module/Module;)V

    .line 97
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->getModuleByIndex(I)Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->openModule(Lcom/android/camera/module/Module;)V

    goto :goto_0
.end method
