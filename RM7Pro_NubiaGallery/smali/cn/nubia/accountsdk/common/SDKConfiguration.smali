.class public Lcn/nubia/accountsdk/common/SDKConfiguration;
.super Ljava/lang/Object;
.source "SDKConfiguration.java"


# static fields
.field private static final NEW_ACCOUNT_INTENT:I = 0x20e

.field private static final NUBIA_ACCOUNT_PKG_NAME:Ljava/lang/String; = "cn.nubia.accounts"

.field private static final NUBIA_ACCOUNT_PKG_SURPORT_VERSIONCODE:I = 0x24

.field private static final SURPORT_CERTIFICATION:I = 0x1fa

.field private static final SURPORT_WEBSYN_LOGIN:I = 0x1fd

.field private static mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInNubiaRom(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "cn.nubia.accounts"

    .line 15
    invoke-static {p0, v0}, Lcn/nubia/accountsdk/common/SDKUtils;->isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isNewAccountIntent(Landroid/content/Context;)Z
    .locals 1

    .line 38
    sget v0, Lcn/nubia/accountsdk/common/SDKConfiguration;->mVersionCode:I

    if-nez v0, :cond_0

    const-string v0, "cn.nubia.accounts"

    .line 39
    invoke-static {p0, v0}, Lcn/nubia/accountsdk/common/SDKUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    sput p0, Lcn/nubia/accountsdk/common/SDKConfiguration;->mVersionCode:I

    .line 41
    :cond_0
    sget p0, Lcn/nubia/accountsdk/common/SDKConfiguration;->mVersionCode:I

    const/16 v0, 0x20e

    if-lt p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isNubiaAccountAppSurport(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "cn.nubia.accounts"

    .line 19
    invoke-static {p0, v0}, Lcn/nubia/accountsdk/common/SDKUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    sput p0, Lcn/nubia/accountsdk/common/SDKConfiguration;->mVersionCode:I

    const/16 v0, 0x24

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSurportCertification(Landroid/content/Context;)Z
    .locals 1

    .line 31
    sget v0, Lcn/nubia/accountsdk/common/SDKConfiguration;->mVersionCode:I

    if-nez v0, :cond_0

    const-string v0, "cn.nubia.accounts"

    .line 32
    invoke-static {p0, v0}, Lcn/nubia/accountsdk/common/SDKUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    sput p0, Lcn/nubia/accountsdk/common/SDKConfiguration;->mVersionCode:I

    .line 34
    :cond_0
    sget p0, Lcn/nubia/accountsdk/common/SDKConfiguration;->mVersionCode:I

    const/16 v0, 0x1fa

    if-lt p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isSurportWebSynLogin(Landroid/content/Context;)Z
    .locals 1

    .line 24
    sget v0, Lcn/nubia/accountsdk/common/SDKConfiguration;->mVersionCode:I

    if-nez v0, :cond_0

    const-string v0, "cn.nubia.accounts"

    .line 25
    invoke-static {p0, v0}, Lcn/nubia/accountsdk/common/SDKUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    sput p0, Lcn/nubia/accountsdk/common/SDKConfiguration;->mVersionCode:I

    .line 27
    :cond_0
    sget p0, Lcn/nubia/accountsdk/common/SDKConfiguration;->mVersionCode:I

    const/16 v0, 0x1fd

    if-lt p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
