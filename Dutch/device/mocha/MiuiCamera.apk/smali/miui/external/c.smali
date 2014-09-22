.class Lmiui/external/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/external/SdkErrorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lmiui/external/SdkErrorActivity;


# direct methods
.method constructor <init>(Lmiui/external/SdkErrorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lmiui/external/c;->b:Lmiui/external/SdkErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 75
    iget-object v0, p0, Lmiui/external/c;->b:Lmiui/external/SdkErrorActivity;

    invoke-static {v0}, Lmiui/external/SdkErrorActivity;->a(Lmiui/external/SdkErrorActivity;)Landroid/app/Dialog;

    move-result-object v0

    .line 76
    new-instance v1, Lmiui/external/SdkErrorActivity$a;

    iget-object v2, p0, Lmiui/external/c;->b:Lmiui/external/SdkErrorActivity;

    invoke-direct {v1, v2, v0}, Lmiui/external/SdkErrorActivity$a;-><init>(Lmiui/external/SdkErrorActivity;Landroid/app/Dialog;)V

    iget-object v2, p0, Lmiui/external/c;->b:Lmiui/external/SdkErrorActivity;

    invoke-virtual {v2}, Lmiui/external/SdkErrorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "SdkUpdatePromptDialog"

    invoke-virtual {v1, v2, v3}, Lmiui/external/SdkErrorActivity$a;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 78
    new-instance v1, Lmiui/external/c$1;

    invoke-direct {v1, p0, v0}, Lmiui/external/c$1;-><init>(Lmiui/external/c;Landroid/app/Dialog;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lmiui/external/c$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    return-void
.end method
