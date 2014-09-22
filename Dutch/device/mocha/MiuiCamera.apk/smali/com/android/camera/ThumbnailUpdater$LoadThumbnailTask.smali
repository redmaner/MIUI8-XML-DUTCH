.class Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;
.super Landroid/os/AsyncTask;
.source "ThumbnailUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ThumbnailUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/camera/Thumbnail;",
        ">;"
    }
.end annotation


# instance fields
.field private mLookAtCache:Z

.field final synthetic this$0:Lcom/android/camera/ThumbnailUpdater;


# direct methods
.method public constructor <init>(Lcom/android/camera/ThumbnailUpdater;Z)V
    .locals 0
    .parameter
    .parameter "lookAtCache"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 66
    iput-boolean p2, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mLookAtCache:Z

    .line 67
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/camera/Thumbnail;
    .locals 8
    .parameter "params"

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 71
    const/4 v2, 0x0

    .line 72
    .local v2, t:Lcom/android/camera/Thumbnail;
    iget-object v5, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    #getter for: Lcom/android/camera/ThumbnailUpdater;->mActivityBase:Lcom/android/camera/ActivityBase;
    invoke-static {v5}, Lcom/android/camera/ThumbnailUpdater;->access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    :cond_0
    :goto_0
    :pswitch_0
    return-object v4

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 77
    iget-object v5, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    #getter for: Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v5}, Lcom/android/camera/ThumbnailUpdater;->access$200(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/Thumbnail;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    #getter for: Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v5}, Lcom/android/camera/ThumbnailUpdater;->access$200(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/Thumbnail;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    #getter for: Lcom/android/camera/ThumbnailUpdater;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/android/camera/ThumbnailUpdater;->access$300(Lcom/android/camera/ThumbnailUpdater;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Util;->isUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 78
    iget-object v4, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    #getter for: Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v4}, Lcom/android/camera/ThumbnailUpdater;->access$200(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/Thumbnail;

    move-result-object v4

    goto :goto_0

    .line 82
    :cond_2
    iget-boolean v5, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->mLookAtCache:Z

    if-eqz v5, :cond_3

    .line 83
    iget-object v5, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    #getter for: Lcom/android/camera/ThumbnailUpdater;->mActivityBase:Lcom/android/camera/ActivityBase;
    invoke-static {v5}, Lcom/android/camera/ThumbnailUpdater;->access$100(Lcom/android/camera/ThumbnailUpdater;)Lcom/android/camera/ActivityBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ActivityBase;->getFilesDir()Ljava/io/File;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    #getter for: Lcom/android/camera/ThumbnailUpdater;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/android/camera/ThumbnailUpdater;->access$300(Lcom/android/camera/ThumbnailUpdater;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromFile(Ljava/io/File;Landroid/content/ContentResolver;)Lcom/android/camera/Thumbnail;

    move-result-object v2

    .line 87
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 89
    const/4 v3, 0x0

    .line 90
    .local v3, uri:Landroid/net/Uri;
    if-eqz v2, :cond_4

    .line 91
    invoke-virtual {v2}, Lcom/android/camera/Thumbnail;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 93
    :cond_4
    new-array v1, v7, [Lcom/android/camera/Thumbnail;

    .line 95
    .local v1, result:[Lcom/android/camera/Thumbnail;
    iget-object v5, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    #getter for: Lcom/android/camera/ThumbnailUpdater;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/android/camera/ThumbnailUpdater;->access$300(Lcom/android/camera/ThumbnailUpdater;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v3}, Lcom/android/camera/Thumbnail;->getLastThumbnailFromContentResolver(Landroid/content/ContentResolver;[Lcom/android/camera/Thumbnail;Landroid/net/Uri;)I

    move-result v0

    .line 97
    .local v0, code:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    move-object v4, v2

    .line 99
    goto :goto_0

    .line 103
    :pswitch_2
    const/4 v4, 0x0

    aget-object v4, v1, v4

    goto :goto_0

    .line 105
    :pswitch_3
    invoke-virtual {p0, v7}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->cancel(Z)Z

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->doInBackground([Ljava/lang/Void;)Lcom/android/camera/Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/camera/Thumbnail;)V
    .locals 1
    .parameter "thumbnail"

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    #setter for: Lcom/android/camera/ThumbnailUpdater;->mThumbnail:Lcom/android/camera/Thumbnail;
    invoke-static {v0, p1}, Lcom/android/camera/ThumbnailUpdater;->access$202(Lcom/android/camera/ThumbnailUpdater;Lcom/android/camera/Thumbnail;)Lcom/android/camera/Thumbnail;

    .line 115
    iget-object v0, p0, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->this$0:Lcom/android/camera/ThumbnailUpdater;

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->updateThumbnailView()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    check-cast p1, Lcom/android/camera/Thumbnail;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/camera/ThumbnailUpdater$LoadThumbnailTask;->onPostExecute(Lcom/android/camera/Thumbnail;)V

    return-void
.end method
