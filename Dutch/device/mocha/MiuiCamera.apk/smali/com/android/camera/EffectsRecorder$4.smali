.class Lcom/android/camera/EffectsRecorder$4;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/EffectsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/EffectsRecorder;


# direct methods
.method constructor <init>(Lcom/android/camera/EffectsRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 837
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRunnerDone(I)V
    .locals 9
    .parameter "result"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 840
    iget-object v3, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    monitor-enter v3

    .line 841
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$000(Lcom/android/camera/EffectsRecorder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 842
    const-string v2, "EffectsRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Graph runner done ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mRunner "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v5}, Lcom/android/camera/EffectsRecorder;->access$600(Lcom/android/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mOldRunner "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v5}, Lcom/android/camera/EffectsRecorder;->access$700(Lcom/android/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_0
    if-ne p1, v8, :cond_2

    .line 849
    const-string v2, "EffectsRecorder"

    const-string v4, "Error running filter graph!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const/4 v0, 0x0

    .line 851
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$600(Lcom/android/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 852
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$600(Lcom/android/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 856
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #calls: Lcom/android/camera/EffectsRecorder;->raiseError(Ljava/lang/Exception;)V
    invoke-static {v2, v0}, Lcom/android/camera/EffectsRecorder;->access$800(Lcom/android/camera/EffectsRecorder;Ljava/lang/Exception;)V

    .line 858
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$700(Lcom/android/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 860
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$000(Lcom/android/camera/EffectsRecorder;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "EffectsRecorder"

    const-string v4, "Tearing down old graph."

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_3
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$900(Lcom/android/camera/EffectsRecorder;)Landroid/filterfw/GraphEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/GraphEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    .line 862
    .local v1, glEnv:Landroid/filterfw/core/GLEnvironment;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->isActive()Z

    move-result v2

    if-nez v2, :cond_4

    .line 863
    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->activate()V

    .line 865
    :cond_4
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$700(Lcom/android/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;
    invoke-static {v4}, Lcom/android/camera/EffectsRecorder;->access$900(Lcom/android/camera/EffectsRecorder;)Landroid/filterfw/GraphEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/filterfw/GraphEnvironment;->getContext()Landroid/filterfw/core/FilterContext;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/filterfw/core/FilterGraph;->tearDown(Landroid/filterfw/core/FilterContext;)V

    .line 866
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->isActive()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 867
    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->deactivate()V

    .line 869
    :cond_5
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    const/4 v4, 0x0

    #setter for: Lcom/android/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2, v4}, Lcom/android/camera/EffectsRecorder;->access$702(Lcom/android/camera/EffectsRecorder;Landroid/filterfw/core/GraphRunner;)Landroid/filterfw/core/GraphRunner;

    .line 871
    .end local v1           #glEnv:Landroid/filterfw/core/GLEnvironment;
    :cond_6
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mState:I
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$200(Lcom/android/camera/EffectsRecorder;)I

    move-result v2

    if-eq v2, v7, :cond_7

    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mState:I
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$200(Lcom/android/camera/EffectsRecorder;)I

    move-result v2

    if-ne v2, v6, :cond_c

    .line 874
    :cond_7
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$000(Lcom/android/camera/EffectsRecorder;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 875
    const-string v2, "EffectsRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Previous effect halted. Running graph again. state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mState:I
    invoke-static {v5}, Lcom/android/camera/EffectsRecorder;->access$200(Lcom/android/camera/EffectsRecorder;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_8
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/camera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 889
    if-ne p1, v8, :cond_9

    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mCurrentEffect:I
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$400(Lcom/android/camera/EffectsRecorder;)I

    move-result v2

    if-ne v2, v6, :cond_9

    .line 891
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    #calls: Lcom/android/camera/EffectsRecorder;->sendMessage(II)V
    invoke-static {v2, v4, v5}, Lcom/android/camera/EffectsRecorder;->access$500(Lcom/android/camera/EffectsRecorder;II)V

    .line 893
    :cond_9
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$600(Lcom/android/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->run()V

    .line 902
    :cond_a
    :goto_1
    monitor-exit v3

    .line 903
    return-void

    .line 853
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_b
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$700(Lcom/android/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 854
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$700(Lcom/android/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->getError()Ljava/lang/Exception;

    move-result-object v0

    goto/16 :goto_0

    .line 894
    .end local v0           #e:Ljava/lang/Exception;
    :cond_c
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mState:I
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$200(Lcom/android/camera/EffectsRecorder;)I

    move-result v2

    const/4 v4, 0x5

    if-eq v2, v4, :cond_a

    .line 896
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v2}, Lcom/android/camera/EffectsRecorder;->access$000(Lcom/android/camera/EffectsRecorder;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "EffectsRecorder"

    const-string v4, "Runner halted, restoring direct preview"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_d
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/camera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 898
    iget-object v2, p0, Lcom/android/camera/EffectsRecorder$4;->this$0:Lcom/android/camera/EffectsRecorder;

    const/4 v4, 0x0

    const/4 v5, 0x3

    #calls: Lcom/android/camera/EffectsRecorder;->sendMessage(II)V
    invoke-static {v2, v4, v5}, Lcom/android/camera/EffectsRecorder;->access$500(Lcom/android/camera/EffectsRecorder;II)V

    goto :goto_1

    .line 902
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
