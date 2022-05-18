.class public Lcn/nubia/gallery3d/util/GalleryUtils;
.super Ljava/lang/Object;
.source "GalleryUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/util/GalleryUtils$AddData;,
        Lcn/nubia/gallery3d/util/GalleryUtils$ScanCompletedListener;
    }
.end annotation


# static fields
.field public static final ACTION_COLLAGE:Ljava/lang/String; = "cn.nubia.collage"

.field public static final ADDINDEX_DATA:I = 0x0

.field public static final ADDINDEX_DATETAKEN:I = 0x5

.field public static final ADDINDEX_DURATION:I = 0x6

.field public static final ADDINDEX_FILESIZE:I = 0x1

.field public static final ADDINDEX_ID:I = 0x3

.field public static final ADDINDEX_LATITUDE:I = 0x6

.field public static final ADDINDEX_LONGITUDE:I = 0x7

.field public static final ADDINDEX_MIME_TYPE:I = 0x2

.field public static final ADDINDEX_ORIENTATION:I = 0x4

.field public static final ANDROID_SDK_N:I = 0x19

.field public static final BULK_OPERATION_COUNT:I = 0x32

.field private static final CAMERA_LAUNCHER_NAME:Ljava/lang/String; = "com.android.camera.CameraLauncher"

.field private static final CAMERA_PACKAGE_NAME:Ljava/lang/String; = "com.android.camera"

.field public static final CREATE_NEW_FOLDER_FILENAME_INPUT_MAX_LENGTH:I = 0x32

.field public static final DATATYPE_BUCKET_ID:I = 0x2

.field public static final DATATYPE_DATETAKEN:I = 0x4

.field public static final DATATYPE_DURATION:I = 0x9

.field public static final DATATYPE_FILE_PATH:I = 0x1

.field public static final DATATYPE_FILE_SIZE:I = 0x5

.field public static final DATATYPE_ID:I = 0x0

.field public static final DATATYPE_LATITUDE:I = 0x7

.field public static final DATATYPE_LONGITUDE:I = 0x8

.field public static final DATATYPE_MIME_TYPE:I = 0x6

.field public static final DATATYPE_ROTATION:I = 0x3

.field public static final DATA_KEY_COLLAGE:Ljava/lang/String; = "imagepathlist"

.field private static final DIR_TYPE_IMAGE:Ljava/lang/String; = "vnd.android.cursor.dir/image"

.field private static final DIR_TYPE_VIDEO:Ljava/lang/String; = "vnd.android.cursor.dir/video"

.field private static final EARTH_RADIUS_METERS:D = 6367000.0

.field private static final EXIF_TAG_USER_COMMENT:Ljava/lang/String; = "UserComment"

.field public static IMAGE:I = 0x1

.field public static INIT_DURATION:I = 0x7530

.field public static final INTENT_APERTURE:Ljava/lang/String; = "cn.nubia.aperture"

.field private static final MIME_TYPE_ALL:Ljava/lang/String; = "*/*"

.field private static final MIME_TYPE_IMAGE:Ljava/lang/String; = "image/*"

.field public static final MIME_TYPE_IMAGE_PROCESSING:Ljava/lang/String; = "image/*"

.field private static final MIME_TYPE_VIDEO:Ljava/lang/String; = "video/*"

.field public static final ORDER_BY_ASC:Ljava/lang/String; = "datetaken ASC, _id ASC"

.field public static final ORDER_BY_DATE_MODIFIED_ASC:Ljava/lang/String; = "date_modified ASC, _id ASC"

.field public static final ORDER_BY_DATE_MODIFIED_DESC:Ljava/lang/String; = "date_modified DESC, _id DESC"

.field public static final ORDER_BY_DESC:Ljava/lang/String; = "datetaken DESC, _id DESC"

.field public static final PHOTOEDITOR_PACKAGE_NAME:Ljava/lang/String; = "cn.nubia.photoeditor"

.field public static final PLAY_MUSIC_NAME_SHOW_MAX_LENGTH:I = 0x12

.field public static PRIVACY_ACTION:Ljava/lang/String; = "cn.nubia.privacyspace.intent.action.ADD_PRIVACY_GALLERY"

.field public static PRIVACY_ACTION_IMAGE:Ljava/lang/String; = "com.zte.heartyservice.intent.action.ADD_PRIVACY_IMAGE"

.field public static PRIVACY_ACTION_VEDIO:Ljava/lang/String; = "com.zte.heartyservice.intent.action.ADD_PRIVACY_VIDEO"

.field public static PRIVACY_SETTING_ACTION:Ljava/lang/String; = "android.settings.SECURITY_SETTINGS"

.field public static final PROCESSING:Ljava/lang/String; = "wait"

.field private static final PROVIDER_FILE:Ljava/lang/String; = ".fileprovider"

.field private static final RAD_PER_DEG:D = 0.017453292519943295

.field public static final RECYCLEINDEX_BUCKET_ID:I = 0x7

.field public static final RECYCLEINDEX_DATA:I = 0x0

.field public static final RECYCLEINDEX_DATETAKEN:I = 0x4

.field public static final RECYCLEINDEX_DURATION:I = 0x8

.field public static final RECYCLEINDEX_FILESIZE:I = 0x5

.field public static final RECYCLEINDEX_ID:I = 0x3

.field public static final RECYCLEINDEX_MEDIA_TYPE:I = 0x2

.field public static final RECYCLEINDEX_MIME_TYPE:I = 0x6

.field public static final RECYCLEINDEX_ORIENTATION:I = 0x1

.field private static final SETTING_DATABASE_KEY:Ljava/lang/String; = "photo_sharing_privacy_protection"

.field public static final SHARE_LIMIT:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "GalleryUtils"

.field public static final TIME_OUT:I = 0x1388

.field public static UNKNOWN:I = 0x0

.field public static VEDIO:I = 0x2

.field public static from_sms:Z = false

.field private static lastClickTime:J = 0x0L

.field private static mNubiaUiStatus:I = -0x1

.field public static mRotationSurface:I = -0x1

.field private static mVirtualBarHeight:I = 0x0

.field private static oldMsg:Ljava/lang/String; = null

.field private static oldmsgId:I = 0x0

.field private static sCameraAvailable:Z = false

.field private static sCameraAvailableInitialized:Z = false

.field private static volatile sCurrentThread:Ljava/lang/Thread; = null

.field private static sPixelDensity:F = -1.0f

.field private static sPrivateAvailable:Z = false

.field private static sPrivateAvailableInitialized:Z = false

.field private static volatile sWarned:Z

.field private static time:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FileType(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x80

    if-eq p0, v0, :cond_1

    .line 2357
    sget p0, Lcn/nubia/gallery3d/util/GalleryUtils;->UNKNOWN:I

    return p0

    .line 2355
    :cond_0
    sget p0, Lcn/nubia/gallery3d/util/GalleryUtils;->VEDIO:I

    return p0

    .line 2353
    :cond_1
    sget p0, Lcn/nubia/gallery3d/util/GalleryUtils;->IMAGE:I

    return p0
.end method

.method public static IsFromSMS()Z
    .locals 1

    .line 2444
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->isFrom_sms()Z

    move-result v0

    return v0
.end method

.method public static IsNeedCutVideo(Ljava/lang/String;)Z
    .locals 1

    .line 2409
    invoke-static {p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getVideoDurationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getVideoDurationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sget v0, Lcn/nubia/gallery3d/util/GalleryUtils;->INIT_DURATION:I

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static JumpToSystemPrivacySetting(Landroid/content/Context;)V
    .locals 2

    .line 2420
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcn/nubia/gallery3d/util/GalleryUtils;->PRIVACY_SETTING_ACTION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2421
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static SupportDynamicWallPaper()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static UpdateProcessExif(Ljava/lang/String;)V
    .locals 4

    const-string v0, "GalleryUtils"

    .line 2219
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v2, "UserComment"

    const/4 v3, 0x0

    .line 2220
    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2225
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException UpdateProcessExif Error!!!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2223
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RuntimeException UpdateProcessExif Error!!!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static accurateDistanceMeters(DDDD)D
    .locals 4

    sub-double v0, p4, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    .line 647
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    sub-double/2addr p6, p2

    mul-double/2addr p6, v2

    .line 648
    invoke-static {p6, p7}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double/2addr v0, v0

    mul-double/2addr p2, p2

    .line 649
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr p2, p0

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr p2, p0

    add-double/2addr v0, p2

    .line 650
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p2, v0

    const-wide/16 p4, 0x0

    invoke-static {p4, p5, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    const-wide/high16 p2, 0x4000000000000000L    # 2.0

    mul-double/2addr p0, p2

    const-wide p2, 0x415849c600000000L    # 6367000.0

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method public static activityCloseAnim(Landroid/content/Context;)V
    .locals 2

    .line 2158
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2159
    check-cast p0, Landroid/app/Activity;

    const v0, 0x7f01001a

    const v1, 0x7f01001b

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public static activityOpenAnim(Landroid/content/Context;)V
    .locals 2

    .line 2152
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2153
    check-cast p0, Landroid/app/Activity;

    const v0, 0x7f01001c

    const v1, 0x7f01001d

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public static appendMediaTypeSelection(Ljava/lang/StringBuilder;I)V
    .locals 5

    const-string v0, "("

    .line 1853
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    const-string v1, "="

    const-string v2, "media_type"

    const/4 v3, 0x2

    if-ne v3, p1, :cond_0

    .line 1855
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1856
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    const/4 v4, 0x3

    if-ne v3, p1, :cond_1

    .line 1858
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1859
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1861
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1862
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " OR "

    .line 1863
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1864
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1865
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    const-string p1, ")"

    .line 1867
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static assertNotInRenderThread()V
    .locals 2

    .line 612
    sget-boolean v0, Lcn/nubia/gallery3d/util/GalleryUtils;->sWarned:Z

    if-nez v0, :cond_0

    .line 613
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcn/nubia/gallery3d/util/GalleryUtils;->sCurrentThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 614
    sput-boolean v0, Lcn/nubia/gallery3d/util/GalleryUtils;->sWarned:Z

    .line 615
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Should not do this in render thread"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v1, "GalleryUtils"

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static bulkInsert(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/app/GalleryApp;",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/RecycledData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1711
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1713
    new-array v0, v0, [Ljava/lang/String;

    .line 1714
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1715
    invoke-static {p0, v0, p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->bulkInsert(Lcn/nubia/gallery3d/app/GalleryApp;[Ljava/lang/String;Ljava/util/List;)V

    .line 1716
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1717
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public static bulkInsert(Lcn/nubia/gallery3d/app/GalleryApp;[Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/app/GalleryApp;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/nubia/gallery3d/data/RecycledData;",
            ">;)V"
        }
    .end annotation

    .line 1563
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object p0

    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1564
    invoke-static {p1, p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getInsertContentValues([Ljava/lang/String;Ljava/util/List;)[Landroid/content/ContentValues;

    move-result-object p1

    .line 1563
    invoke-virtual {p0, v0, p1}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    return-void
.end method

.method public static bulkInsertNewFolder(Lcn/nubia/gallery3d/app/GalleryApp;[Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/app/GalleryApp;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/nubia/gallery3d/util/GalleryUtils$AddData;",
            ">;)V"
        }
    .end annotation

    .line 1582
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object p0

    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1583
    invoke-static {p1, p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getInsertContentValuesForNewFolder([Ljava/lang/String;Ljava/util/List;)[Landroid/content/ContentValues;

    move-result-object p1

    .line 1582
    invoke-virtual {p0, v0, p1}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    return-void
.end method

.method public static bulkUpdate(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/app/GalleryApp;",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/RecycledData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1723
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1725
    new-array v0, v0, [Ljava/lang/String;

    .line 1726
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1727
    invoke-static {p0, v0, p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->bulkUpdate(Lcn/nubia/gallery3d/app/GalleryApp;[Ljava/lang/String;Ljava/util/List;)V

    .line 1728
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1729
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public static bulkUpdate(Lcn/nubia/gallery3d/app/GalleryApp;[Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/app/GalleryApp;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/nubia/gallery3d/data/RecycledData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "_data"

    const-string v1, "GalleryUtils"

    .line 1568
    invoke-static {p1, p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getInsertContentValues([Ljava/lang/String;Ljava/util/List;)[Landroid/content/ContentValues;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {p1, p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getInsertContentValues([Ljava/lang/String;Ljava/util/List;)[Landroid/content/ContentValues;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    move v3, v2

    .line 1570
    :goto_0
    :try_start_0
    invoke-static {p1, p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getInsertContentValues([Ljava/lang/String;Ljava/util/List;)[Landroid/content/ContentValues;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 1571
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bulkUpdate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1, p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getInsertContentValues([Ljava/lang/String;Ljava/util/List;)[Landroid/content/ContentValues;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v4

    const-string v5, "external"

    invoke-static {v5}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {p1, p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getInsertContentValues([Ljava/lang/String;Ljava/util/List;)[Landroid/content/ContentValues;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v7, "_data=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    invoke-static {p1, p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getInsertContentValues([Ljava/lang/String;Ljava/util/List;)[Landroid/content/ContentValues;

    move-result-object v9

    aget-object v9, v9, v3

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1575
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1576
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static checkMultiShootDir(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, -0x2

    .line 1686
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getCameraAlbumPathsByIndex(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1687
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1688
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1689
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_1
    const/16 v0, 0xd

    .line 1694
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getCameraAlbumPathsByIndex(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1695
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1696
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1697
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static containsEmoji(Ljava/lang/String;)Z
    .locals 4

    .line 888
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 890
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 891
    invoke-static {v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->isEmojiCharacter(C)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1477
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1478
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1484
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1485
    :try_start_1
    new-instance p0, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const p1, 0x19000

    :try_start_2
    new-array p1, p1, [B

    .line 1489
    :goto_0
    invoke-virtual {v3, p1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 1490
    invoke-virtual {p0, p1, v0, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 1491
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1498
    :cond_1
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 1501
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->close()V

    return v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object p0, v2

    :goto_1
    move-object v2, v3

    goto :goto_4

    :catch_1
    move-exception p1

    move-object p0, v2

    :goto_2
    move-object v2, v3

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object p0, v2

    goto :goto_4

    :catch_2
    move-exception p1

    move-object p0, v2

    .line 1495
    :goto_3
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v2, :cond_2

    .line 1498
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    :cond_2
    if-eqz p0, :cond_3

    .line 1501
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->close()V

    :cond_3
    return v0

    :catchall_3
    move-exception p1

    :goto_4
    if-eqz v2, :cond_4

    .line 1498
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    :cond_4
    if-eqz p0, :cond_5

    .line 1501
    invoke-virtual {p0}, Ljava/io/BufferedOutputStream;->close()V

    .line 1503
    :cond_5
    throw p1
.end method

.method public static createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1423
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 1424
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1425
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 1428
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 1429
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1430
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 1431
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1433
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static deletImagesFromCategoryDB(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "_id in (%s)"

    .line 1758
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1759
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 1760
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p0

    const/4 v0, 0x4

    .line 1761
    invoke-virtual {p0, v0, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->deleteItem(ILjava/lang/String;)Z

    const/4 v0, 0x2

    .line 1762
    invoke-virtual {p0, v0, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->deleteItem(ILjava/lang/String;)Z

    const/4 v0, 0x3

    .line 1763
    invoke-virtual {p0, v0, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->deleteItem(ILjava/lang/String;)Z

    return-void
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1050
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1052
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v0

    .line 1053
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 1054
    new-instance v4, Ljava/io/File;

    aget-object v5, v1, v3

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lcn/nubia/gallery3d/util/GalleryUtils;->deleteFile(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 1059
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 1063
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method private static deleteImagesFromDB(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)V
    .locals 3

    .line 1749
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    const-string v0, "external"

    .line 1750
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1751
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "deletedata"

    const-string v2, "false"

    .line 1752
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "_id in (%s)"

    .line 1753
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1754
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object p0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 2

    .line 771
    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "*/*"

    .line 773
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "image/*"

    .line 775
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "vnd.android.cursor.dir/image"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "video/*"

    .line 777
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "vnd.android.cursor.dir/video"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :cond_4
    :goto_1
    const/4 p0, 0x0

    const-string v0, "android.intent.extra.LOCAL_ONLY"

    .line 783
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_5

    or-int/lit8 v1, v1, 0x4

    :cond_5
    return v1
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 919
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static dpToPixel(F)F
    .locals 1

    .line 575
    sget v0, Lcn/nubia/gallery3d/util/GalleryUtils;->sPixelDensity:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public static dpToPixel(I)I
    .locals 0

    int-to-float p0, p0

    .line 579
    invoke-static {p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->dpToPixel(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static drawText2Bitmap(Ljava/lang/String;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5

    .line 2301
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 2302
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 2303
    invoke-static {p2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2306
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2307
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2308
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v1, 0xff

    .line 2309
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    int-to-float v1, v1

    .line 2310
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2313
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    .line 2314
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, p0, v3, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 2315
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x6

    .line 2316
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x5

    int-to-float v1, v3

    mul-float/2addr v1, v0

    int-to-float v3, v4

    mul-float/2addr v3, v0

    .line 2317
    invoke-virtual {p2, p0, v1, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 2321
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static fakeBusy(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;I)V
    .locals 3

    .line 660
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 661
    new-instance v1, Lcn/nubia/gallery3d/util/GalleryUtils$1;

    invoke-direct {v1, v0}, Lcn/nubia/gallery3d/util/GalleryUtils$1;-><init>(Landroid/os/ConditionVariable;)V

    invoke-interface {p0, v1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;)V

    int-to-long v1, p1

    .line 666
    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    const/4 p1, 0x0

    .line 667
    invoke-interface {p0, p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;)V

    return-void
.end method

.method public static fastDistanceMeters(DDDD)D
    .locals 8

    sub-double v0, p0, p4

    .line 625
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f91df46a2529d39L    # 0.017453292519943295

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_1

    sub-double v2, p2, p6

    .line 626
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v4, v6, v4

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    add-double/2addr p0, p4

    const-wide/high16 p2, 0x4000000000000000L    # 2.0

    div-double/2addr p0, p2

    .line 637
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr p0, p0

    mul-double/2addr v0, v0

    mul-double/2addr p0, v2

    mul-double/2addr p0, v2

    add-double/2addr v0, p0

    .line 640
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    const-wide p2, 0x415849c600000000L    # 6367000.0

    mul-double/2addr p0, p2

    return-wide p0

    .line 627
    :cond_1
    :goto_0
    invoke-static/range {p0 .. p7}, Lcn/nubia/gallery3d/util/GalleryUtils;->accurateDistanceMeters(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static file2Content(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    .locals 7

    .line 1808
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1809
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1811
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1812
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1813
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "("

    .line 1814
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1815
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1816
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 1817
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1816
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v1, 0x0

    .line 1820
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1821
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1822
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1820
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    goto :goto_1

    .line 1827
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://media/external/images/media/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object p0, v0

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 1833
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object p0
.end method

.method public static flush(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)V
    .locals 1

    .line 1734
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1736
    invoke-static {p0, p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->deleteImagesFromDB(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)V

    .line 1737
    invoke-static {p0, p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->deletImagesFromCategoryDB(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static flushCut(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)V
    .locals 1

    .line 1742
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1744
    invoke-static {p0, p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->deletImagesFromCategoryDB(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static formatDuration(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6

    .line 757
    div-int/lit16 v0, p1, 0xe10

    mul-int/lit16 v1, v0, 0xe10

    sub-int v2, p1, v1

    .line 758
    div-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v3, v2, 0x3c

    add-int/2addr v1, v3

    sub-int/2addr p1, v1

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f100087

    .line 762
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const v5, 0x7f100086

    .line 764
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    invoke-static {p0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 4

    .line 2164
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v0, 0x400

    .line 2165
    div-long/2addr p1, v0

    .line 2168
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#.##"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 2171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KB"

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    long-to-double p1, p1

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    div-double/2addr p1, v0

    double-to-float p1, p1

    float-to-double p1, p1

    .line 2175
    invoke-virtual {v2, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MB"

    goto :goto_0

    :cond_1
    long-to-double p1, p1

    const-wide/high16 v0, 0x4130000000000000L    # 1048576.0

    div-double/2addr p1, v0

    double-to-float p1, p1

    float-to-double p1, p1

    .line 2179
    invoke-virtual {v2, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GB"

    .line 2182
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2183
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatLatitudeLongitude(Ljava/lang/String;DD)Ljava/lang/String;
    .locals 2

    .line 735
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAbslotePath(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 352
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-lt p2, v2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_9

    .line 354
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 355
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result p2

    const-string v3, ":"

    if-eqz p2, :cond_3

    .line 356
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 357
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 358
    aget-object p2, p0, v0

    .line 359
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "content://com.android.externalstorage.documents/document/primary"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const-string v0, "/"

    if-nez p2, :cond_1

    .line 360
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget-object p0, p0, v1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 361
    :cond_1
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getOtgStoragePath()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 362
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 364
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getOtgStoragePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget-object p0, p0, v1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 365
    :cond_3
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 366
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 369
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "content://downloads/public_downloads"

    .line 376
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 377
    invoke-static {p0, p1, v2, v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 372
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2

    .line 380
    :cond_4
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isMediaDocument(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 381
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 382
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 383
    aget-object p2, p1, v0

    const-string v3, "image"

    .line 385
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 386
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :cond_5
    const-string v3, "video"

    .line 387
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 388
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :cond_6
    const-string v3, "audio"

    .line 389
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 390
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :cond_7
    :goto_1
    new-array p2, v1, [Ljava/lang/String;

    .line 393
    aget-object p1, p1, v1

    aput-object p1, p2, v0

    const-string p1, "_id=?"

    .line 394
    invoke-static {p0, v2, p1, p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    return-object v2

    .line 396
    :cond_9
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isFileProvider(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 397
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 400
    :cond_a
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    const-string v0, "content"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 401
    invoke-static {p0, p1, v2, v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 404
    :cond_b
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string p2, "file"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 405
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 406
    :cond_c
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isStreaming(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 407
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 409
    :cond_d
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAlbumCollectionSet(Lcn/nubia/gallery3d/app/GalleryApp;ILjava/lang/String;)Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;
    .locals 8

    const-string v0, "external"

    .line 1298
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Collection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p0}, Lcn/nubia/gallery3d/data/CollectAlbumSet;->getAlbumSetCollection(ILcn/nubia/gallery3d/app/GalleryApp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "GalleryUtils"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v1

    .line 1302
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjection()[Ljava/lang/String;

    move-result-object v3

    .line 1303
    invoke-static {p1, p0}, Lcn/nubia/gallery3d/data/CollectAlbumSet;->getAlbumSetCollection(ILcn/nubia/gallery3d/app/GalleryApp;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "bucket_display_name ASC"

    .line 1301
    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 1312
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_2

    .line 1314
    new-instance v2, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    sget v3, Lcn/nubia/gallery3d/util/MediaSetUtils;->COLLECTION:I

    invoke-direct {v2, v3, p2}, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;-><init>(ILjava/lang/String;)V

    move-object v0, v2

    :cond_2
    const/16 v2, 0xa

    .line 1317
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v3, 0x8

    .line 1318
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    if-eq v1, v2, :cond_1

    move v1, v2

    goto :goto_0

    .line 1332
    :cond_3
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_STARTRAIL_BUCKET_ID:I

    const-string v2, "StartTrail"

    invoke-static {p0, v1, v2}, Lcn/nubia/gallery3d/data/CollectAlbumSet;->getStarRailConverMediaItem(Lcn/nubia/gallery3d/app/GalleryApp;ILjava/lang/String;)Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 1334
    iget p0, p0, Lcn/nubia/gallery3d/data/CollectAlbumSet$AlbumEntry;->count:I

    if-lez p0, :cond_4

    if-nez v0, :cond_4

    .line 1336
    new-instance p0, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->COLLECTION:I

    invoke-direct {p0, v1, p2}, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    .line 1345
    :cond_4
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 1342
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CollectAlbumSet error!"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-object v0

    .line 1345
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1346
    throw p0
.end method

.method public static getAvailableCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    .line 1018
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 1019
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "/Android/data/"

    if-nez v0, :cond_1

    :try_start_1
    const-string v3, "mounted"

    .line 1020
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1022
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1023
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 1025
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 1029
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1030
    new-instance v0, Ljava/io/File;

    .line 1031
    invoke-static {p0}, Lcn/nubia/improve/ApiHelper;->getSecondaryStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1034
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1035
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1036
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    .line 1038
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBucketId(Ljava/lang/String;)I
    .locals 0

    .line 752
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 7

    .line 588
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 590
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-char v4, p0, v2

    add-int/lit8 v5, v3, 0x1

    and-int/lit16 v6, v4, 0xff

    int-to-byte v6, v6

    .line 591
    aput-byte v6, v0, v3

    add-int/lit8 v3, v5, 0x1

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    .line 592
    aput-byte v4, v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getCloneUserId(Landroid/content/Context;)I
    .locals 6

    :try_start_0
    const-string v0, "com.cmx.cmplus.sdk.CloneHelper"

    .line 1998
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 1999
    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 2000
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 2001
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getCloneUserId"

    new-array v2, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    .line 2003
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2006
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 p0, 0xa

    return p0
.end method

.method private static getCloneUserStorage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1989
    invoke-static {p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCloneUserId(Landroid/content/Context;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1993
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/storage/emulated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentOder()Ljava/lang/String;
    .locals 1

    .line 1979
    invoke-static {}, Lcn/nubia/improve/ImproveConfig;->isSupportSortByASC()Z

    move-result v0

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getDBOrderClause(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentOderByDateModify()Ljava/lang/String;
    .locals 1

    .line 1983
    invoke-static {}, Lcn/nubia/improve/ImproveConfig;->isSupportSortByASC()Z

    move-result v0

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getDBOrderClauseByDateModify(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentSDKVersion()I
    .locals 1

    .line 2137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getDBOrderClause(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "datetaken ASC, _id ASC"

    goto :goto_0

    :cond_0
    const-string p0, "datetaken DESC, _id DESC"

    :goto_0
    return-object p0
.end method

.method public static getDBOrderClauseByDateModify(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "date_modified ASC, _id ASC"

    goto :goto_0

    :cond_0
    const-string p0, "date_modified DESC, _id DESC"

    :goto_0
    return-object p0
.end method

.method public static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "_data"

    .line 302
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    .line 305
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 306
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 307
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 308
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_0

    .line 314
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_2

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object p0, v7

    :goto_1
    :try_start_2
    const-string p2, "GalleryUtils"

    .line 311
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    return-object v7

    :catchall_1
    move-exception p1

    move-object v7, p0

    :goto_3
    if-eqz v7, :cond_3

    .line 314
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 315
    :cond_3
    throw p1
.end method

.method public static getDisplayWidthPixels(Landroid/app/Activity;)Landroid/util/DisplayMetrics;
    .locals 1

    .line 930
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 931
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object v0
.end method

.method public static getExifOrientation(Landroid/media/ExifInterface;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const-string v1, "Orientation"

    const/4 v2, -0x1

    .line 1589
    invoke-virtual {p0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v2, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10e

    goto :goto_0

    :cond_1
    const/16 v0, 0x5a

    goto :goto_0

    :cond_2
    const/16 v0, 0xb4

    :cond_3
    :goto_0
    return v0
.end method

.method public static getExifOrientation(Ljava/io/InputStream;)I
    .locals 0

    .line 1623
    invoke-static {p0}, Lcn/nubia/improve/ApiHelper;->newExifFormInputStream(Ljava/io/InputStream;)Landroid/media/ExifInterface;

    move-result-object p0

    .line 1624
    invoke-static {p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getExifOrientation(Landroid/media/ExifInterface;)I

    move-result p0

    return p0
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .locals 2

    .line 1614
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1616
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to find file to read exif rotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GalleryUtils"

    invoke-static {v0, p0}, Lcn/nubia/gallery3d/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1618
    :goto_0
    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getExifOrientation(Landroid/media/ExifInterface;)I

    move-result p0

    return p0
.end method

.method public static getFaceHideAlbumSet(Lcn/nubia/gallery3d/app/GalleryApp;)Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;
    .locals 3

    .line 1369
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p0

    sget-object v0, Lcn/nubia/gallery3d/data/FacesHideAlbumSet;->QUERY_SQL:Ljava/lang/String;

    .line 1370
    invoke-virtual {p0, v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "GalleryUtils"

    const-string v1, "no face hide album"

    .line 1372
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1377
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1378
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->FACE_HIDE_ALBUM_SET_BUCKET_ID:I

    const-string v1, "facehide"

    .line 1380
    new-instance v2, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    invoke-direct {v2, v0, v1}, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;-><init>(ILjava/lang/String;)V

    .line 1381
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, v2, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 1384
    :cond_1
    invoke-static {p0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 1385
    throw v0
.end method

.method public static getFacesAlbumSet(Lcn/nubia/gallery3d/app/GalleryApp;)Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;
    .locals 3

    .line 1156
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    .line 1155
    invoke-static {p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p0

    const-string v0, "select merge_id,count(merge_id) from face where merge_id not in (select face_id from face_operation where face_id == face.merge_id and ignore = 1) and merge_id >= 0 and (remove is NULL or remove <> 1) group by merge_id having count(merge_id) >= 5"

    .line 1168
    invoke-virtual {p0, v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1171
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1173
    new-instance v0, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->FACE_ALBUM_SET_BUCKET_ID:I

    const-string v2, "face"

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1178
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1179
    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getFreeSize(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 806
    :cond_0
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 807
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p0

    int-to-long v3, p0

    .line 808
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, p0

    mul-long/2addr v3, v0

    return-wide v3

    :catch_0
    return-wide v0
.end method

.method public static getIdColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8

    const-string v0, "_id"

    .line 322
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    .line 325
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 326
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 327
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    .line 328
    invoke-interface {v7, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    .line 334
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    return p0

    :cond_1
    if-eqz v7, :cond_2

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "GalleryUtils"

    .line 331
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, -0x1

    return p0

    :goto_2
    if-eqz v7, :cond_3

    .line 334
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 335
    :cond_3
    throw p0
.end method

.method public static getImageRotation(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 2

    const-string v0, "orientation"

    .line 1631
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1634
    :try_start_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1636
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " missing orientation from db."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GalleryUtils"

    invoke-static {v0, p1}, Lcn/nubia/gallery3d/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move p1, v1

    :goto_0
    const/4 v0, 0x0

    if-ne p1, v1, :cond_2

    const-string p1, "mime_type"

    .line 1641
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v1, :cond_1

    .line 1643
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/gallery3d/common/BitmapUtils;->isRotationSupported(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    move p1, v0

    :cond_2
    return p1
.end method

.method private static getInsertContentValues([Ljava/lang/String;Ljava/util/List;)[Landroid/content/ContentValues;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/nubia/gallery3d/data/RecycledData;",
            ">;)[",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1525
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1528
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    const/4 v1, 0x0

    .line 1529
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1530
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1531
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/data/RecycledData;

    .line 1532
    aget-object v4, p0, v1

    const/16 v5, 0x2f

    .line 1533
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_data"

    .line 1534
    invoke-virtual {v2, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_display_name"

    .line 1535
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    iget-wide v4, v3, Lcn/nubia/gallery3d/data/RecycledData;->datetaken:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "datetaken"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1537
    iget-boolean v4, v3, Lcn/nubia/gallery3d/data/RecycledData;->isImage:Z

    if-eqz v4, :cond_1

    .line 1538
    iget v4, v3, Lcn/nubia/gallery3d/data/RecycledData;->rotation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "orientation"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1540
    :cond_1
    iget-object v4, v3, Lcn/nubia/gallery3d/data/RecycledData;->mimeType:Ljava/lang/String;

    const-string v5, "mime_type"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    iget v3, v3, Lcn/nubia/gallery3d/data/RecycledData;->duration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "duration"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1542
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getInsertContentValuesForNewFolder([Ljava/lang/String;Ljava/util/List;)[Landroid/content/ContentValues;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/nubia/gallery3d/util/GalleryUtils$AddData;",
            ">;)[",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1548
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1551
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    const/4 v1, 0x0

    .line 1552
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1553
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1554
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/util/GalleryUtils$AddData;

    .line 1555
    aget-object v4, p0, v1

    const-string v5, "_data"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    iget-wide v3, v3, Lcn/nubia/gallery3d/util/GalleryUtils$AddData;->fileSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "_size"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1557
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIspending(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 3

    const/4 v0, 0x0

    .line 2377
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "is_pending"

    .line 2378
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 2379
    invoke-virtual {p0, p1, v1, v2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2381
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2382
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2386
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v0
.end method

.method public static getLocationAlbumSet(Lcn/nubia/gallery3d/app/GalleryApp;)Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;
    .locals 8

    .line 1132
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    .line 1131
    invoke-static {p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object v0

    .line 1135
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "city_classification"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "!=\'\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 1136
    sget-object v2, Lcn/nubia/improve/database/PlaceTable;->PROJECTION_GROUPBY:[Ljava/lang/String;

    .line 1138
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "city_classification"

    const/4 v7, 0x0

    .line 1136
    invoke-virtual/range {v0 .. v7}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1140
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1143
    :try_start_0
    new-instance v0, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->LOCATION_ALBUM_SET_BUCKET_ID:I

    const-string v3, "location"

    invoke-direct {v0, v2, v3}, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;-><init>(ILjava/lang/String;)V

    .line 1145
    iput v1, v0, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1148
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1149
    throw v0

    .line 1148
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0
.end method

.method public static getMarkCover(Lcn/nubia/gallery3d/app/GalleryApp;I)Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;
    .locals 0

    .line 1123
    invoke-static {p0, p1}, Lcn/nubia/gallery3d/data/FavorHelper;->getMarkCover(Lcn/nubia/gallery3d/app/GalleryApp;I)Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    move-result-object p0

    return-object p0
.end method

.method public static getMediaItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2229
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 2232
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p0, 0x17

    .line 2233
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2238
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2235
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2238
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-object p0

    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 2239
    throw p0
.end method

.method public static getMediaSetDirPath(Lcn/nubia/gallery3d/data/MediaSet;)Ljava/lang/String;
    .locals 2

    .line 1402
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getCoverMediaItem()Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1404
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x2f

    .line 1405
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getMimeType(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x80

    if-eq p0, v0, :cond_1

    const-string p0, "*/*"

    return-object p0

    :cond_0
    const-string p0, "video/*"

    return-object p0

    :cond_1
    const-string p0, "image/*"

    return-object p0
.end method

.method public static getMultiShootConverMediaItem(Lcn/nubia/gallery3d/app/GalleryApp;ILjava/lang/String;)Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;
    .locals 6

    .line 1069
    sget-object v0, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->URI_FILES_EXTERNAL:Landroid/net/Uri;

    .line 1070
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    .line 1071
    invoke-static {p1, v2}, Lcn/nubia/gallery3d/data/MultiShootAlbum;->getGroupByMultiShootSelection(IZ)Ljava/lang/String;

    move-result-object v3

    .line 1072
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android:query-arg-sql-selection"

    .line 1073
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    :cond_0
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1076
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentOder()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android:query-arg-sql-sort-order"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v3, "android:query-arg-sql-group-by"

    const-string v4, "bucket_id"

    .line 1078
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getActivity()Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjectionByGroup()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v1, v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v5

    .line 1087
    :cond_2
    :try_start_0
    new-instance v1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    invoke-direct {v1, p1, p2}, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;-><init>(ILjava/lang/String;)V

    .line 1088
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    .line 1089
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    const/4 v3, 0x7

    .line 1090
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 1095
    sget-object p1, Lcn/nubia/gallery3d/data/LocalImage;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 1098
    sget-object v2, Lcn/nubia/gallery3d/data/LocalVideo;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v2, p2}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, p1

    move-object p1, p2

    goto :goto_0

    :cond_4
    move-object p1, v5

    :goto_0
    if-nez p1, :cond_5

    .line 1117
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v5

    .line 1106
    :cond_5
    :try_start_1
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object p2

    .line 1105
    invoke-static {p1, v0, p2, p0, v2}, Lcn/nubia/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcn/nubia/gallery3d/data/Path;Landroid/database/Cursor;Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/app/GalleryApp;Z)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p0

    .line 1107
    iput-object p0, v1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->cover:Lcn/nubia/gallery3d/data/MediaItem;

    .line 1112
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    iput p0, v1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v1

    .line 1117
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v5

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1118
    throw p0
.end method

.method public static getNotSystemAlbumSet(Lcn/nubia/gallery3d/app/GalleryApp;ILjava/lang/String;)Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;
    .locals 7

    const-string v0, "external"

    .line 1260
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1261
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v1

    .line 1262
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjection()[Ljava/lang/String;

    move-result-object v3

    .line 1263
    invoke-static {p1, p0}, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;->getNotSystemAlbumSetSelection(ILcn/nubia/gallery3d/app/GalleryApp;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "bucket_display_name ASC"

    .line 1261
    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 1272
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_2

    .line 1274
    new-instance p1, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->NOTSYSTEM_ALBUM_SET_BUCKET_ID:I

    invoke-direct {p1, v1, p2}, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;-><init>(ILjava/lang/String;)V

    :cond_2
    const/16 v1, 0xa

    .line 1276
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v2, 0x8

    .line 1277
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    .line 1292
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1293
    throw p1
.end method

.method public static getNubiaTrackFileType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "zip"

    const-string v1, "audio"

    const-string v2, "video"

    if-eqz p0, :cond_4

    const-string v3, "image"

    .line 2265
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "picture"

    goto :goto_0

    .line 2267
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 2269
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 2271
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "rar"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "vnd.android.package-archive"

    .line 2273
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string v0, "apk"

    goto :goto_0

    :cond_4
    const-string v0, "text"

    :cond_5
    :goto_0
    return-object v0
.end method

.method public static getOtgStoragePath()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.Environment"

    .line 268
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getOtgStorageDirectory"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 269
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    new-array v2, v3, [Ljava/lang/Object;

    .line 271
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    .line 275
    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    :try_start_1
    const-string v1, "OTG_STORAGE"

    .line 278
    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-object v0
.end method

.method public static getPhoneStorage()Ljava/lang/String;
    .locals 1

    .line 956
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    invoke-static {}, Lcn/nubia/improve/ApiHelper;->Environment_getSecondaryStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 959
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProcess(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2208
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v1, "UserComment"

    .line 2209
    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2212
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process failed to get exifInfo from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GalleryUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method public static getRecycledAlbumCover(Lcn/nubia/gallery3d/app/GalleryApp;)Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;
    .locals 0

    .line 1127
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/gallery3d/util/RecycleHelper;->createRecycledAlbumCover(Landroid/content/Context;)Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    move-result-object p0

    return-object p0
.end method

.method public static getRecycledDataProjection()[Ljava/lang/String;
    .locals 9

    const-string v0, "_data"

    const-string v1, "orientation"

    const-string v2, "media_type"

    const-string v3, "_id"

    const-string v4, "datetaken"

    const-string v5, "_size"

    const-string v6, "mime_type"

    const-string v7, "bucket_id"

    const-string v8, "duration"

    .line 1659
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 9

    .line 528
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 529
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 528
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 530
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 531
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 532
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 533
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 534
    new-instance v4, Landroid/graphics/RectF;

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 535
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v5, v6, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v5, 0x1

    .line 536
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 537
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const/high16 v5, -0x1000000

    .line 538
    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 539
    invoke-virtual {v1, v4, p1, p1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 540
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 542
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 543
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {p1, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 545
    invoke-virtual {v1, p0, p1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p0
.end method

.method public static getScreenHeight(Landroid/content/Context;)F
    .locals 1

    const-string v0, "window"

    .line 923
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public static getScreenPixels(Landroid/app/Activity;)[I
    .locals 3

    .line 936
    invoke-static {p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getDisplayWidthPixels(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 939
    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 940
    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method

.method public static getScreenWidth(Landroid/content/Context;)F
    .locals 1

    const-string v0, "window"

    .line 926
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public static getSdcardStorage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 967
    invoke-static {p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isSupportSDcardStorage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 969
    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 970
    invoke-static {p0}, Lcn/nubia/improve/ApiHelper;->getSecondaryStorageDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 972
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSelectedDataProjection()[Ljava/lang/String;
    .locals 7

    const-string v0, "_data"

    const-string v1, "_size"

    const-string v2, "mime_type"

    const-string v3, "_id"

    const-string v4, "orientation"

    const-string v5, "datetaken"

    const-string v6, "duration"

    .line 1673
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectionModePrompt(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    and-int/lit8 p0, p0, 0x1

    if-nez p0, :cond_0

    const p0, 0x7f1001ec

    goto :goto_0

    :cond_0
    const p0, 0x7f1001e9

    :goto_0
    return p0

    :cond_1
    const p0, 0x7f1001e8

    return p0
.end method

.method public static getShowFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    .line 979
    :cond_0
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getPhoneStorage()Ljava/lang/String;

    move-result-object v0

    .line 980
    invoke-static {p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCloneUserStorage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 981
    invoke-static {p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getSdcardStorage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 982
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 984
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f100121

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 983
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 985
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 987
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1001db

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 986
    invoke-virtual {p1, v2, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 988
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 990
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f100058

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 989
    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_0
    return-object p1
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 2031
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2033
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getSystemLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 460
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getThingsAlbumSet(Lcn/nubia/gallery3d/app/GalleryApp;)Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;
    .locals 8

    .line 1186
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    .line 1185
    invoke-static {p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object v0

    .line 1191
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1193
    invoke-static {}, Lcn/nubia/improve/ImproveConfig;->isSupportThingsGroup()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tag_name"

    goto :goto_0

    :cond_0
    const-string v1, "group_name"

    :goto_0
    move-object v5, v1

    .line 1196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ASC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v1, "tag_confidence"

    .line 1197
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcn/nubia/improve/database/ThingsTable;->CONFIDENCE_THRESHOLD:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and ("

    .line 1198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "remove"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is NULL or "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <> 1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    .line 1199
    sget-object v2, Lcn/nubia/improve/database/ThingsTable;->PROJECTION_GROUPBY:[Ljava/lang/String;

    .line 1200
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1199
    invoke-virtual/range {v0 .. v7}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1206
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1208
    new-instance v0, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->THINGS_ALBUM_SET_BUCKET_ID:I

    const-string v3, "thing"

    invoke-direct {v0, v2, v3}, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;-><init>(ILjava/lang/String;)V

    .line 1218
    iput v1, v0, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1221
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1222
    throw v0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getTitleTimeFormat(JLandroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 236
    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, p0, p1}, Ljava/sql/Date;-><init>(J)V

    .line 238
    invoke-static {p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getSystemLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 241
    invoke-static {p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->is24Hours(Landroid/content/Context;)Z

    move-result p1

    const-string v1, ""

    if-nez p1, :cond_0

    .line 242
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string p1, " hh"

    goto :goto_0

    :cond_0
    const-string p1, " HH"

    :goto_0
    const-string v2, "zh"

    .line 246
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ":mm"

    if-eqz v2, :cond_1

    .line 247
    new-instance p0, Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "M"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 248
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10016c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "dd"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 250
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v4, 0x7f10016a

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v2, "en"

    .line 252
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v2, "MMM dd"

    if-eqz p0, :cond_2

    .line 253
    new-instance p0, Ljava/text/SimpleDateFormat;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p0, p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_1

    .line 256
    :cond_2
    new-instance p0, Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 257
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 259
    :goto_1
    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVideoDurationInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2392
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 2395
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p0, 0x9

    .line 2396
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2401
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2398
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2401
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-object p0

    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 2402
    throw p0
.end method

.method public static getVirtualBarHeight(Landroid/content/Context;)I
    .locals 9

    .line 1933
    sget v0, Lcn/nubia/gallery3d/util/GalleryUtils;->mVirtualBarHeight:I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "window"

    .line 1936
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1937
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 1938
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1939
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    :try_start_0
    const-string v4, "android.view.Display"

    .line 1942
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getRealMetrics"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    .line 1944
    const-class v8, Landroid/util/DisplayMetrics;

    aput-object v8, v7, v1

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v3, v5, v1

    .line 1945
    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1946
    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v2, v4, :cond_0

    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    :cond_0
    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1948
    :goto_0
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 1949
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 1950
    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    if-le v3, v4, :cond_1

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1951
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1952
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    :goto_1
    if-eqz p0, :cond_2

    .line 1955
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1957
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1959
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int v1, v3, p0

    :cond_2
    sub-int/2addr v2, v0

    sub-int v1, v2, v1

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1966
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1968
    :goto_2
    sput v1, Lcn/nubia/gallery3d/util/GalleryUtils;->mVirtualBarHeight:I

    goto :goto_3

    .line 1970
    :cond_3
    invoke-static {p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNavigationBarVisable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    .line 1975
    :cond_4
    :goto_3
    sget p0, Lcn/nubia/gallery3d/util/GalleryUtils;->mVirtualBarHeight:I

    return p0
.end method

.method public static hasFaceHideAlbumSet(Lcn/nubia/gallery3d/app/GalleryApp;)Z
    .locals 2

    .line 1351
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p0

    sget-object v0, Lcn/nubia/gallery3d/data/FacesHideAlbumSet;->QUERY_SQL:Ljava/lang/String;

    .line 1352
    invoke-virtual {p0, v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "GalleryUtils"

    const-string v1, "no face hide album"

    .line 1354
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1358
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 1362
    :cond_1
    invoke-static {p0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 1363
    throw v0
.end method

.method public static hasSpaceForSize(J)Z
    .locals 7

    .line 815
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 816
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 820
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 822
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 823
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v5, v0

    mul-long/2addr v3, v5

    cmp-long p0, v3, p0

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    move-exception p0

    .line 825
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fail to access external storage:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GalleryUtils"

    invoke-static {p1, p0}, Lcn/nubia/gallery3d/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static hasVideo(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)Z
    .locals 7

    .line 996
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v0

    const-string p0, "external"

    .line 998
    invoke-static {p0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    const/4 v2, 0x0

    const-string v3, "bucket_id = ? AND media_type = 3"

    const/4 v5, 0x0

    .line 1000
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1005
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_2

    if-eqz p1, :cond_0

    .line 1011
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1013
    :cond_1
    throw p0

    :cond_2
    if-eqz p1, :cond_3

    .line 1011
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return v6
.end method

.method public static inValidFilename(Ljava/lang/String;)Z
    .locals 1

    .line 878
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    const-string v0, "//"

    .line 879
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\\"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\r"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\n"

    .line 880
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\""

    .line 881
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0x2f

    .line 882
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/16 v0, 0x7c

    .line 883
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->containsEmoji(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static inValidFilenameEx(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "^[ A-Za-z\\d\\u4E00-\\u9FA5\\_]+$"

    .line 906
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 909
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 910
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2

    .line 516
    sget v0, Lcn/nubia/gallery3d/util/GalleryUtils;->sPixelDensity:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 517
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 518
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 519
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 520
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcn/nubia/gallery3d/util/GalleryUtils;->sPixelDensity:F

    .line 521
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 522
    invoke-static {v0, p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->initializeThumbnailSizes(Landroid/util/DisplayMetrics;Landroid/content/res/Resources;)V

    :cond_0
    return-void
.end method

.method private static initializeThumbnailSizes(Landroid/util/DisplayMetrics;Landroid/content/res/Resources;)V
    .locals 1

    .line 553
    iget p1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 555
    div-int/lit8 p1, p0, 0x2

    div-int/lit8 v0, p0, 0x5

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/data/MediaItem;->setThumbnailSizes(II)V

    .line 556
    invoke-static {p0}, Lcn/nubia/gallery3d/data/MediaItem;->setBmpThumbnailSize(I)V

    return-void
.end method

.method public static is24Hours(Landroid/content/Context;)Z
    .locals 0

    .line 874
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isAPPInstall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1787
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    .line 1791
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object p0, p1

    :goto_0
    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isCameraAvailable(Landroid/content/Context;)Z
    .locals 3

    .line 671
    sget-boolean v0, Lcn/nubia/gallery3d/util/GalleryUtils;->sCameraAvailableInitialized:Z

    if-eqz v0, :cond_0

    .line 672
    sget-boolean p0, Lcn/nubia/gallery3d/util/GalleryUtils;->sCameraAvailable:Z

    return p0

    .line 673
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 674
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.camera.CameraLauncher"

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 675
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0

    const/4 v0, 0x1

    .line 676
    sput-boolean v0, Lcn/nubia/gallery3d/util/GalleryUtils;->sCameraAvailableInitialized:Z

    if-eqz p0, :cond_2

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 677
    :cond_2
    :goto_0
    sput-boolean v0, Lcn/nubia/gallery3d/util/GalleryUtils;->sCameraAvailable:Z

    return v0
.end method

.method public static isCollageSuppot(Landroid/content/Context;)Z
    .locals 2

    .line 1411
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1412
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.collage"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 1413
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 1412
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1414
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "GalleryUtils"

    const-string v0, "Collage app not found"

    .line 1417
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 447
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isEmojiCharacter(C)Z
    .locals 1

    if-eqz p0, :cond_3

    const/16 v0, 0x9

    if-eq p0, v0, :cond_3

    const/16 v0, 0xa

    if-eq p0, v0, :cond_3

    const/16 v0, 0xd

    if-eq p0, v0, :cond_3

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const v0, 0xd7ff

    if-le p0, v0, :cond_3

    :cond_0
    const v0, 0xe000

    if-lt p0, v0, :cond_1

    const v0, 0xfffd

    if-le p0, v0, :cond_3

    :cond_1
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_2

    const v0, 0x10ffff

    if-gt p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEnablePrivacyStatus(Landroid/content/Context;)Z
    .locals 2

    .line 2427
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "photo_sharing_privacy_protection"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 438
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isFastClick()Z
    .locals 6

    .line 2127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2128
    sget-wide v2, Lcn/nubia/gallery3d/util/GalleryUtils;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2131
    :goto_0
    sput-wide v0, Lcn/nubia/gallery3d/util/GalleryUtils;->lastClickTime:J

    return v2
.end method

.method public static isFileProvider(Landroid/net/Uri;)Z
    .locals 1

    .line 427
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".fileprovider"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isFileValid(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1872
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1873
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static isFringerFullBlackSet(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2052
    :cond_0
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "606"

    .line 2053
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 2060
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "fringe_full_black_set"

    invoke-static {p0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2063
    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move p0, v0

    :goto_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public static isFrom_sms()Z
    .locals 1

    .line 2436
    sget-boolean v0, Lcn/nubia/gallery3d/util/GalleryUtils;->from_sms:Z

    return v0
.end method

.method public static isInRecycledAlbum(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1255
    :cond_0
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object p0

    instance-of p0, p0, Lcn/nubia/gallery3d/data/RecycledAlbum;

    return p0
.end method

.method public static isInternationalPoject(Landroid/content/Context;)Z
    .locals 7

    const-string v0, ""

    const/4 v1, 0x0

    .line 2073
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v2, "android.os.SystemProperties"

    .line 2075
    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v2, "get"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 2076
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {p0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "sys.nubia_internal_version_flag"

    aput-object v5, v4, v1

    const-string v5, "default"

    aput-object v5, v4, v6

    .line 2077
    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "1"

    .line 2078
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v6

    .line 2081
    :cond_0
    sget v4, Lcn/nubia/gallery3d/util/GalleryUtils;->mNubiaUiStatus:I

    if-gez v4, :cond_2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ro.build.rom.id"

    aput-object v4, v3, v1

    aput-object v0, v3, v6

    .line 2082
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2083
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2084
    sput v1, Lcn/nubia/gallery3d/util/GalleryUtils;->mNubiaUiStatus:I

    goto :goto_0

    .line 2086
    :cond_1
    sput v6, Lcn/nubia/gallery3d/util/GalleryUtils;->mNubiaUiStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2093
    :cond_2
    :goto_0
    sget p0, Lcn/nubia/gallery3d/util/GalleryUtils;->mNubiaUiStatus:I

    if-ne p0, v6, :cond_3

    goto :goto_1

    :cond_3
    move v1, v6

    :goto_1
    return v1

    :catch_0
    move-exception p0

    .line 2090
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public static isLandOritentation(Landroid/content/Context;)Z
    .locals 1

    .line 473
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLandOritentation270(Landroid/app/Activity;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    .line 499
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 500
    sput v1, Lcn/nubia/gallery3d/util/GalleryUtils;->mRotationSurface:I

    move v0, v1

    goto :goto_0

    .line 502
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    if-ne p0, v1, :cond_1

    .line 503
    sput v0, Lcn/nubia/gallery3d/util/GalleryUtils;->mRotationSurface:I

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    .line 505
    sput p0, Lcn/nubia/gallery3d/util/GalleryUtils;->mRotationSurface:I

    :goto_0
    return v0

    .line 510
    :cond_2
    sget p0, Lcn/nubia/gallery3d/util/GalleryUtils;->mRotationSurface:I

    if-ne p0, v1, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public static isLandOritentation90(Landroid/app/Activity;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    .line 482
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 483
    sput v1, Lcn/nubia/gallery3d/util/GalleryUtils;->mRotationSurface:I

    goto :goto_0

    .line 484
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    if-ne p0, v1, :cond_1

    .line 485
    sput v0, Lcn/nubia/gallery3d/util/GalleryUtils;->mRotationSurface:I

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    .line 488
    sput p0, Lcn/nubia/gallery3d/util/GalleryUtils;->mRotationSurface:I

    :goto_0
    return v0

    .line 492
    :cond_2
    sget p0, Lcn/nubia/gallery3d/util/GalleryUtils;->mRotationSurface:I

    if-nez p0, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public static isLayoutRTLNubia()Z
    .locals 2

    .line 2328
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isMediaDocument(Landroid/net/Uri;)Z
    .locals 1

    .line 456
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isNavigationBarVisable(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "cc_navi_status"

    .line 1897
    invoke-static {p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNubiaUI(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 1919
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 1920
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v3, -0x1

    invoke-static {p0, v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    return v2

    :catch_0
    move-exception p0

    .line 1923
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return v1
.end method

.method public static isNight(Landroid/content/Context;)Z
    .locals 1

    .line 2121
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 2122
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNubiaUI(Landroid/content/Context;)Z
    .locals 7

    const-string v0, ""

    .line 2098
    sget v1, Lcn/nubia/gallery3d/util/GalleryUtils;->mNubiaUiStatus:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_1

    .line 2101
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v1, "android.os.SystemProperties"

    .line 2103
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v1, "get"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    .line 2104
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {p0, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ro.build.rom.id"

    aput-object v5, v4, v2

    aput-object v0, v4, v3

    .line 2105
    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2106
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2107
    sput v2, Lcn/nubia/gallery3d/util/GalleryUtils;->mNubiaUiStatus:I

    goto :goto_0

    .line 2109
    :cond_0
    sput v3, Lcn/nubia/gallery3d/util/GalleryUtils;->mNubiaUiStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2112
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v2

    .line 2116
    :cond_1
    :goto_0
    sget p0, Lcn/nubia/gallery3d/util/GalleryUtils;->mNubiaUiStatus:I

    if-ne p0, v3, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public static isPano(Lcn/nubia/gallery3d/data/MediaItem;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 856
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 858
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DCIM/Camera/Panorama"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isPanoBucket(I)Z
    .locals 1

    .line 862
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PANO_BUCKET_ID:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPhotoEditorSupport(Landroid/content/Context;)Z
    .locals 2

    .line 1390
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1391
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 1392
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cn.nubia.photoeditor"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 1391
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1394
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static isPortrait(Landroid/content/Context;)Z
    .locals 1

    .line 465
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static isPrivateAvailable(Landroid/content/Context;)Z
    .locals 4

    .line 683
    sget-boolean v0, Lcn/nubia/gallery3d/util/GalleryUtils;->sPrivateAvailableInitialized:Z

    if-eqz v0, :cond_0

    .line 684
    sget-boolean p0, Lcn/nubia/gallery3d/util/GalleryUtils;->sPrivateAvailable:Z

    return p0

    .line 685
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 686
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 690
    new-instance v2, Landroid/content/Intent;

    const-string v3, "cn.nubia.security.privacy.encryptFile.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 692
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 696
    sput-boolean v1, Lcn/nubia/gallery3d/util/GalleryUtils;->sPrivateAvailableInitialized:Z

    .line 697
    invoke-static {p0}, Lcn/nubia/improve/ImproveConfig;->isSupportPrivate(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    sput-boolean v1, Lcn/nubia/gallery3d/util/GalleryUtils;->sPrivateAvailable:Z

    return v1
.end method

.method public static isSetColorSpace(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 2192
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v2, "ColorSpace"

    .line 2193
    invoke-virtual {v1, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2194
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "65535"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    .line 2198
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSetColorSpace failed to get exifInfo from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "GalleryUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isStreaming(Landroid/net/Uri;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 416
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v0, "http"

    .line 417
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "rtsp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportPrivacySpace(Landroid/content/Context;)Z
    .locals 2

    .line 2333
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "cn.nubia.privacyspace"

    .line 2336
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method private static isSupportSDcardStorage(Landroid/content/Context;)Z
    .locals 0

    .line 949
    invoke-static {p0}, Lcn/nubia/improve/ApiHelper;->hasSecondaryStorage(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isValidLocation(DD)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-nez p0, :cond_1

    cmpl-double p0, p2, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isWallpaperInstall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 563
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    .line 566
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object p0, p1

    :goto_0
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "wifi"

    .line 2142
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 2143
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    .line 2144
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0

    .line 2145
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "<unknown ssid>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static loadPrivacyData(Lcn/nubia/gallery3d/app/GalleryApp;ILandroid/net/Uri;)[F
    .locals 2

    .line 2244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 2246
    invoke-static {p1}, Landroid/provider/MediaStore;->setRequireOriginal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 2248
    :try_start_0
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2250
    new-instance p1, Landroid/media/ExifInterface;

    invoke-direct {p1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 2251
    invoke-virtual {p1, p2}, Landroid/media/ExifInterface;->getLatLong([F)Z

    .line 2252
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2257
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 2255
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p2
.end method

.method public static meterToPixel(F)I
    .locals 1

    const v0, 0x421d7ae1    # 39.37f

    mul-float/2addr p0, v0

    const/high16 v0, 0x43200000    # 160.0f

    mul-float/2addr p0, v0

    .line 584
    invoke-static {p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->dpToPixel(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static moveBetweenInternalAndExternal(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "/"

    const/4 v1, 0x1

    .line 834
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v2, v1

    .line 835
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-gtz v3, :cond_0

    .line 837
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 839
    :cond_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 841
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v2, v1

    .line 842
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_1

    .line 844
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 846
    :cond_1
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_2

    .line 847
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method public static needToAdjustUI()Z
    .locals 4

    .line 2040
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "606"

    .line 2041
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 2043
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needToAdjustUI = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GalleryUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static renameForMove(Ljava/io/File;Ljava/io/File;)Z
    .locals 2

    .line 1461
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->moveBetweenInternalAndExternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1464
    :try_start_0
    invoke-static {p0, p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_1

    .line 1466
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    const/4 p1, 0x0

    .line 1468
    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1471
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    :cond_1
    :goto_1
    return p1
.end method

.method public static resetRenderThread()V
    .locals 1

    const/4 v0, 0x0

    .line 608
    sput-object v0, Lcn/nubia/gallery3d/util/GalleryUtils;->sCurrentThread:Ljava/lang/Thread;

    return-void
.end method

.method public static scanFiles(Landroid/content/Context;[Ljava/lang/String;Lcn/nubia/gallery3d/util/GalleryUtils$ScanCompletedListener;)V
    .locals 1

    .line 1509
    new-instance v0, Lcn/nubia/gallery3d/util/GalleryUtils$2;

    invoke-direct {v0, p2}, Lcn/nubia/gallery3d/util/GalleryUtils$2;-><init>(Lcn/nubia/gallery3d/util/GalleryUtils$ScanCompletedListener;)V

    const/4 p2, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method public static setFrom_sms(Z)V
    .locals 0

    .line 2440
    sput-boolean p0, Lcn/nubia/gallery3d/util/GalleryUtils;->from_sms:Z

    return-void
.end method

.method public static setIntentScreenBrightness(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 1

    .line 1893
    invoke-static {p1}, Lcn/nubia/gallery3d/app/ScreenBrightness;->get(Landroid/app/Activity;)F

    move-result p1

    const-string v0, "camera_screen_light"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    return-void
.end method

.method public static setRenderThread()V
    .locals 1

    .line 604
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/util/GalleryUtils;->sCurrentThread:Ljava/lang/Thread;

    return-void
.end method

.method public static setViewPointMatrix([FFFF)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 744
    invoke-static {p0, v0, v1, v2}, Ljava/util/Arrays;->fill([FIIF)V

    neg-float p3, p3

    const/16 v1, 0xf

    .line 745
    aput p3, p0, v1

    const/4 v1, 0x5

    aput p3, p0, v1

    aput p3, p0, v0

    const/16 p3, 0x8

    .line 746
    aput p1, p0, p3

    const/16 p1, 0x9

    .line 747
    aput p2, p0, p1

    const/16 p1, 0xb

    const/high16 p2, 0x3f800000    # 1.0f

    .line 748
    aput p2, p0, p1

    const/16 p1, 0xa

    aput p2, p0, p1

    return-void
.end method

.method public static showToast(Landroid/content/Context;II)V
    .locals 4

    .line 1840
    sget v0, Lcn/nubia/gallery3d/util/GalleryUtils;->oldmsgId:I

    if-eq p1, v0, :cond_0

    .line 1841
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 1842
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/nubia/gallery3d/util/GalleryUtils;->time:J

    goto :goto_0

    .line 1844
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcn/nubia/gallery3d/util/GalleryUtils;->time:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x9c4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1845
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 1846
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/nubia/gallery3d/util/GalleryUtils;->time:J

    .line 1849
    :cond_1
    :goto_0
    sput p1, Lcn/nubia/gallery3d/util/GalleryUtils;->oldmsgId:I

    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    .line 1877
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1880
    :cond_0
    sget-object v0, Lcn/nubia/gallery3d/util/GalleryUtils;->oldMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1881
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 1882
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/nubia/gallery3d/util/GalleryUtils;->time:J

    goto :goto_0

    .line 1884
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcn/nubia/gallery3d/util/GalleryUtils;->time:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x9c4

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 1885
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 1886
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/nubia/gallery3d/util/GalleryUtils;->time:J

    .line 1889
    :cond_2
    :goto_0
    sput-object p1, Lcn/nubia/gallery3d/util/GalleryUtils;->oldMsg:Ljava/lang/String;

    return-void
.end method

.method public static sp2px(Landroid/content/Context;F)I
    .locals 0

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static startCameraActivity(Landroid/content/Context;)V
    .locals 3

    .line 703
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x14000000

    .line 704
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.camera"

    .line 705
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCameraActivity Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalleryUtils"

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10027e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 710
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public static startVideoCameraActivity(Landroid/content/Context;)V
    .locals 3

    .line 716
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x14000000

    .line 717
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 718
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startVideoCameraActivity Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GalleryUtils"

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10027e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 722
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public static storageHasEnoughCapacity(Ljava/lang/String;J)Z
    .locals 2

    .line 799
    invoke-static {p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getFreeSize(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long p0, p1, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final toMile(D)D
    .locals 2

    const-wide v0, 0x4099240000000000L    # 1609.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static transMediaDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4

    .line 2281
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ":"

    .line 2282
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 2283
    aget-object v1, p1, v0

    const-string v2, "image"

    .line 2285
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2286
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const-string v2, "video"

    .line 2287
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2288
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 2293
    aget-object p1, p1, v2

    aput-object p1, v3, v0

    const-string p1, "_id=?"

    .line 2294
    invoke-static {p0, v1, p1, v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->getIdColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    int-to-long p0, p0

    .line 2295
    invoke-static {v1, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static typeToDBColumn(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "_id"

    return-object p0

    :cond_0
    const-string p0, "bucket_id"

    return-object p0

    :cond_1
    const-string p0, "_data"

    return-object p0
.end method

.method private static updateCoverFromFaceOperationDB(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)V
    .locals 3

    .line 1774
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_data"

    const-string v2, ""

    .line 1775
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "_data in (%s)"

    .line 1776
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1777
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 1778
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p0

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 1779
    invoke-virtual {p0, v1, v0, p1, v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->update(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static updateFaceCoverFromDB(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)V
    .locals 1

    .line 1767
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1769
    invoke-static {p0, p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->updateCoverFromFaceOperationDB(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
