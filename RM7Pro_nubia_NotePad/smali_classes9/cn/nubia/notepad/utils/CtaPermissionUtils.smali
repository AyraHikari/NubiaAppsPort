.class public Lcn/nubia/notepad/utils/CtaPermissionUtils;
.super Ljava/lang/Object;
.source "CtaPermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;
    }
.end annotation


# static fields
.field private static final CTA_ENABLE:I = 0x0

.field private static final CTA_WARNING_AGREE:Ljava/lang/String; = "cta_warning_agree"

.field private static final PROPERTIES_CTA_DISABLE:Ljava/lang/String; = "persist.sys.cta.disable"

.field private static final TAG:Ljava/lang/String; = "CtaPermissionUtils"


# instance fields
.field private context:Landroid/app/Activity;

.field private onRequestPermissionsListener:Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcn/nubia/notepad/utils/CtaPermissionUtils;->context:Landroid/app/Activity;

    .line 37
    return-void
.end method

.method private RequestPermission()V
    .locals 5

    .prologue
    .line 138
    iget-object v2, p0, Lcn/nubia/notepad/utils/CtaPermissionUtils;->context:Landroid/app/Activity;

    const-string v3, "all"

    .line 139
    invoke-static {v3}, Lcn/nubia/notepad/utils/PermissionList;->getPermissionList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-static {v2, v3}, Lcn/nubia/notepad/utils/PermissionRequestUtil;->requestPackagePermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    .line 140
    .local v1, "result":Z
    if-eqz v1, :cond_1

    .line 141
    iget-object v2, p0, Lcn/nubia/notepad/utils/CtaPermissionUtils;->onRequestPermissionsListener:Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcn/nubia/notepad/utils/CtaPermissionUtils;->onRequestPermissionsListener:Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;

    invoke-interface {v2}, Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;->onGranted()V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    new-instance v0, Lcn/nubia/notepad/engine/permission/PermissionInspector;

    iget-object v2, p0, Lcn/nubia/notepad/utils/CtaPermissionUtils;->context:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcn/nubia/notepad/engine/permission/PermissionInspector;-><init>(Landroid/app/Activity;)V

    .line 146
    .local v0, "inspector":Lcn/nubia/notepad/engine/permission/PermissionInspector;
    const-string v2, "all"

    const-string v3, "all"

    invoke-static {v3}, Lcn/nubia/notepad/utils/PermissionList;->getPermissionList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/notepad/utils/CtaPermissionUtils;->onRequestPermissionsListener:Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;

    invoke-virtual {v0, v2, v3, v4}, Lcn/nubia/notepad/engine/permission/PermissionInspector;->requestPermissions(Ljava/lang/String;[Ljava/lang/String;Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcn/nubia/notepad/utils/CtaPermissionUtils;)Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/utils/CtaPermissionUtils;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/nubia/notepad/utils/CtaPermissionUtils;->onRequestPermissionsListener:Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/notepad/utils/CtaPermissionUtils;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/utils/CtaPermissionUtils;

    .prologue
    .line 26
    iget-object v0, p0, Lcn/nubia/notepad/utils/CtaPermissionUtils;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-static {p0}, Lcn/nubia/notepad/utils/CtaPermissionUtils;->setCtaWarningAgree(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/notepad/utils/CtaPermissionUtils;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/utils/CtaPermissionUtils;

    .prologue
    .line 26
    invoke-direct {p0}, Lcn/nubia/notepad/utils/CtaPermissionUtils;->RequestPermission()V

    return-void
.end method

.method private static isCtaEnable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 56
    const-string v1, "persist.sys.cta.disable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isCtaWarningAgree(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    .line 45
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 46
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "cta_warning_agree"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private isShowNetworkTerms()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method private static setCtaWarningAgree(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    .line 51
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 52
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "cta_warning_agree"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 53
    return-void
.end method

.method public static shouldShowCtaDialog(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-static {}, Lcn/nubia/notepad/utils/CtaPermissionUtils;->isCtaEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/nubia/notepad/utils/CtaPermissionUtils;->isCtaWarningAgree(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showCtaWarning(Z)V
    .locals 9
    .param p1, "isShowNetworkTerms"    # Z

    .prologue
    const/4 v7, 0x0

    .line 84
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v6, p0, Lcn/nubia/notepad/utils/CtaPermissionUtils;->context:Landroid/app/Activity;

    invoke-direct {v1, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 86
    .local v1, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 87
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f030019

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 88
    .local v2, "content":Landroid/view/View;
    const v6, 0x7f0f004e

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 89
    .local v4, "mPhoneContacts":Landroid/widget/LinearLayout;
    if-eqz v2, :cond_1

    .line 90
    const v6, 0x7f0f004d

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 91
    .local v5, "networkTerms":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 92
    if-eqz p1, :cond_2

    move v6, v7

    :goto_0
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 93
    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 95
    :cond_0
    const v6, 0x7f0f004f

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    .local v0, "acceptTerms":Landroid/widget/TextView;
    const v6, 0x7f0a001c

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 97
    if-eqz v0, :cond_1

    .line 98
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 115
    .end local v0    # "acceptTerms":Landroid/widget/TextView;
    .end local v5    # "networkTerms":Landroid/view/View;
    :cond_1
    invoke-virtual {v1, v7}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 116
    const v6, 0x7f0a0021

    invoke-virtual {v1, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 117
    const v6, 0x7f0a001f

    new-instance v7, Lcn/nubia/notepad/utils/CtaPermissionUtils$1;

    invoke-direct {v7, p0}, Lcn/nubia/notepad/utils/CtaPermissionUtils$1;-><init>(Lcn/nubia/notepad/utils/CtaPermissionUtils;)V

    invoke-virtual {v1, v6, v7}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 126
    const v6, 0x7f0a0018

    new-instance v7, Lcn/nubia/notepad/utils/CtaPermissionUtils$2;

    invoke-direct {v7, p0}, Lcn/nubia/notepad/utils/CtaPermissionUtils$2;-><init>(Lcn/nubia/notepad/utils/CtaPermissionUtils;)V

    invoke-virtual {v1, v6, v7}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 134
    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 135
    return-void

    .line 92
    .restart local v5    # "networkTerms":Landroid/view/View;
    :cond_2
    const/16 v6, 0x8

    goto :goto_0
.end method


# virtual methods
.method public firstShowCtaWarningRequestPermissions(Ljava/lang/String;Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 71
    iput-object p2, p0, Lcn/nubia/notepad/utils/CtaPermissionUtils;->onRequestPermissionsListener:Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;

    .line 72
    iget-object v0, p0, Lcn/nubia/notepad/utils/CtaPermissionUtils;->context:Landroid/app/Activity;

    invoke-static {v0}, Lcn/nubia/notepad/utils/CtaPermissionUtils;->shouldShowCtaDialog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcn/nubia/notepad/utils/CtaPermissionUtils;->isShowNetworkTerms()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/notepad/utils/CtaPermissionUtils;->showCtaWarning(Z)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/utils/CtaPermissionUtils;->onRequestPermissionsListener:Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;

    invoke-interface {v0}, Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;->onGranted()V

    goto :goto_0
.end method

.method public showCtaWarningRequestPermissions(Ljava/lang/String;Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "listener"    # Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 60
    iput-object p2, p0, Lcn/nubia/notepad/utils/CtaPermissionUtils;->onRequestPermissionsListener:Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;

    .line 61
    iget-object v1, p0, Lcn/nubia/notepad/utils/CtaPermissionUtils;->context:Landroid/app/Activity;

    invoke-static {v1}, Lcn/nubia/notepad/utils/CtaPermissionUtils;->shouldShowCtaDialog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-direct {p0}, Lcn/nubia/notepad/utils/CtaPermissionUtils;->isShowNetworkTerms()Z

    move-result v1

    invoke-direct {p0, v1}, Lcn/nubia/notepad/utils/CtaPermissionUtils;->showCtaWarning(Z)V

    .line 68
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance v0, Lcn/nubia/notepad/engine/permission/PermissionInspector;

    iget-object v1, p0, Lcn/nubia/notepad/utils/CtaPermissionUtils;->context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/nubia/notepad/engine/permission/PermissionInspector;-><init>(Landroid/app/Activity;)V

    .line 65
    .local v0, "inspector":Lcn/nubia/notepad/engine/permission/PermissionInspector;
    invoke-static {p1}, Lcn/nubia/notepad/utils/PermissionList;->getPermissionList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/notepad/utils/CtaPermissionUtils;->onRequestPermissionsListener:Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;

    invoke-virtual {v0, p1, v1, v2}, Lcn/nubia/notepad/engine/permission/PermissionInspector;->requestPermissions(Ljava/lang/String;[Ljava/lang/String;Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;)V

    goto :goto_0
.end method
