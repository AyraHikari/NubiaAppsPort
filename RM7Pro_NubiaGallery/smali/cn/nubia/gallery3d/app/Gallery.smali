.class public final Lcn/nubia/gallery3d/app/Gallery;
.super Lcn/nubia/gallery3d/app/AbstractGalleryActivity;
.source "Gallery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcn/nubia/gallery3d/app/AbstractGalleryActivity$PermissionListener;


# static fields
.field public static final ACTION_FOLDER:Ljava/lang/String; = "gallery3d.action.FOLDER"

.field public static final ACTION_FORCETOUCH:Ljava/lang/String; = "gallery.action.forcetouch"

.field public static final ACTION_FORCE_TOUCH_REVIEW:Ljava/lang/String; = "cn.nubia.gallery.action.force.REVIEW"

.field public static final ACTION_MARK:Ljava/lang/String; = "android.nubia.intent.action.MARK"

.field public static final ACTION_REVIEW:Ljava/lang/String; = "com.android.camera.action.REVIEW"

.field public static final ACTION_SLIDESHOW:Ljava/lang/String; = "start_SLIDESHOW"

.field public static final EXTRA_CROP:Ljava/lang/String; = "crop"

.field public static final EXTRA_DREAM:Ljava/lang/String; = "dream"

.field public static final EXTRA_SLIDESHOW:Ljava/lang/String; = "slideshow"

.field public static final GET_MULTI_CONTENT_DEFAULT_MAXNUM:I = 0x1e

.field public static final KEY_ADDTO_ISCOPY:Ljava/lang/String; = "addto_iscopy"

.field public static final KEY_ADDTO_NEWFOLDER:Ljava/lang/String; = "addto_newfolder"

.field public static final KEY_CAMERA_SCREEN_BRIGHTNESS:Ljava/lang/String; = "camera_screen_light"

.field public static final KEY_CAMERA_VIEW:Ljava/lang/String; = "cameraview"

.field public static final KEY_FOLDER_PATH:Ljava/lang/String; = "folder_path"

.field public static final KEY_GET_ALBUM:Ljava/lang/String; = "get-album"

.field public static final KEY_GET_CONTENT:Ljava/lang/String; = "get-content"

.field public static final KEY_GET_MULTI_CONTENT:Ljava/lang/String; = "get_multi_content"

.field public static final KEY_GET_MULTI_CONTENT_MAX_NUM:Ljava/lang/String; = "max_num"

.field public static final KEY_GET_PATH_RESULT:Ljava/lang/String; = "path_result"

.field public static final KEY_GET_URI_RESULT:Ljava/lang/String; = "uri_result"

.field private static final KEY_INITIALIZE_BY_INTENT:Ljava/lang/String; = "initialize_by_intent"

.field private static final KEY_INITIALIZE_BY_REDMAGICTIME:Ljava/lang/String; = "is_game_highlights"

.field public static final KEY_MEDIA_TYPES:Ljava/lang/String; = "mediaTypes"

.field public static final KEY_SECURE_CAMERA:Ljava/lang/String; = "secure_camera"

.field public static final KEY_SECURE_CAMERA_TIME:Ljava/lang/String; = "secure_album_time"

.field public static final KEY_TYPE_BITS:Ljava/lang/String; = "type-bits"

.field public static final NAV_VISIBILITY_SETTING:Ljava/lang/String; = "cc_navi_status"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "cn.nubia.gallery3d"

.field private static final TAG:Ljava/lang/String; = "Gallery"


# instance fields
.field private mBatteryListener:Lcn/nubia/improve/category/BatteryListener;

.field private mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

.field private mHandler:Landroid/os/Handler;

.field private mShouldInitializeByIntent:Z

.field private mVersionCheckDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;-><init>()V

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcn/nubia/gallery3d/app/Gallery;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    .line 113
    iput-object v0, p0, Lcn/nubia/gallery3d/app/Gallery;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 114
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/Gallery;->mShouldInitializeByIntent:Z

    .line 116
    iput-object v0, p0, Lcn/nubia/gallery3d/app/Gallery;->mBatteryListener:Lcn/nubia/improve/category/BatteryListener;

    return-void
.end method

.method private getContentType(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    .line 277
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 280
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    .line 281
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object v0

    :catchall_0
    move-exception p1

    const-string v0, "Gallery"

    const-string v1, "get type fail"

    .line 285
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 618
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 620
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x4000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 624
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Gallery"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private getSlideShowPath(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 563
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 565
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    :cond_0
    if-le v0, v2, :cond_2

    const-string v3, "/combo/item/{"

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-ge v1, v4, :cond_1

    .line 569
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 570
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 572
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private initializeByIntent()V
    .locals 4

    .line 206
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeByIntent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Gallery"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.GET_CONTENT"

    .line 210
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/Gallery;->startGetContent(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_0
    const-string v3, "android.intent.action.PICK"

    .line 212
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "action PICK is not supported"

    .line 216
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "vnd.android.cursor.dir/"

    .line 218
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "/image"

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "image/*"

    .line 220
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v2, "/video"

    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "video/*"

    .line 222
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    :cond_2
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/Gallery;->startGetContent(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    const-string v2, "android.intent.action.VIEW"

    .line 225
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "com.android.camera.action.REVIEW"

    .line 226
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "cn.nubia.gallery.action.force.REVIEW"

    .line 227
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    const-string v2, "start_SLIDESHOW"

    .line 229
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 230
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/Gallery;->startSlideShowByPaths(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    const-string v2, "gallery3d.action.FOLDER"

    .line 231
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 232
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/Gallery;->startFolderPage(Landroid/content/Intent;)V

    goto :goto_1

    .line 234
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->startDefaultPage()V

    goto :goto_1

    .line 228
    :cond_7
    :goto_0
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/Gallery;->startViewAction(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method private resumeCloudInformation()V
    .locals 3

    .line 189
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Gallery;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcn/nubia/improve/xcloud/NubiaAccountUtils;->isNubiaAccountLogin(Lcn/nubia/gallery3d/app/GalleryActivity;Landroid/os/Handler;)Z

    move-result v0

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nubiaAccountexist = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Gallery"

    invoke-static {v2, v1}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 192
    iget-object v1, p0, Lcn/nubia/gallery3d/app/Gallery;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    if-nez v1, :cond_0

    .line 193
    invoke-static {p0}, Lcn/nubia/improve/xcloud/CloudManager;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/xcloud/CloudManager;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/gallery3d/app/Gallery;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    .line 196
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/Gallery;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    if-nez v1, :cond_1

    const-string v1, "mCloudManager == null "

    .line 197
    invoke-static {v2, v1}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_1
    iget-object v1, p0, Lcn/nubia/gallery3d/app/Gallery;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    if-eqz v1, :cond_2

    .line 200
    invoke-virtual {v1, v0}, Lcn/nubia/improve/xcloud/CloudManager;->setLogin(Z)V

    :cond_2
    return-void
.end method

.method private setCloudPageVisibility()V
    .locals 2

    .line 172
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.GET_CONTENT"

    .line 173
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PICK"

    .line 174
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/improve/ImproveConfig;->isSupportCloud(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Gallery;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->setGetContentConfig()V

    :cond_1
    return-void
.end method

.method private startFolderPage(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "folder_path"

    .line 425
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Gallery"

    const-string v0, "open folder failed: path null"

    .line 427
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->finish()V

    return-void

    .line 432
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 433
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/nubia/gallery3d/data/DataManager;->getLocalFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "media-path"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v1, "is-tab"

    .line 434
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 435
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    const-class v1, Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-virtual {p1, v1, v0}, Lcn/nubia/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method private startFromLauncher()V
    .locals 6

    .line 580
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 581
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "DataType"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 585
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "media-path"

    .line 584
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "is-tab"

    const/4 v4, 0x1

    .line 586
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 587
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v4

    const-class v5, Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-virtual {v4, v5, v0}, Lcn/nubia/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 589
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcn/nubia/gallery3d/data/DataManager;->getForceTouchData(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 590
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 591
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method private startFromLauncherIcon()V
    .locals 5

    .line 595
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 597
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "media-path"

    .line 596
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is-tab"

    const/4 v3, 0x1

    .line 598
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 599
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-virtual {v3, v4, v0}, Lcn/nubia/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 601
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/DataManager;->getForceTouchMarkData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 602
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 603
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method private startGetContent(Landroid/content/Intent;)V
    .locals 8

    const-string v0, "get_multi_content"

    const/4 v1, 0x0

    .line 257
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "addto_newfolder"

    .line 258
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "max_num"

    .line 259
    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 260
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v6, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 261
    :goto_0
    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    xor-int/2addr v2, v0

    const-string v7, "get-content"

    .line 262
    invoke-virtual {v6, v7, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-nez v1, :cond_1

    const/16 v1, 0x1e

    .line 266
    :cond_1
    invoke-virtual {v6, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    invoke-virtual {v6, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 268
    invoke-static {p0, p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p1

    const-string v1, "type-bits"

    .line 269
    invoke-virtual {v6, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 270
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/nubia/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "media-path"

    invoke-virtual {v6, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "is-tab"

    .line 271
    invoke-virtual {v6, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const p1, 0x7f010010

    const v0, 0x7f01002a

    .line 272
    invoke-virtual {p0, p1, v0}, Lcn/nubia/gallery3d/app/Gallery;->overridePendingTransition(II)V

    .line 273
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    const-class v0, Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-virtual {p1, v0, v6}, Lcn/nubia/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method private startPageWithCursorDirBaseType(Landroid/content/Intent;)V
    .locals 5

    .line 392
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 393
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v1

    .line 394
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "mediaTypes"

    const/4 v4, 0x0

    .line 395
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 397
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 398
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    :cond_0
    const/4 p1, 0x0

    .line 400
    invoke-virtual {v1, v2, p1}, Lcn/nubia/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 404
    invoke-virtual {v1, v2}, Lcn/nubia/gallery3d/data/DataManager;->getMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v3

    .line 405
    instance-of v4, v3, Lcn/nubia/gallery3d/data/MediaSet;

    if-eqz v4, :cond_1

    .line 406
    move-object p1, v3

    check-cast p1, Lcn/nubia/gallery3d/data/MediaSet;

    :cond_1
    if-eqz p1, :cond_3

    .line 410
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaSet;->isLeafAlbum()Z

    move-result p1

    const-string v3, "media-path"

    if-eqz p1, :cond_2

    .line 411
    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 413
    invoke-virtual {v1, p1}, Lcn/nubia/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "parent-media-path"

    .line 412
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    const-class v1, Lcn/nubia/gallery3d/app/AlbumPage;

    invoke-virtual {p1, v1, v0}, Lcn/nubia/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 416
    :cond_2
    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    const-class v1, Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-virtual {p1, v1, v0}, Lcn/nubia/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 420
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->startDefaultPage()V

    :goto_0
    return-void
.end method

.method private startSlideShow(Landroid/content/Intent;)V
    .locals 4

    .line 544
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getAppActivity()Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 545
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    .line 546
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 547
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/DataManager;->getMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v3

    instance-of v3, v3, Lcn/nubia/gallery3d/data/MediaItem;

    if-eqz v3, :cond_1

    .line 548
    :cond_0
    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    .line 550
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 551
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "media-set-path"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "random-order"

    .line 552
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "repeat"

    .line 553
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    const-string v3, "dream"

    .line 554
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 555
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 557
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    const-class v1, Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-virtual {p1, v1, v0}, Lcn/nubia/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method private startSlideShowByPaths(Landroid/content/Intent;)V
    .locals 3

    .line 529
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getAppActivity()Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 530
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "album-paths"

    .line 531
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 532
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/app/Gallery;->getSlideShowPath(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 535
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v2, "media-set-path"

    .line 537
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "random-order"

    .line 538
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "repeat"

    .line 539
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 540
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method private startViewAction(Landroid/content/Intent;)V
    .locals 11

    .line 292
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Gallery;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->hideTab()V

    const-string v0, "SingleItemOnly"

    const/4 v1, 0x0

    .line 294
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "slideshow"

    .line 296
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/Gallery;->startSlideShow(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 300
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 301
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v3

    .line 302
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 303
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/Gallery;->getContentType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    if-nez v4, :cond_1

    .line 305
    invoke-static {p0, p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p1

    const-string v0, "type-bits"

    .line 306
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 307
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    .line 308
    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "media-path"

    .line 307
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    const-class v0, Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-virtual {p1, v0, v2}, Lcn/nubia/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_2

    :cond_1
    const/4 v6, 0x1

    if-nez v5, :cond_2

    const p1, 0x7f10017c

    .line 311
    invoke-static {p0, p1, v6}, Lcn/nubia/gallery3d/util/GalleryUtils;->showToast(Landroid/content/Context;II)V

    .line 312
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->finish()V

    return-void

    :cond_2
    const-string v7, "*/*"

    .line 314
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const p1, 0x7f10017d

    .line 315
    invoke-static {p0, p1, v6}, Lcn/nubia/gallery3d/util/GalleryUtils;->showToast(Landroid/content/Context;II)V

    .line 316
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->finish()V

    return-void

    :cond_3
    const-string v7, "vnd.android.cursor.dir"

    .line 318
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 319
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/Gallery;->startPageWithCursorDirBaseType(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 321
    :cond_4
    invoke-virtual {v3, v4, v5}, Lcn/nubia/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v7

    .line 322
    invoke-virtual {v3, v7}, Lcn/nubia/gallery3d/data/DataManager;->getDefaultSetOf(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v8

    if-nez v8, :cond_5

    .line 323
    invoke-static {v4}, Lcn/nubia/gallery3d/util/GalleryUtils;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 324
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v4}, Lcn/nubia/gallery3d/util/GalleryUtils;->transMediaDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 326
    invoke-virtual {v3, v4, v5}, Lcn/nubia/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v7

    .line 327
    invoke-virtual {v3, v7}, Lcn/nubia/gallery3d/data/DataManager;->getDefaultSetOf(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v8

    .line 330
    :cond_5
    invoke-virtual {v7}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "media-item-path"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cameraview"

    .line 333
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 335
    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/high16 v3, -0x40800000    # -1.0f

    const-string v5, "camera_screen_light"

    .line 336
    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v3

    .line 338
    invoke-static {p0, v3}, Lcn/nubia/gallery3d/app/ScreenBrightness;->set(Landroid/app/Activity;F)V

    .line 339
    sget-object v8, Lcn/nubia/gallery3d/data/CameraAlbum;->PATH_ALL:Lcn/nubia/gallery3d/data/Path;

    :cond_6
    const-string v3, "openCollectCategory"

    .line 341
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 345
    invoke-virtual {v7}, Lcn/nubia/gallery3d/data/Path;->getObject()Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v3

    .line 346
    check-cast v3, Lcn/nubia/gallery3d/data/LocalMediaItem;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/LocalMediaItem;->isMarked()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "/local/all"

    .line 347
    invoke-static {v3}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v3

    const-string v5, "mark"

    invoke-virtual {v3, v5}, Lcn/nubia/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v3

    sget v5, Lcn/nubia/gallery3d/util/MediaSetUtils;->MARK_BUCKET_ID:I

    .line 348
    invoke-virtual {v3, v5}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v8

    :cond_7
    const-string v3, "is MutilShoot:"

    const-string v5, "Gallery"

    const-string v7, "/MultiShootcluster/all"

    const-string v9, "multishoot"

    const-string v10, "media-set-path"

    if-eqz v8, :cond_9

    if-nez v0, :cond_9

    if-eqz p1, :cond_8

    .line 352
    invoke-virtual {p1, v9, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 353
    invoke-virtual {v2, v10, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v9, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 356
    :cond_8
    invoke-virtual {v8}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v10, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_0
    const-string v0, "treat-back-as-up"

    .line 360
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 361
    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_a
    const-string v0, "is_game_highlights"

    .line 364
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v8, "cn.nubia.gamehighlights"

    .line 365
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x6

    .line 366
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/app/Gallery;->setRequestedOrientation(I)V

    :cond_b
    const-string v0, "secure_camera"

    .line 369
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 370
    sget-object v0, Lcn/nubia/gallery3d/data/VisitorModeCameraAlbum;->PATH_ALL:Lcn/nubia/gallery3d/data/Path;

    .line 371
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 372
    invoke-virtual {v2, v10, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 375
    :cond_c
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v10, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v0, "visitor-mode"

    .line 377
    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "secure_album_time"

    .line 378
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object p1

    const-string v0, "visitor-mode-time"

    .line 380
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    :cond_d
    xor-int/lit8 p1, v4, 0x1

    const-string v0, "treat-home-as-back"

    .line 383
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const p1, 0x7f010012

    const v0, 0x7f010026

    .line 385
    invoke-virtual {p0, p1, v0}, Lcn/nubia/gallery3d/app/Gallery;->overridePendingTransition(II)V

    .line 386
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object p1

    const-class v0, Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-virtual {p1, v0, v2}, Lcn/nubia/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public initCloudInformation()V
    .locals 0

    .line 613
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/Gallery;->resumeCloudInformation()V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 523
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 524
    iput-object p1, p0, Lcn/nubia/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 182
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 183
    iget-object p1, p0, Lcn/nubia/gallery3d/app/Gallery;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryAppBar;->setToolbarLayout()V

    .line 185
    invoke-static {p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLandOritentation270(Landroid/app/Activity;)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 120
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c004e

    .line 121
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/app/Gallery;->setContentView(I)V

    .line 122
    new-instance v0, Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/app/GalleryAppBar;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/app/Gallery;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    .line 123
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/Gallery;->setCloudPageVisibility()V

    .line 124
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/GalleryAppImpl;

    .line 125
    invoke-static {p0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_0

    .line 126
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->getCurrentLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 127
    :cond_0
    invoke-static {p0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->reloadCameraAlbumNames(Landroid/content/Context;)V

    .line 128
    invoke-static {p0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->reloadThingsAlbumNames(Landroid/content/Context;)V

    .line 129
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->setCurrentLanguage(Ljava/lang/String;)V

    .line 143
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/app/Gallery;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_2

    .line 144
    new-instance p1, Lcn/nubia/gallery3d/app/Gallery$1;

    invoke-direct {p1, p0}, Lcn/nubia/gallery3d/app/Gallery$1;-><init>(Lcn/nubia/gallery3d/app/Gallery;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/app/Gallery;->mHandler:Landroid/os/Handler;

    .line 153
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getPermissionDialog()Z

    move-result p1

    if-nez p1, :cond_3

    .line 154
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/Gallery;->resumeCloudInformation()V

    .line 155
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 156
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->setUpBatteryListener()Lcn/nubia/improve/category/BatteryListener;

    .line 159
    :cond_3
    invoke-virtual {p0, p0}, Lcn/nubia/gallery3d/app/Gallery;->setPermissionListener(Lcn/nubia/gallery3d/app/AbstractGalleryActivity$PermissionListener;)V

    .line 161
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/Gallery;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    const-string v0, "Gallery"

    if-eqz p1, :cond_4

    .line 163
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 164
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "versionName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", versionCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_4
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Share"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/nubia/improve/share/NubiaShareUtils;->DeleteFile(Ljava/io/File;)Z

    move-result p1

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete cache result :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 440
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 441
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/app/StateManager;->createOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 511
    invoke-super {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onDestroy()V

    .line 515
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/GalleryAppImpl;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->stopCategoryService(Landroid/content/Context;)V

    .line 516
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppImpl;->getCategoryServiceIsRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->releaseBatteryListener()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 3

    const/4 v0, 0x0

    .line 491
    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->setFrom_sms(Z)V

    .line 492
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "secure_camera"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 494
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->finish()V

    .line 498
    :cond_0
    invoke-super {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onPause()V

    .line 499
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 500
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 446
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 447
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 448
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "//mms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".mms."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->setFrom_sms(Z)V

    goto :goto_1

    .line 449
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "From sms!!!:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Gallery"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->setFrom_sms(Z)V

    goto :goto_1

    .line 455
    :cond_2
    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->setFrom_sms(Z)V

    .line 457
    :goto_1
    invoke-super {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onResume()V

    .line 459
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Gallery;->mAppBar:Lcn/nubia/gallery3d/app/GalleryAppBar;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/GalleryAppBar;->setToolBarLayoutParam()V

    .line 460
    invoke-static {p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLandOritentation270(Landroid/app/Activity;)Z

    .line 461
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/Gallery;->mIsSupportCTADialog:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/Gallery;->mIsShowCTADialog:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/Gallery;->mIsSupportCTADialog:Z

    if-nez v0, :cond_5

    :cond_4
    invoke-static {p0}, Lcn/nubia/gallery3d/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 462
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/Gallery;->mShouldInitializeByIntent:Z

    goto :goto_3

    .line 464
    :cond_5
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/Gallery;->mShouldInitializeByIntent:Z

    if-eqz v0, :cond_7

    .line 465
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.nubia.intent.action.MARK"

    if-ne v0, v3, :cond_6

    .line 466
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/Gallery;->startFromLauncherIcon()V

    goto :goto_2

    .line 468
    :cond_6
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/Gallery;->initializeByIntent()V

    .line 470
    :goto_2
    iput-boolean v2, p0, Lcn/nubia/gallery3d/app/Gallery;->mShouldInitializeByIntent:Z

    .line 478
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "secure_camera"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/app/Gallery;->setShowWhenLocked(Z)V

    .line 480
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/StateManager;->getStateCount()I

    move-result v0

    if-gtz v0, :cond_8

    return-void

    .line 482
    :cond_8
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/StateManager;->getStateCount()I

    move-result v0

    if-lez v0, :cond_9

    move v2, v1

    :cond_9
    invoke-static {v2}, Lcn/nubia/gallery3d/common/Utils;->assertTrue(Z)V

    .line 483
    iget-object v0, p0, Lcn/nubia/gallery3d/app/Gallery;->mVersionCheckDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_a

    .line 484
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 486
    :cond_a
    iput-boolean v1, p0, Lcn/nubia/gallery3d/app/Gallery;->mNeedRequestPermission:Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 607
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 608
    iget-boolean v0, p0, Lcn/nubia/gallery3d/app/Gallery;->mShouldInitializeByIntent:Z

    const-string v1, "initialize_by_intent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 506
    invoke-super {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onStop()V

    return-void
.end method

.method public startActivityAsUser(Landroid/content/Intent;I)V
    .locals 7

    :try_start_0
    const-string v0, "android.os.UserHandle"

    .line 633
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 634
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    .line 635
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "android.app.Activity"

    .line 636
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "startActivityAsUser"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Class;

    .line 637
    const-class v6, Landroid/content/Intent;

    aput-object v6, v5, v4

    const-class v6, Landroid/os/UserHandle;

    aput-object v6, v5, v1

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v1

    .line 639
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 641
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public startDefaultPage()V
    .locals 3

    .line 239
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_game_highlights"

    .line 240
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "cn.nubia.gamehighlights"

    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    .line 242
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/app/Gallery;->setRequestedOrientation(I)V

    .line 245
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 247
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "media-path"

    .line 246
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v2, "is-tab"

    .line 248
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 249
    invoke-virtual {p0}, Lcn/nubia/gallery3d/app/Gallery;->getStateManager()Lcn/nubia/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcn/nubia/gallery3d/app/AlbumSetPage;

    invoke-virtual {v0, v2, v1}, Lcn/nubia/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method
