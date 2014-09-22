.class public Lcom/android/camera/ui/V6ModuleUI;
.super Ljava/lang/Object;
.source "V6ModuleUI.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field protected mActivity:Lcom/android/camera/Camera;

.field protected mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6ModuleUI;->mChildren:Ljava/util/ArrayList;

    .line 14
    iput-object p1, p0, Lcom/android/camera/ui/V6ModuleUI;->mActivity:Lcom/android/camera/Camera;

    .line 15
    return-void
.end method


# virtual methods
.method public enableControls(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 63
    iget-object v2, p0, Lcom/android/camera/ui/V6ModuleUI;->mChildren:Ljava/util/ArrayList;

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

    check-cast v0, Landroid/view/View;

    .line 64
    .local v0, i:Landroid/view/View;
    instance-of v2, v0, Lcom/android/camera/ui/V6FunctionUI;

    if-eqz v2, :cond_0

    .line 65
    check-cast v0, Lcom/android/camera/ui/V6FunctionUI;

    .end local v0           #i:Landroid/view/View;
    invoke-interface {v0, p1}, Lcom/android/camera/ui/V6FunctionUI;->enableControls(Z)V

    goto :goto_0

    .line 68
    :cond_1
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 2
    .parameter "id"

    .prologue
    .line 18
    iget-object v1, p0, Lcom/android/camera/ui/V6ModuleUI;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, p1}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 19
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/android/camera/ui/V6ModuleUI;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 20
    iget-object v1, p0, Lcom/android/camera/ui/V6ModuleUI;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_0
    return-object v0
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .parameter "what"
    .parameter "sender"
    .parameter "extra1"
    .parameter "extra2"

    .prologue
    .line 82
    iget-object v2, p0, Lcom/android/camera/ui/V6ModuleUI;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 83
    .local v0, i:Landroid/view/View;
    instance-of v2, v0, Lcom/android/camera/ui/V6FunctionUI;

    if-eqz v2, :cond_0

    .line 84
    check-cast v0, Lcom/android/camera/ui/V6FunctionUI;

    .end local v0           #i:Landroid/view/View;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/camera/ui/V6FunctionUI;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    const/4 v2, 0x1

    .line 89
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCameraOpen()V
    .locals 3

    .prologue
    .line 54
    iget-object v2, p0, Lcom/android/camera/ui/V6ModuleUI;->mChildren:Ljava/util/ArrayList;

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

    check-cast v0, Landroid/view/View;

    .line 55
    .local v0, i:Landroid/view/View;
    instance-of v2, v0, Lcom/android/camera/ui/V6FunctionUI;

    if-eqz v2, :cond_0

    .line 56
    check-cast v0, Lcom/android/camera/ui/V6FunctionUI;

    .end local v0           #i:Landroid/view/View;
    invoke-interface {v0}, Lcom/android/camera/ui/V6FunctionUI;->onCameraOpen()V

    goto :goto_0

    .line 59
    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 27
    iget-object v2, p0, Lcom/android/camera/ui/V6ModuleUI;->mChildren:Ljava/util/ArrayList;

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

    check-cast v0, Landroid/view/View;

    .line 28
    .local v0, i:Landroid/view/View;
    instance-of v2, v0, Lcom/android/camera/ui/V6FunctionUI;

    if-eqz v2, :cond_0

    .line 29
    check-cast v0, Lcom/android/camera/ui/V6FunctionUI;

    .end local v0           #i:Landroid/view/View;
    invoke-interface {v0}, Lcom/android/camera/ui/V6FunctionUI;->onCreate()V

    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 45
    iget-object v2, p0, Lcom/android/camera/ui/V6ModuleUI;->mChildren:Ljava/util/ArrayList;

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

    check-cast v0, Landroid/view/View;

    .line 46
    .local v0, i:Landroid/view/View;
    instance-of v2, v0, Lcom/android/camera/ui/V6FunctionUI;

    if-eqz v2, :cond_0

    .line 47
    check-cast v0, Lcom/android/camera/ui/V6FunctionUI;

    .end local v0           #i:Landroid/view/View;
    invoke-interface {v0}, Lcom/android/camera/ui/V6FunctionUI;->onPause()V

    goto :goto_0

    .line 50
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 36
    iget-object v2, p0, Lcom/android/camera/ui/V6ModuleUI;->mChildren:Ljava/util/ArrayList;

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

    check-cast v0, Landroid/view/View;

    .line 37
    .local v0, i:Landroid/view/View;
    instance-of v2, v0, Lcom/android/camera/ui/V6FunctionUI;

    if-eqz v2, :cond_0

    .line 38
    check-cast v0, Lcom/android/camera/ui/V6FunctionUI;

    .end local v0           #i:Landroid/view/View;
    invoke-interface {v0}, Lcom/android/camera/ui/V6FunctionUI;->onResume()V

    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 3
    .parameter "p"

    .prologue
    .line 94
    iget-object v2, p0, Lcom/android/camera/ui/V6ModuleUI;->mChildren:Ljava/util/ArrayList;

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

    check-cast v0, Landroid/view/View;

    .line 95
    .local v0, i:Landroid/view/View;
    instance-of v2, v0, Lcom/android/camera/ui/V6FunctionUI;

    if-eqz v2, :cond_0

    .line 96
    check-cast v0, Lcom/android/camera/ui/V6FunctionUI;

    .end local v0           #i:Landroid/view/View;
    invoke-interface {v0, p1}, Lcom/android/camera/ui/V6FunctionUI;->setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V

    goto :goto_0

    .line 99
    :cond_1
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 3
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 72
    iget-object v2, p0, Lcom/android/camera/ui/V6ModuleUI;->mChildren:Ljava/util/ArrayList;

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

    check-cast v0, Landroid/view/View;

    .line 73
    .local v0, i:Landroid/view/View;
    instance-of v2, v0, Lcom/android/camera/ui/Rotatable;

    if-eqz v2, :cond_0

    .line 74
    check-cast v0, Lcom/android/camera/ui/Rotatable;

    .end local v0           #i:Landroid/view/View;
    invoke-interface {v0, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    goto :goto_0

    .line 77
    :cond_1
    return-void
.end method
