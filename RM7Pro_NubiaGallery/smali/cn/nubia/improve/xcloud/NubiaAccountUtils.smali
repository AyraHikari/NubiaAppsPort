.class public Lcn/nubia/improve/xcloud/NubiaAccountUtils;
.super Ljava/lang/Object;
.source "NubiaAccountUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NubiaAccountUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearCloudAlbumCache(Lcn/nubia/gallery3d/app/GalleryActivity;)V
    .locals 2

    const-string v0, "NubiaAccountUtils"

    const-string v1, " clearCloudAlbumCache"

    .line 85
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object p0

    const/16 v0, 0x8

    .line 88
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object p0

    check-cast p0, Lcn/nubia/cloud/ui/CloudAlbumSet;

    .line 89
    invoke-virtual {p0}, Lcn/nubia/cloud/ui/CloudAlbumSet;->clearCache()V

    return-void
.end method

.method private static clearCloudTaskDatabase(Lcn/nubia/gallery3d/app/GalleryActivity;)V
    .locals 2

    const-string v0, "NubiaAccountUtils"

    const-string v1, " clearCloudTaskDatabase"

    .line 79
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->deleteItem(ILjava/lang/String;)Z

    return-void
.end method

.method private static getStringPref(Lcn/nubia/gallery3d/app/GalleryActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 64
    check-cast p0, Landroid/app/Activity;

    const-string v0, "CloudAblumBackupSetting"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 66
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isLogin(Landroid/content/Context;)Z
    .locals 1

    .line 93
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    .line 94
    sget-object v0, Lcom/xcloud/pluginAlbum/AlbumConfig;->NUBIA_ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 95
    array-length p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isNubiaAccountChanged(Lcn/nubia/gallery3d/app/GalleryActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastAccountName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mCurrentAccountName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NubiaAccountUtils"

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    .line 54
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 55
    invoke-static {p0}, Lcn/nubia/improve/xcloud/NubiaAccountUtils;->clearCloudTaskDatabase(Lcn/nubia/gallery3d/app/GalleryActivity;)V

    .line 56
    invoke-static {p0}, Lcn/nubia/improve/xcloud/NubiaAccountUtils;->clearCloudAlbumCache(Lcn/nubia/gallery3d/app/GalleryActivity;)V

    :cond_0
    const-string p2, "last_account"

    .line 58
    invoke-static {p0, p2, p1}, Lcn/nubia/improve/xcloud/NubiaAccountUtils;->setStringPref(Lcn/nubia/gallery3d/app/GalleryActivity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static isNubiaAccountExist(Lcn/nubia/gallery3d/app/GalleryActivity;Landroid/os/Handler;)Z
    .locals 5

    .line 25
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 26
    sget-object v1, Lcom/xcloud/pluginAlbum/AlbumConfig;->NUBIA_ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    const-string v1, "last_account"

    const-string v2, ""

    .line 27
    invoke-static {p0, v1, v2}, Lcn/nubia/improve/xcloud/NubiaAccountUtils;->getStringPref(Lcn/nubia/gallery3d/app/GalleryActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    array-length v3, v0

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 31
    aget-object v0, v0, v4

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    const/4 v4, 0x1

    .line 39
    :cond_1
    invoke-static {p0, v2, v1}, Lcn/nubia/improve/xcloud/NubiaAccountUtils;->isNubiaAccountChanged(Lcn/nubia/gallery3d/app/GalleryActivity;Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public static isNubiaAccountLogin(Lcn/nubia/gallery3d/app/GalleryActivity;Landroid/os/Handler;)Z
    .locals 0

    .line 45
    invoke-static {p0, p1}, Lcn/nubia/improve/xcloud/NubiaAccountUtils;->isNubiaAccountExist(Lcn/nubia/gallery3d/app/GalleryActivity;Landroid/os/Handler;)Z

    move-result p0

    return p0
.end method

.method private static setStringPref(Lcn/nubia/gallery3d/app/GalleryActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 71
    check-cast p0, Landroid/app/Activity;

    const-string v0, "CloudAblumBackupSetting"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 73
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 74
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
