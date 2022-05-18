.class public Lcom/xcloud/pluginAlbum/AlbumConfig;
.super Ljava/lang/Object;
.source "AlbumConfig.java"


# static fields
.field public static final BAIDU_ACCOUNT_EXPLICIT:I = 0x66

.field public static final BAIDU_ACCOUNT_IMPLICIT:I = 0x67

.field public static final BAIDU_ACCOUNT_UNBIND:I = 0x65

.field public static BAIDU_APIKEY:Ljava/lang/String; = null

.field public static BAIDU_APPID:Ljava/lang/String; = null

.field public static BAIDU_PACKAGE_NAME:Ljava/lang/String; = null

.field public static final BAIDU_PERMISSIONS:[Ljava/lang/String;

.field public static BAIDU_SECRETKEY:Ljava/lang/String; = null

.field public static final CLOUDALBUM:Ljava/lang/String; = "/apps/nubia_cloud/\u7167\u7247/\u4e91\u76f8\u518c"

.field public static final DOWNLOADPATH:Ljava/lang/String;

.field public static final LOCALPATH:Ljava/lang/String;

.field public static NUBIA_ACCOUNT_MAIN_ACTIVITY:Ljava/lang/String; = null

.field public static NUBIA_ACCOUNT_TYPE:Ljava/lang/String; = null

.field public static NUBIA_ACCOUT_PACKAGE_NAME:Ljava/lang/String; = null

.field public static NUBIA_AUTHENTICATE_KEY:Ljava/lang/String; = null

.field public static NUBIA_AUTHENTICATE_VALUE:Ljava/lang/String; = null

.field public static final PHOTOFOLDER:Ljava/lang/String; = "/apps/nubia_cloud/\u7167\u7247"

.field public static final REMOTEPATH:Ljava/lang/String; = "/apps/nubia_cloud"

.field public static final REQUEST_TOKEN:I = 0x2710

.field public static final SDCRADPATH:Ljava/lang/String;

.field public static final SETTINGS_ENTER_TO_LOGIN_ACTION:Ljava/lang/String; = "cn.nubia.account.SETTINGS_LOGIN_ENTER"

.field public static final SETTINGS_ENTER_TO_REGIST_ACTION:Ljava/lang/String; = "cn.nubia.account.SETTINGS_REGIST_ENTER"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xcloud/pluginAlbum/AlbumConfig;->SDCRADPATH:Ljava/lang/String;

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/albumTest/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xcloud/pluginAlbum/AlbumConfig;->LOCALPATH:Ljava/lang/String;

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Download/CloudPictures"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xcloud/pluginAlbum/AlbumConfig;->DOWNLOADPATH:Ljava/lang/String;

    const-string v0, "basic"

    const-string v1, "netdisk"

    .line 37
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xcloud/pluginAlbum/AlbumConfig;->BAIDU_PERMISSIONS:[Ljava/lang/String;

    const-string v0, "865549"

    .line 39
    sput-object v0, Lcom/xcloud/pluginAlbum/AlbumConfig;->BAIDU_APPID:Ljava/lang/String;

    const-string v0, "bRovXyGrqdAUUQkBk3gcFZK3"

    .line 40
    sput-object v0, Lcom/xcloud/pluginAlbum/AlbumConfig;->BAIDU_APIKEY:Ljava/lang/String;

    const-string v0, "WGtsfw4kaorKK1rYmruiG7F0AloXjf7C"

    .line 41
    sput-object v0, Lcom/xcloud/pluginAlbum/AlbumConfig;->BAIDU_SECRETKEY:Ljava/lang/String;

    const-string v0, "com.ztemt"

    .line 43
    sput-object v0, Lcom/xcloud/pluginAlbum/AlbumConfig;->NUBIA_ACCOUNT_TYPE:Ljava/lang/String;

    const-string v0, "Nubia_Authenticate"

    .line 44
    sput-object v0, Lcom/xcloud/pluginAlbum/AlbumConfig;->NUBIA_AUTHENTICATE_KEY:Ljava/lang/String;

    const-string v0, "nubia"

    .line 45
    sput-object v0, Lcom/xcloud/pluginAlbum/AlbumConfig;->NUBIA_AUTHENTICATE_VALUE:Ljava/lang/String;

    const-string v0, "cn.nubia.accounts"

    .line 50
    sput-object v0, Lcom/xcloud/pluginAlbum/AlbumConfig;->NUBIA_ACCOUT_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "cn.nubia.accounts.AccountIntroActivity"

    .line 51
    sput-object v0, Lcom/xcloud/pluginAlbum/AlbumConfig;->NUBIA_ACCOUNT_MAIN_ACTIVITY:Ljava/lang/String;

    const-string v0, "com.baidu.xcloud"

    .line 52
    sput-object v0, Lcom/xcloud/pluginAlbum/AlbumConfig;->BAIDU_PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
