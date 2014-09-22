.class Lmiui/external/SdkErrorActivity$a;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/external/SdkErrorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lmiui/external/SdkErrorActivity;

.field private t:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Lmiui/external/SdkErrorActivity;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lmiui/external/SdkErrorActivity$a;->b:Lmiui/external/SdkErrorActivity;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 108
    iput-object p2, p0, Lmiui/external/SdkErrorActivity$a;->t:Landroid/app/Dialog;

    .line 109
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lmiui/external/SdkErrorActivity$a;->t:Landroid/app/Dialog;

    return-object v0
.end method
