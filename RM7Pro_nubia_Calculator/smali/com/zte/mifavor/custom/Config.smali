.class public Lcom/zte/mifavor/custom/Config;
.super Ljava/lang/Object;
.source "Config.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMifavorTheme(Landroid/content/Context;)Z
    .locals 3

    .line 10
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v1, Lcom/zte/extres/R$attr;->versionType:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    return p0
.end method
