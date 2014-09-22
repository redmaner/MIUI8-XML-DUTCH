.class Lcom/android/zxing/WiFiConManager$3;
.super Landroid/os/AsyncTask;
.source "WiFiConManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/zxing/WiFiConManager;->connectInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/zxing/WiFiConManager;


# direct methods
.method constructor <init>(Lcom/android/zxing/WiFiConManager;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/zxing/WiFiConManager$3;->this$0:Lcom/android/zxing/WiFiConManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1
    .parameter "params"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager$3;->this$0:Lcom/android/zxing/WiFiConManager;

    #calls: Lcom/android/zxing/WiFiConManager;->connect()I
    invoke-static {v0}, Lcom/android/zxing/WiFiConManager;->access$600(Lcom/android/zxing/WiFiConManager;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/zxing/WiFiConManager$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "ret"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager$3;->this$0:Lcom/android/zxing/WiFiConManager;

    #getter for: Lcom/android/zxing/WiFiConManager;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/zxing/WiFiConManager;->access$700(Lcom/android/zxing/WiFiConManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager$3;->this$0:Lcom/android/zxing/WiFiConManager;

    #getter for: Lcom/android/zxing/WiFiConManager;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/zxing/WiFiConManager;->access$700(Lcom/android/zxing/WiFiConManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/zxing/WiFiConManager$3;->this$0:Lcom/android/zxing/WiFiConManager;

    #getter for: Lcom/android/zxing/WiFiConManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/zxing/WiFiConManager;->access$800(Lcom/android/zxing/WiFiConManager;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/zxing/WiFiConManager$3;->this$0:Lcom/android/zxing/WiFiConManager;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #calls: Lcom/android/zxing/WiFiConManager;->getResultMessage(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/zxing/WiFiConManager;->access$900(Lcom/android/zxing/WiFiConManager;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 133
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/zxing/WiFiConManager$3;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
