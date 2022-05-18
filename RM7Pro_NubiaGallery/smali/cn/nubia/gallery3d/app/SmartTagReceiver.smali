.class public Lcn/nubia/gallery3d/app/SmartTagReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmartTagReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private delWallpaper(Ljava/lang/String;)V
    .locals 1

    .line 39
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private setBitmapAsWallpaper(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 31
    :try_start_0
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 35
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wallpapertype"

    const/4 v2, 0x0

    .line 17
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "wallpapername"

    .line 18
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v3, "com.ztemt.nfctag.SET_WALLPAPER"

    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 21
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/app/SmartTagReceiver;->setBitmapAsWallpaper(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne v1, v2, :cond_1

    const-string p1, "com.ztemt.nfctag.DELETE_WALLPAPER"

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 23
    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/app/SmartTagReceiver;->delWallpaper(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
