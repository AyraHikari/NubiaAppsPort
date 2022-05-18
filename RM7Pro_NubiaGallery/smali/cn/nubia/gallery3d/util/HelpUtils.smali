.class public Lcn/nubia/gallery3d/util/HelpUtils;
.super Ljava/lang/Object;
.source "HelpUtils.java"


# static fields
.field private static final PARAM_LANGUAGE_CODE:Ljava/lang/String; = "hl"

.field private static final PARAM_VERSION:Ljava/lang/String; = "version"

.field private static final TAG:Ljava/lang/String; = "cn.nubia.gallery3d.util.HelpUtils"

.field private static sCachedVersionCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;I)Z
    .locals 1

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 67
    invoke-static {p0, p1, p2}, Lcn/nubia/gallery3d/util/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z
    .locals 2

    .line 80
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return v1

    .line 88
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p0, p2}, Lcn/nubia/gallery3d/util/HelpUtils;->uriWithAddedParameters(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    .line 92
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p0, 0x10800000

    .line 93
    invoke-virtual {p2, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 98
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 99
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 p0, 0x1

    .line 100
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return p0
.end method

.method private static uriWithAddedParameters(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .line 113
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 116
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hl"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 119
    sget-object v0, Lcn/nubia/gallery3d/util/HelpUtils;->sCachedVersionCode:Ljava/lang/String;

    const-string v1, "version"

    if-nez v0, :cond_0

    .line 123
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 123
    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 125
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/nubia/gallery3d/util/HelpUtils;->sCachedVersionCode:Ljava/lang/String;

    .line 128
    invoke-virtual {p1, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 132
    sget-object v0, Lcn/nubia/gallery3d/util/HelpUtils;->TAG:Ljava/lang/String;

    const-string v1, "Invalid package name for context"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 139
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
