.class public Lmiui/external/SdkErrorActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lmiui/external/SdkConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/external/SdkErrorActivity$1;,
        Lmiui/external/SdkErrorActivity$a;
    }
.end annotation


# instance fields
.field private k:Ljava/lang/String;

.field private l:Landroid/content/DialogInterface$OnClickListener;

.field private m:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    new-instance v0, Lmiui/external/a;

    invoke-direct {v0, p0}, Lmiui/external/a;-><init>(Lmiui/external/SdkErrorActivity;)V

    iput-object v0, p0, Lmiui/external/SdkErrorActivity;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 70
    new-instance v0, Lmiui/external/c;

    invoke-direct {v0, p0}, Lmiui/external/c;-><init>(Lmiui/external/SdkErrorActivity;)V

    iput-object v0, p0, Lmiui/external/SdkErrorActivity;->m:Landroid/content/DialogInterface$OnClickListener;

    .line 103
    return-void
.end method

.method private a()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 140
    .line 142
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/external/SdkErrorActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-string v1, "MIUI SDK\u53d1\u751f\u9519\u8bef"

    .line 144
    const-string v0, "\u8bf7\u91cd\u65b0\u5b89\u88c5MIUI SDK\u518d\u8fd0\u884c\u672c\u7a0b\u5e8f\u3002"

    .line 149
    :goto_0
    iget-object v2, p0, Lmiui/external/SdkErrorActivity;->l:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v1, v0, v2}, Lmiui/external/SdkErrorActivity;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 146
    :cond_0
    const-string v1, "MIUI SDK encounter errors"

    .line 147
    const-string v0, "Please re-install MIUI SDK and then re-run this application."

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lmiui/external/SdkErrorActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->d()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private b()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 153
    .line 155
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/external/SdkErrorActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const-string v1, "\u6ca1\u6709\u627e\u5230MIUI SDK"

    .line 157
    const-string v0, "\u8bf7\u5148\u5b89\u88c5MIUI SDK\u518d\u8fd0\u884c\u672c\u7a0b\u5e8f\u3002"

    .line 162
    :goto_0
    iget-object v2, p0, Lmiui/external/SdkErrorActivity;->l:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v1, v0, v2}, Lmiui/external/SdkErrorActivity;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 159
    :cond_0
    const-string v1, "MIUI SDK not found"

    .line 160
    const-string v0, "Please install MIUI SDK and then re-run this application."

    goto :goto_0
.end method

.method static synthetic b(Lmiui/external/SdkErrorActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->h()Z

    move-result v0

    return v0
.end method

.method private c()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 166
    .line 168
    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/external/SdkErrorActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const-string v1, "MIUI SDK\u7248\u672c\u8fc7\u4f4e"

    .line 171
    const-string v0, "\u8bf7\u5148\u5347\u7ea7MIUI SDK\u518d\u8fd0\u884c\u672c\u7a0b\u5e8f\u3002"

    .line 176
    :goto_0
    iget-object v2, p0, Lmiui/external/SdkErrorActivity;->l:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v1, v0, v2}, Lmiui/external/SdkErrorActivity;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 185
    :goto_1
    return-object v0

    .line 173
    :cond_0
    const-string v1, "MIUI SDK too old"

    .line 174
    const-string v0, "Please upgrade MIUI SDK and then re-run this application."

    goto :goto_0

    .line 178
    :cond_1
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/external/SdkErrorActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    const-string v1, "MIUI SDK\u7248\u672c\u8fc7\u4f4e"

    .line 180
    const-string v0, "\u8bf7\u5148\u5347\u7ea7MIUI SDK\u518d\u8fd0\u884c\u672c\u7a0b\u5e8f\u3002\u662f\u5426\u73b0\u5728\u5347\u7ea7\uff1f"

    .line 185
    :goto_2
    iget-object v2, p0, Lmiui/external/SdkErrorActivity;->m:Landroid/content/DialogInterface$OnClickListener;

    iget-object v3, p0, Lmiui/external/SdkErrorActivity;->l:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v1, v0, v2, v3}, Lmiui/external/SdkErrorActivity;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1

    .line 182
    :cond_2
    const-string v1, "MIUI SDK too old"

    .line 183
    const-string v0, "Please upgrade MIUI SDK and then re-run this application. Upgrade now?"

    goto :goto_2
.end method

.method static synthetic c(Lmiui/external/SdkErrorActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->e()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private d()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 190
    .line 192
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/external/SdkErrorActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const-string v1, "MIUI SDK\u6b63\u5728\u66f4\u65b0"

    .line 194
    const-string v0, "\u8bf7\u7a0d\u5019..."

    .line 199
    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0

    .line 196
    :cond_0
    const-string v1, "MIUI SDK updating"

    .line 197
    const-string v0, "Please wait..."

    goto :goto_0
.end method

.method static synthetic d(Lmiui/external/SdkErrorActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->f()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private e()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 203
    .line 205
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/external/SdkErrorActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const-string v1, "MIUI SDK\u66f4\u65b0\u5b8c\u6210"

    .line 207
    const-string v0, "\u8bf7\u91cd\u65b0\u8fd0\u884c\u672c\u7a0b\u5e8f\u3002"

    .line 212
    :goto_0
    iget-object v2, p0, Lmiui/external/SdkErrorActivity;->l:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v1, v0, v2}, Lmiui/external/SdkErrorActivity;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 209
    :cond_0
    const-string v1, "MIUI SDK updated"

    .line 210
    const-string v0, "Please re-run this application."

    goto :goto_0
.end method

.method private f()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 216
    .line 218
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/external/SdkErrorActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const-string v1, "MIUI SDK\u66f4\u65b0\u5931\u8d25"

    .line 220
    const-string v0, "\u8bf7\u7a0d\u540e\u91cd\u8bd5\u3002"

    .line 225
    :goto_0
    iget-object v2, p0, Lmiui/external/SdkErrorActivity;->l:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v1, v0, v2}, Lmiui/external/SdkErrorActivity;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 222
    :cond_0
    const-string v1, "MIUI SDK update failed"

    .line 223
    const-string v0, "Please try it later."

    goto :goto_0
.end method

.method private g()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 229
    .line 231
    :try_start_0
    const-string v0, "com.miui.internal.core.SdkManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "supportUpdate"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/util/Map;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 239
    :goto_0
    return v0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method private h()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 243
    .line 245
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 246
    const-string v2, "com.miui.sdk.defaultMinSdkVersion"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v2, "com.miui.sdk.defaultTargetSdkVersion"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v2, "com.miui.internal.core.SdkManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "update"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/util/Map;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 255
    :goto_0
    return v0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 32
    const v0, 0x1030055

    invoke-virtual {p0, v0}, Lmiui/external/SdkErrorActivity;->setTheme(I)V

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/external/SdkErrorActivity;->k:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0}, Lmiui/external/SdkErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    const-string v0, "com.miui.sdk.error"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lmiui/external/SdkConstants$SdkError;

    .line 42
    :cond_0
    if-nez v0, :cond_1

    .line 43
    sget-object v0, Lmiui/external/SdkConstants$SdkError;->GENERIC:Lmiui/external/SdkConstants$SdkError;

    .line 47
    :cond_1
    sget-object v1, Lmiui/external/SdkErrorActivity$1;->n:[I

    invoke-virtual {v0}, Lmiui/external/SdkConstants$SdkError;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 55
    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->a()Landroid/app/Dialog;

    move-result-object v0

    .line 58
    :goto_0
    new-instance v1, Lmiui/external/SdkErrorActivity$a;

    invoke-direct {v1, p0, v0}, Lmiui/external/SdkErrorActivity$a;-><init>(Lmiui/external/SdkErrorActivity;Landroid/app/Dialog;)V

    invoke-virtual {p0}, Lmiui/external/SdkErrorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "SdkErrorPromptDialog"

    invoke-virtual {v1, v0, v2}, Lmiui/external/SdkErrorActivity$a;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 59
    return-void

    .line 49
    :pswitch_0
    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->b()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 52
    :pswitch_1
    invoke-direct {p0}, Lmiui/external/SdkErrorActivity;->c()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
