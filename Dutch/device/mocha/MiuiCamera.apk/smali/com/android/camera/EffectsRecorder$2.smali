.class Lcom/android/camera/EffectsRecorder$2;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;


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
    .line 614
    iput-object p1, p0, Lcom/android/camera/EffectsRecorder$2;->this$0:Lcom/android/camera/EffectsRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLearningDone(Landroid/filterpacks/videoproc/BackDropperFilter;)V
    .locals 3
    .parameter "filter"

    .prologue
    const/4 v2, 0x1

    .line 617
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder$2;->this$0:Lcom/android/camera/EffectsRecorder;

    #getter for: Lcom/android/camera/EffectsRecorder;->mLogVerbose:Z
    invoke-static {v0}, Lcom/android/camera/EffectsRecorder;->access$000(Lcom/android/camera/EffectsRecorder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EffectsRecorder"

    const-string v1, "Learning done callback triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder$2;->this$0:Lcom/android/camera/EffectsRecorder;

    const/4 v1, 0x2

    #calls: Lcom/android/camera/EffectsRecorder;->sendMessage(II)V
    invoke-static {v0, v1, v2}, Lcom/android/camera/EffectsRecorder;->access$500(Lcom/android/camera/EffectsRecorder;II)V

    .line 621
    iget-object v0, p0, Lcom/android/camera/EffectsRecorder$2;->this$0:Lcom/android/camera/EffectsRecorder;

    invoke-virtual {v0, v2}, Lcom/android/camera/EffectsRecorder;->enable3ALocks(Z)V

    .line 622
    return-void
.end method
