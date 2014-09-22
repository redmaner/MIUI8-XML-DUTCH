.class Lcom/android/camera/storage/ImageSaver$1;
.super Ljava/lang/Object;
.source "ImageSaver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/storage/ImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/storage/ImageSaver;


# direct methods
.method constructor <init>(Lcom/android/camera/storage/ImageSaver;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/camera/storage/ImageSaver$1;->this$0:Lcom/android/camera/storage/ImageSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver$1;->this$0:Lcom/android/camera/storage/ImageSaver;

    #getter for: Lcom/android/camera/storage/ImageSaver;->mActivity:Lcom/android/camera/ActivityBase;
    invoke-static {v0}, Lcom/android/camera/storage/ImageSaver;->access$000(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 142
    iget-object v0, p0, Lcom/android/camera/storage/ImageSaver$1;->this$0:Lcom/android/camera/storage/ImageSaver;

    #calls: Lcom/android/camera/storage/ImageSaver;->updateThumbnail()V
    invoke-static {v0}, Lcom/android/camera/storage/ImageSaver;->access$100(Lcom/android/camera/storage/ImageSaver;)V

    .line 143
    return-void
.end method
