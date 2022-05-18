.class public Lcn/nubia/deskclock/util/DynamicWallpaperController;
.super Ljava/lang/Object;
.source "DynamicWallpaperController.java"


# static fields
.field public static PACKNAME:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DynamicWallpaperController"


# instance fields
.field private mContext:Landroid/content/Context;

.field uriSetSuperWallpaper:Landroid/net/Uri;

.field uriSetWallpaper:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "cn.nubia.dynamicwallpaper"

    sput-object v0, Lcn/nubia/deskclock/util/DynamicWallpaperController;->PACKNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/util/DynamicWallpaperController;->mContext:Landroid/content/Context;

    .line 20
    const-string v0, "content://cn.nubia.dynamicwallpaper.provider.DynamicWallpaperProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/util/DynamicWallpaperController;->uriSetWallpaper:Landroid/net/Uri;

    .line 21
    const-string v0, "content://cn.nubia.dynamicwallpaper.provider.SuperWallpaperProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/util/DynamicWallpaperController;->uriSetSuperWallpaper:Landroid/net/Uri;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/util/DynamicWallpaperController;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public getCurrentDynamicWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    .line 39
    const/4 v2, 0x0

    .line 41
    .local v2, "name":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcn/nubia/deskclock/util/DynamicWallpaperController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/deskclock/util/DynamicWallpaperController;->uriSetWallpaper:Landroid/net/Uri;

    const-string v5, "getDynamicWallpaperName"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 42
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "dynamic_wallpaper_name"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 47
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/util/DynamicWallpaperController;->getOtherDrawableFromPkg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    const-string v3, "DynamicWallpaperController"

    const-string v4, " DynamicWallpaperController getCurrentDynamicWallpaper"

    invoke-static {v3, v4, v1}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getCurrentDynamicWallpaperLocal()Landroid/graphics/drawable/Drawable;
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 55
    const/4 v3, 0x0

    .line 57
    .local v3, "name":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcn/nubia/deskclock/util/DynamicWallpaperController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/deskclock/util/DynamicWallpaperController;->uriSetWallpaper:Landroid/net/Uri;

    const-string v8, "getDynamicWallpaperName"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 58
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "dynamic_wallpaper_name"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 60
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isSupportUI90()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 61
    const-string v6, "DynamicWallpaperController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCurrentDynamicWallpaperLocal: name2 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v6, p0, Lcn/nubia/deskclock/util/DynamicWallpaperController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    sget-object v7, Lcn/nubia/deskclock/util/DynamicWallpaperController;->PACKNAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 63
    .local v4, "resources":Landroid/content/res/Resources;
    const-string v6, "drawable"

    sget-object v7, Lcn/nubia/deskclock/util/DynamicWallpaperController;->PACKNAME:Ljava/lang/String;

    invoke-virtual {v4, v3, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 75
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v4    # "resources":Landroid/content/res/Resources;
    :goto_0
    return-object v1

    .line 66
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dynamic_wallpaper_preview/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 67
    const-string v6, "DynamicWallpaperController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCurrentDynamicWallpaperLocal: name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcn/nubia/deskclock/util/DynamicWallpaperController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v1, v5

    .line 75
    goto :goto_0
.end method

.method public getCurrentSuperWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    .line 101
    const/4 v2, 0x0

    .line 102
    .local v2, "resName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 104
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/util/DynamicWallpaperController;->getSuperWallpaperName()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 106
    const-string v4, "DynamicWallpaperController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentSuperWallpaper: name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v4, p0, Lcn/nubia/deskclock/util/DynamicWallpaperController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sget-object v5, Lcn/nubia/deskclock/util/DynamicWallpaperController;->PACKNAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 108
    .local v3, "resources":Landroid/content/res/Resources;
    const-string v4, "drawable"

    sget-object v5, Lcn/nubia/deskclock/util/DynamicWallpaperController;->PACKNAME:Ljava/lang/String;

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v4, v0

    .line 116
    .end local v3    # "resources":Landroid/content/res/Resources;
    :goto_0
    return-object v4

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getOtherDrawableFromPkg(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 30
    :try_start_0
    iget-object v2, p0, Lcn/nubia/deskclock/util/DynamicWallpaperController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcn/nubia/deskclock/util/DynamicWallpaperController;->PACKNAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 31
    .local v1, "res":Landroid/content/res/Resources;
    const-string v2, "drawable"

    sget-object v3, Lcn/nubia/deskclock/util/DynamicWallpaperController;->PACKNAME:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 35
    .end local v1    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DynamicWallpaperController"

    const-string v3, " DynamicWallpaperController getOtherDrawableFromPkg"

    invoke-static {v2, v3, v0}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSuperWallpaperName()Ljava/lang/String;
    .locals 8

    .prologue
    .line 83
    const/4 v2, 0x0

    .line 85
    .local v2, "superWallpaperName":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcn/nubia/deskclock/util/DynamicWallpaperController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/deskclock/util/DynamicWallpaperController;->uriSetSuperWallpaper:Landroid/net/Uri;

    const-string v5, "getSuperWallpaper"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 87
    .local v1, "resultBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 88
    const-string v3, "super_wallpaper"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 93
    .end local v1    # "resultBundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v2

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DynamicWallpaperController"

    const-string v4, " setPreviewWallpaperName"

    invoke-static {v3, v4, v0}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
