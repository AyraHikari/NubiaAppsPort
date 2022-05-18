.class public Lcn/nubia/gallery3d/util/MediaSetUtils;
.super Ljava/lang/Object;
.source "MediaSetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/util/MediaSetUtils$NameComparator;
    }
.end annotation


# static fields
.field private static ALBUM_NAME_CN:[Ljava/lang/String; = null

.field private static ALBUM_NAME_EN:[Ljava/lang/String; = null

.field private static ALBUM_ORDER:[I = null

.field private static ALBUM_PATH_CN:[Ljava/lang/String; = null

.field private static ALBUM_PATH_EN:[Ljava/lang/String; = null

.field public static final ALBUM_TAIL:[I

.field private static final ANDROID_N:I = 0x18

.field public static final ANIMATION_BUCKET_ID:I

.field public static final BLUETOOTH_BUCKET_ID:I

.field public static BLZY_BUCKET_ID:I = 0x0

.field public static BLZY_MARVELLOUS_ID:I = 0x0

.field private static CAMERA_ALBUM_NAMES:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static CAMERA_ALBUM_PATHS:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final CAMERA_BUCKET_ID:I

.field public static CAMERA_BUCKET_IDS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static CAMERA_BUCKET_NAMES:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static CAMERA_FAMILY_BUCKET_IDS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAMERA_FAMILY_INDEX:[I

.field private static final CAMERA_ROOT:Ljava/lang/String; = "/DCIM/Camera/"

.field public static CJZC_BUCKET_ID:I = 0x0

.field public static CJZC_MARVELLOUS_ID:I = 0x0

.field public static final COLLECTION:I

.field public static DEFAULT_PREFERENCE_BUCKET_IDS:[I = null

.field public static final DOWNLOAD_BUCKET_ID:I

.field public static final FACE_ALBUM_SET_BUCKET_ID:I

.field public static final FACE_HIDE_ALBUM_SET_BUCKET_ID:I

.field public static FOR_CAMERA_BUCKET_IDS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final IMPORTED_BUCKET_ID:I

.field private static final INDEX_ALBUM_PATH_CN:I = 0x1

.field private static final INDEX_ALBUM_PATH_EN:I = 0x0

.field public static final INVALID_MERGED_BUCKET_ID:I = -0x1

.field public static final LOCATION_ALBUM_SET_BUCKET_ID:I

.field public static MANUAL_ID:I = 0x0

.field public static final MARK_BUCKET_ID:I

.field private static MERGED_BUCKET_IDS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public static MERGED_CAMERA_BIGAPERTURE_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_CLONE_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_DEMISTER_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_DNG_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_DYNAMICPHOTO_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_EFFECT_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_ELECTRONICFNO_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_FREEZE_VIDEO_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_FRONT_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_IDPHOTO_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_IMAGE3D_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_INTERVALOMETER_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_LIGHTDRAW_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_MACROCAMERA_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_MONO_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_MULTIEXPOSURE_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_MULTISHOOT_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_MUTIL_CAMERA_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_OBJECTCLEAR_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_PANO_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_PHOTO3D_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_PORTRAIT_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_PRISMA_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_SLOMOVIDEO_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_SLOWSHUTTER_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_SLOWVIDEO_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_STARCLOUD_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_STARTRAIL_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_TRAJECTORY_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_VIDEOMAKER_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_VIDEO_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_VLOG_BUCKET_ID:I = 0x0

.field public static MERGED_CAMERA_ZOOMBLUR_BUCKET_ID:I = 0x0

.field public static MERGED_HITCH_COCK_BUCKET_ID:I = 0x0

.field public static MERGED_MOON_BUCKET_ID:I = 0x0

.field public static MERGED_PHANTOM_BUCKET_ID:I = 0x0

.field public static MERGED_RAW_BUCKET_ID:I = 0x0

.field public static final MERGED_SCREENSHOTS_BUCKET_ID:I

.field public static MERGED_STAR_SKY_BUCKET_ID:I = 0x0

.field public static final MERGED_WECHAT_BUCKET_ID:I

.field public static final NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcn/nubia/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field public static final NEWFOLDER_BUCKET_ID:I

.field public static final NOTSYSTEM_ALBUM_SET_BUCKET_ID:I

.field public static NOT_BELONG_NO_SYSTEM_BUCKET_IDS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final NUBIA_NEOSHARE_BUCKET_ID:I

.field public static final NUBIA_SAMPLE_BUCKET_ID:I

.field public static NUBIA_TRANSFER_BUCKET_ID:I = 0x0

.field public static ONLY_CAMERA_BUCKET_IDS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_EXTERNAL:Ljava/lang/String;

.field public static PATH_OTG:Ljava/lang/String; = null

.field public static PATH_SDCARD:Ljava/lang/String; = null

.field public static final PINTU_BUCKET_ID:I

.field public static final PRINTSCREEN_BUCKET_ID:I

.field public static PUBGMOBILE_BUCKET_ID:I = 0x0

.field public static PUBGMOBILE_MARVELLOUS_ID:I = 0x0

.field public static final RECYCLED_BUCKET_ID:I

.field public static final REDMAGIC_TIME_SNAPSHOT_BUCKET_ID:I

.field public static final ROOT_BUCKET_ID:I

.field public static final SCREEN_RECORDER_BUCKET_ID:I

.field public static final SINA_WEIBO_BUCKET_ID:I

.field public static final SNAPSHOT_BUCKET_ID:I

.field public static final SUPPORT_VIDEO_MERGED_BUCKET_ID:[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static SYSTEM_BUCKET_IDS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYSTEM_BUCKET_INDEX:[I

.field public static final TAG:Ljava/lang/String; = "MediaSetUtils"

.field public static final TENCENT_QQ_BUCKET_ID:I

.field private static THINGS_ALBUM_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final THINGS_ALBUM_SET_BUCKET_ID:I

.field private static THINGS_GROUP_LABELS:[Ljava/lang/String;

.field private static THINGS_LABELS:[Ljava/lang/String;

.field public static final TLOFTER_BUCKET_ID:I

.field public static final VCARD_BUCKET_ID:I

.field public static final WALLPAPER_HISTORIES_BUCKET_ID:I

.field public static final WECHAT_BUCKET_ID:I

.field public static final WECHAT_PICTURES_BUCKET_ID:I

.field public static final WEIXIN_BUCKET_ID:I

.field public static WZRY_BUCKET_ID:I

.field public static WZRY_MARVELLOUS_ID:I

.field public static final XCLOUD_BUCKET_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 52

    .line 51
    new-instance v0, Lcn/nubia/gallery3d/util/MediaSetUtils$NameComparator;

    invoke-direct {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils$NameComparator;-><init>()V

    sput-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->NAME_COMPARATOR:Ljava/util/Comparator;

    .line 53
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getPhoneStorage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->PATH_EXTERNAL:Ljava/lang/String;

    .line 72
    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->ROOT_BUCKET_ID:I

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Download"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Imported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcn/nubia/gallery3d/util/MediaSetUtils;->IMPORTED_BUCKET_ID:I

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Pictures/Screenshots"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcn/nubia/gallery3d/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Pictures/PrintScreen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcn/nubia/gallery3d/util/MediaSetUtils;->PRINTSCREEN_BUCKET_ID:I

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/Pictures/Redmagic Time Screenshot"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcn/nubia/gallery3d/util/MediaSetUtils;->REDMAGIC_TIME_SNAPSHOT_BUCKET_ID:I

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_SCREENSHOTS_BUCKET_ID:I

    const-string v3, "mark"

    .line 91
    invoke-static {v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcn/nubia/gallery3d/util/MediaSetUtils;->MARK_BUCKET_ID:I

    const-string v3, "xcloud"

    .line 93
    invoke-static {v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcn/nubia/gallery3d/util/MediaSetUtils;->XCLOUD_BUCKET_ID:I

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Nubia_Sample"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcn/nubia/gallery3d/util/MediaSetUtils;->NUBIA_SAMPLE_BUCKET_ID:I

    const-string v4, "Recycled"

    .line 96
    invoke-static {v4}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcn/nubia/gallery3d/util/MediaSetUtils;->RECYCLED_BUCKET_ID:I

    const-string v5, "NewFolder"

    .line 97
    invoke-static {v5}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcn/nubia/gallery3d/util/MediaSetUtils;->NEWFOLDER_BUCKET_ID:I

    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/tencent/MicroMsg/WeiXin"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcn/nubia/gallery3d/util/MediaSetUtils;->WEIXIN_BUCKET_ID:I

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/tencent/MicroMsg/WeChat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcn/nubia/gallery3d/util/MediaSetUtils;->WECHAT_BUCKET_ID:I

    .line 102
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/Pictures/WeiXin"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcn/nubia/gallery3d/util/MediaSetUtils;->WECHAT_PICTURES_BUCKET_ID:I

    .line 104
    invoke-static {v7}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_WECHAT_BUCKET_ID:I

    .line 105
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/PhotoEditor/Animation"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcn/nubia/gallery3d/util/MediaSetUtils;->ANIMATION_BUCKET_ID:I

    .line 107
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/PhotoEditor/Pintu"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v9

    sput v9, Lcn/nubia/gallery3d/util/MediaSetUtils;->PINTU_BUCKET_ID:I

    .line 109
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/Pictures/Screen Recorder"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcn/nubia/gallery3d/util/MediaSetUtils;->SCREEN_RECORDER_BUCKET_ID:I

    const-string v11, "nosystem"

    .line 112
    invoke-static {v11}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v11

    sput v11, Lcn/nubia/gallery3d/util/MediaSetUtils;->NOTSYSTEM_ALBUM_SET_BUCKET_ID:I

    const-string v12, "collection"

    .line 114
    invoke-static {v12}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcn/nubia/gallery3d/util/MediaSetUtils;->COLLECTION:I

    .line 116
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/Tencent/QQ_Images"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcn/nubia/gallery3d/util/MediaSetUtils;->TENCENT_QQ_BUCKET_ID:I

    .line 118
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/neoShare_Image"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcn/nubia/gallery3d/util/MediaSetUtils;->NUBIA_NEOSHARE_BUCKET_ID:I

    .line 120
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/sina/weibo/weibo"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v14

    sput v14, Lcn/nubia/gallery3d/util/MediaSetUtils;->SINA_WEIBO_BUCKET_ID:I

    .line 122
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v16, v4

    const-string v4, "/netease/lofter/LOFTER"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcn/nubia/gallery3d/util/MediaSetUtils;->TLOFTER_BUCKET_ID:I

    .line 124
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v17, v11

    const-string v11, "/bluetooth"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v11

    sput v11, Lcn/nubia/gallery3d/util/MediaSetUtils;->BLUETOOTH_BUCKET_ID:I

    .line 126
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v18, v10

    const-string v10, "/Pictures/Histories"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcn/nubia/gallery3d/util/MediaSetUtils;->WALLPAPER_HISTORIES_BUCKET_ID:I

    .line 128
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v15, "/Pictures/Vcard"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcn/nubia/gallery3d/util/MediaSetUtils;->VCARD_BUCKET_ID:I

    .line 130
    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_BUCKET_ID:I

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, "/flycow/share/image"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->NUBIA_TRANSFER_BUCKET_ID:I

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, "/\u7ea2\u9b54\u65f6\u523b/\u548c\u5e73\u7cbe\u82f1"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CJZC_BUCKET_ID:I

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, "/\u7ea2\u9b54\u65f6\u523b/\u738b\u8005\u8363\u8000"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->WZRY_BUCKET_ID:I

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, "/\u7ea2\u9b54\u65f6\u523b/PUBGMOBILE"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->PUBGMOBILE_BUCKET_ID:I

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, "/\u7ea2\u9b54\u65f6\u523b/\u5821\u5792\u4e4b\u591c"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->BLZY_BUCKET_ID:I

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, "/\u7cbe\u5f69\u65f6\u523b/\u548c\u5e73\u7cbe\u82f1"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CJZC_MARVELLOUS_ID:I

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, "/\u7cbe\u5f69\u65f6\u523b/\u738b\u8005\u8363\u8000"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->WZRY_MARVELLOUS_ID:I

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, "/\u7cbe\u5f69\u65f6\u523b/PUBGMOBILE"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->PUBGMOBILE_MARVELLOUS_ID:I

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, "/\u7cbe\u5f69\u65f6\u523b/\u5821\u5792\u4e4b\u591c"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->BLZY_MARVELLOUS_ID:I

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/\u7ea2\u9b54\u65f6\u523b/\u624b\u52a8\u56de\u5f55"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MANUAL_ID:I

    const-string v0, "face"

    .line 143
    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->FACE_ALBUM_SET_BUCKET_ID:I

    const-string v0, "location"

    .line 145
    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->LOCATION_ALBUM_SET_BUCKET_ID:I

    const-string v0, "thing"

    .line 147
    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->THINGS_ALBUM_SET_BUCKET_ID:I

    const-string v0, "facehide"

    .line 149
    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->FACE_HIDE_ALBUM_SET_BUCKET_ID:I

    const/4 v0, -0x1

    .line 150
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MULTISHOOT_BUCKET_ID:I

    .line 151
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PANO_BUCKET_ID:I

    .line 152
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_FRONT_BUCKET_ID:I

    .line 153
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_TRAJECTORY_BUCKET_ID:I

    .line 154
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_STARTRAIL_BUCKET_ID:I

    .line 155
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_EFFECT_BUCKET_ID:I

    .line 156
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_SLOWSHUTTER_BUCKET_ID:I

    .line 157
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_OBJECTCLEAR_BUCKET_ID:I

    .line 158
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_VIDEO_BUCKET_ID:I

    .line 159
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_INTERVALOMETER_BUCKET_ID:I

    .line 160
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_LIGHTDRAW_BUCKET_ID:I

    .line 161
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MULTIEXPOSURE_BUCKET_ID:I

    .line 162
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_VIDEOMAKER_BUCKET_ID:I

    .line 163
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_ELECTRONICFNO_BUCKET_ID:I

    .line 164
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_SLOMOVIDEO_BUCKET_ID:I

    .line 165
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_DEMISTER_BUCKET_ID:I

    .line 166
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_CLONE_BUCKET_ID:I

    .line 167
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_DNG_BUCKET_ID:I

    .line 168
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_DYNAMICPHOTO_BUCKET_ID:I

    .line 169
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MACROCAMERA_BUCKET_ID:I

    .line 170
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MONO_BUCKET_ID:I

    .line 171
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_STARCLOUD_BUCKET_ID:I

    .line 172
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_BIGAPERTURE_BUCKET_ID:I

    .line 173
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PORTRAIT_BUCKET_ID:I

    .line 174
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_IMAGE3D_BUCKET_ID:I

    .line 175
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_ZOOMBLUR_BUCKET_ID:I

    .line 176
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PHOTO3D_BUCKET_ID:I

    .line 177
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PRISMA_BUCKET_ID:I

    .line 178
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_IDPHOTO_BUCKET_ID:I

    .line 179
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_SLOWVIDEO_BUCKET_ID:I

    .line 180
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_FREEZE_VIDEO_BUCKET_ID:I

    .line 181
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MUTIL_CAMERA_BUCKET_ID:I

    .line 182
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_VLOG_BUCKET_ID:I

    .line 183
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_STAR_SKY_BUCKET_ID:I

    .line 184
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_MOON_BUCKET_ID:I

    .line 185
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_HITCH_COCK_BUCKET_ID:I

    .line 186
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_RAW_BUCKET_ID:I

    .line 187
    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_PHANTOM_BUCKET_ID:I

    const/4 v0, 0x6

    new-array v2, v0, [I

    .line 191
    fill-array-data v2, :array_0

    sput-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->SYSTEM_BUCKET_INDEX:[I

    const/16 v2, 0x1d

    new-array v2, v2, [I

    .line 203
    fill-array-data v2, :array_1

    sput-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_FAMILY_INDEX:[I

    const/16 v2, 0xd

    new-array v2, v2, [I

    const/4 v15, 0x0

    aput v9, v2, v15

    const/4 v9, 0x1

    aput v7, v2, v9

    const/16 v19, 0x2

    aput v1, v2, v19

    const/16 v20, 0x3

    aput v5, v2, v20

    const/4 v9, 0x4

    aput v6, v2, v9

    const/4 v6, 0x5

    aput v8, v2, v6

    aput v12, v2, v0

    const/4 v8, 0x7

    aput v13, v2, v8

    const/16 v12, 0x8

    aput v14, v2, v12

    const/16 v13, 0x9

    aput v4, v2, v13

    const/16 v4, 0xa

    aput v3, v2, v4

    const/16 v14, 0xb

    aput v11, v2, v14

    const/16 v14, 0xc

    aput v10, v2, v14

    .line 238
    sput-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->DEFAULT_PREFERENCE_BUCKET_IDS:[I

    const-string v21, "\u8fde\u62cd"

    const-string v22, "\u81ea\u62cd"

    const-string v23, "\u4eba\u50cf"

    const-string v24, "\u9065\u63a7\u76f8\u673a"

    const-string v25, "\u514b\u9686"

    const-string v26, "DNG"

    const-string v27, "\u7535\u5b50\u5149\u5708"

    const-string v28, "\u5ef6\u65f6\u6444\u5f71"

    const-string v29, "\u5149\u7ed8"

    const-string v30, "\u5fae\u8ddd"

    const-string v31, "\u591a\u91cd\u66dd\u5149"

    const-string v32, "\u5168\u666f"

    const-string v33, "\u6162\u95e8"

    const-string v34, "\u661f\u8f68"

    const-string v35, "\u8fd0\u52a8\u8f68\u8ff9"

    const-string v36, "\u7acb\u4f53"

    const-string v37, "\u6162\u52a8\u4f5c"

    const-string v38, "\u89c6\u9891"

    const-string v39, "\u77ed\u89c6\u9891"

    const-string v40, "\u65f6\u5149"

    const-string v41, "\u827a\u672f\u76f8\u673a"

    const-string v42, "\u8bc1\u4ef6\u7167"

    const-string v43, "\u6162\u62cd\u89c6\u9891"

    const-string v44, "\u79fb\u5f62\u6362\u5f71"

    const-string v45, "VLOG"

    const-string v46, "\u591a\u6444\u540c\u5f55"

    const-string v47, "\u661f\u7a7a"

    const-string v48, "\u8d85\u7ea7\u6708\u4eae"

    const-string v49, "\u5e0c\u533a\u67ef\u514b"

    const-string v50, "RAW"

    const-string v51, "\u51cc\u6ce2\u5fae\u6b65"

    .line 255
    filled-new-array/range {v21 .. v51}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->ALBUM_NAME_CN:[Ljava/lang/String;

    const-string v21, "\u8fde\u62cd"

    const-string v22, "\u81ea\u62cd"

    const-string v23, "\u4eba\u50cf"

    const-string v24, "\u9065\u63a7\u76f8\u673a"

    const-string v25, "\u514b\u9686"

    const-string v26, "DNG"

    const-string v27, "\u7535\u5b50\u5149\u5708"

    const-string v28, "\u5ef6\u65f6\u6444\u5f71"

    const-string v29, "\u5149\u7ed8"

    const-string v30, "\u5fae\u8ddd"

    const-string v31, "\u591a\u91cd\u66dd\u5149"

    const-string v32, "\u5168\u666f"

    const-string v33, "\u6162\u95e8"

    const-string v34, "\u661f\u8f68"

    const-string v35, "\u8fd0\u52a8\u8f68\u8ff9"

    const-string v36, "\u7acb\u4f53"

    const-string v37, "\u6162\u52a8\u4f5c"

    const-string v38, "\u89c6\u9891"

    const-string v39, "\u77ed\u89c6\u9891"

    const-string v40, "\u65f6\u5149"

    const-string v41, "\u827a\u672f\u76f8\u673a"

    const-string v42, "\u8bc1\u4ef6\u7167"

    const-string v43, "\u6162\u62cd\u89c6\u9891"

    const-string v44, "\u79fb\u5f62\u6362\u5f71"

    const-string v45, "VLOG"

    const-string v46, "\u591a\u6444"

    const-string v47, "\u661f\u7a7a"

    const-string v48, "\u6708\u4eae"

    const-string v49, "\u5e0c\u533a\u67ef\u514b"

    const-string v50, "Raw"

    const-string v51, "\u51cc\u6ce2\u5fae\u6b65"

    .line 289
    filled-new-array/range {v21 .. v51}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->ALBUM_PATH_CN:[Ljava/lang/String;

    const-string v21, "multiShoot"

    const-string v22, "FrontCamera"

    const-string v23, "Portrait"

    const-string v24, "RemoteCamera"

    const-string v25, "Clone"

    const-string v26, "DNG"

    const-string v27, "ElectronicFNO"

    const-string v28, "Intervalometer"

    const-string v29, "LightDraw"

    const-string v30, "MacroCamera"

    const-string v31, "MultiExposure"

    const-string v32, "Panorama"

    const-string v33, "SlowShutter"

    const-string v34, "StarTrail"

    const-string v35, "Trajectory"

    const-string v36, "3d"

    const-string v37, "SlomoVideo"

    const-string v38, "Video"

    const-string v39, "VideoMaker"

    const-string v40, "ZoomBlur"

    const-string v41, "ArtCamera"

    const-string v42, "IdPhoto"

    const-string v43, "SlowShutterVideo"

    const-string v44, "FreezeVideo"

    const-string v45, "VLOG"

    const-string v46, "Multi Camera"

    const-string v47, "Starry Sky"

    const-string v48, "Super Moon"

    const-string v49, "Hitchcock"

    const-string v50, "RAW"

    const-string v51, "Phantom"

    .line 322
    filled-new-array/range {v21 .. v51}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->ALBUM_NAME_EN:[Ljava/lang/String;

    const-string v21, "multiShoot"

    const-string v22, "FrontCamera"

    const-string v23, "Portrait"

    const-string v24, "RemoteCamera"

    const-string v25, "Clone"

    const-string v26, "DNG"

    const-string v27, "ElectronicFNO"

    const-string v28, "Intervalometer"

    const-string v29, "LightDraw"

    const-string v30, "MacroCamera"

    const-string v31, "MultiExposure"

    const-string v32, "Panorama"

    const-string v33, "SlowShutter"

    const-string v34, "StarTrail"

    const-string v35, "Trajectory"

    const-string v36, "3d"

    const-string v37, "SlomoVideo"

    const-string v38, "Video"

    const-string v39, "VideoMaker"

    const-string v40, "ZoomBlur"

    const-string v41, "ArtCamera"

    const-string v42, "IdPhoto"

    const-string v43, "SlowShutterVideo"

    const-string v44, "FreezeVideo"

    const-string v45, "VLOG"

    const-string v46, "MultiCamera"

    const-string v47, "StarrySky"

    const-string v48, "Moon"

    const-string v49, "Hitchcock"

    const-string v50, "Raw"

    const-string v51, "Phantom"

    .line 355
    filled-new-array/range {v21 .. v51}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->ALBUM_PATH_EN:[Ljava/lang/String;

    new-array v2, v4, [I

    .line 739
    sget v4, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_BUCKET_ID:I

    aput v4, v2, v15

    sget v4, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_VIDEOMAKER_BUCKET_ID:I

    const/4 v10, 0x1

    aput v4, v2, v10

    sget v4, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_VIDEO_BUCKET_ID:I

    aput v4, v2, v19

    sget v4, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_LIGHTDRAW_BUCKET_ID:I

    aput v4, v2, v20

    sget v4, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_INTERVALOMETER_BUCKET_ID:I

    aput v4, v2, v9

    aput v3, v2, v6

    sget v3, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_SLOMOVIDEO_BUCKET_ID:I

    aput v3, v2, v0

    aput v5, v2, v8

    aput v7, v2, v12

    aput v18, v2, v13

    sput-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->SUPPORT_VIDEO_MERGED_BUCKET_ID:[I

    new-array v0, v9, [I

    aput v1, v0, v15

    const/4 v1, 0x1

    aput v11, v0, v1

    aput v17, v0, v19

    aput v16, v0, v20

    .line 842
    sput-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->ALBUM_TAIL:[I

    return-void

    :array_0
    .array-data 4
        0x17
        0x4
        0x16
        0xc
        0x12
        0x18
    .end array-data

    :array_1
    .array-data 4
        0x1d
        0x17
        0x1b
        0x2
        0x8
        0x21
        0x20
        0x6
        0x3
        0x7
        0x9
        0x24
        0x25
        0x26
        0x28
        0x29
        0x2d
        0x30
        0xa
        0x15
        0x5
        0x1c
        0x31
        0x34
        0x35
        0x36
        0x32
        -0x3
        0x2f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDefaultBucket()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1273
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1274
    sget-object v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->PATH_EXTERNAL:Ljava/lang/String;

    .line 1275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/DCIM/Camera"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1276
    invoke-static {}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getCameraAlbumPaths()Ljava/util/List;

    move-result-object v2

    .line 1277
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1278
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static bucketIsSupportVideo(I)Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 852
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->SUPPORT_VIDEO_MERGED_BUCKET_ID:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-ne p0, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method public static dumpSetupData()V
    .locals 2

    .line 531
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSetUtils"

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static generateMergedBucketId(I)I
    .locals 2

    .line 613
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v0, -0x1

    if-eqz p0, :cond_1

    .line 614
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 616
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 617
    invoke-static {p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public static getAlbumOrder()[I
    .locals 3

    .line 786
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->ALBUM_ORDER:[I

    if-nez v0, :cond_0

    const/16 v0, 0x31

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 787
    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_BUCKET_ID:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->COLLECTION:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MARK_BUCKET_ID:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_FRONT_BUCKET_ID:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->FACE_ALBUM_SET_BUCKET_ID:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->LOCATION_ALBUM_SET_BUCKET_ID:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->THINGS_ALBUM_SET_BUCKET_ID:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PORTRAIT_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_VIDEO_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PANO_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MULTISHOOT_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_INTERVALOMETER_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0xc

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_SLOMOVIDEO_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0xd

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->PINTU_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0xe

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->ANIMATION_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0xf

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_SCREENSHOTS_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x10

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->NUBIA_TRANSFER_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x11

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->SCREEN_RECORDER_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x12

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CJZC_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x13

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->WZRY_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x14

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->PUBGMOBILE_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x15

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->BLZY_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x16

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CJZC_MARVELLOUS_ID:I

    aput v2, v0, v1

    const/16 v1, 0x17

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->WZRY_MARVELLOUS_ID:I

    aput v2, v0, v1

    const/16 v1, 0x18

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->PUBGMOBILE_MARVELLOUS_ID:I

    aput v2, v0, v1

    const/16 v1, 0x19

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->BLZY_MARVELLOUS_ID:I

    aput v2, v0, v1

    const/16 v1, 0x1a

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MANUAL_ID:I

    aput v2, v0, v1

    const/16 v1, 0x1b

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->VCARD_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x1c

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MULTIEXPOSURE_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x1d

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_LIGHTDRAW_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x1e

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_ELECTRONICFNO_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x1f

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_SLOWSHUTTER_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x20

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_STARTRAIL_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x21

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_VIDEOMAKER_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x22

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_TRAJECTORY_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x23

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_DNG_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x24

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_CLONE_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x25

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MACROCAMERA_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x26

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_BIGAPERTURE_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x27

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_IMAGE3D_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x28

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_ZOOMBLUR_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x29

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PHOTO3D_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x2a

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PRISMA_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x2b

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MONO_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x2c

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_IDPHOTO_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x2d

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_SLOWVIDEO_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x2e

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_WECHAT_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x2f

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->TENCENT_QQ_BUCKET_ID:I

    aput v2, v0, v1

    const/16 v1, 0x30

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->SINA_WEIBO_BUCKET_ID:I

    aput v2, v0, v1

    sput-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->ALBUM_ORDER:[I

    .line 839
    :cond_0
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->ALBUM_ORDER:[I

    return-object v0
.end method

.method private static final getBucketIdSet(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1021
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1024
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    .line 1025
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 1026
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1027
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1029
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_2

    .line 1030
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_2
    const-string p0, ")"

    .line 1032
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getBucketNames([I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1133
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1134
    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    aget v3, p0, v1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 1136
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getBucketSetString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 863
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 865
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    if-eq v2, v3, :cond_0

    const-string v3, ","

    .line 867
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 870
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCameraAlbumPaths()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1158
    :goto_0
    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1159
    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getCameraAlbumPathsByIndex(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1153
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static getCameraAlbumQueryCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6

    .line 1143
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/gallery3d/util/CameraQueryUtil;->CONTENT_CAMERA_ALBUMS:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private static getEffectCameraName(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2

    .line 1005
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "NX513J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f10009e

    .line 1006
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x7f10009d

    .line 1008
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 1119
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1120
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1121
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1122
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 1123
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcn/nubia/gallery3d/util/MediaSetUtils;->PATH_EXTERNAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1124
    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->PATH_SDCARD:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcn/nubia/gallery3d/util/MediaSetUtils;->PATH_SDCARD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0

    .line 1119
    :cond_4
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private static varargs getExternalAndSdCardBucketIds([Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 1106
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1107
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 1108
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 1109
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 1110
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcn/nubia/gallery3d/util/MediaSetUtils;->PATH_EXTERNAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1111
    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->PATH_SDCARD:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcn/nubia/gallery3d/util/MediaSetUtils;->PATH_SDCARD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    .line 1106
    :cond_4
    :goto_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static getExternalAndSdCardBucketPaths(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1266
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->PATH_SDCARD:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1269
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->PATH_SDCARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getExternalAndSdCardBucketPaths(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1252
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1253
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1254
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1257
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcn/nubia/gallery3d/util/MediaSetUtils;->PATH_EXTERNAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1258
    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->PATH_SDCARD:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcn/nubia/gallery3d/util/MediaSetUtils;->PATH_SDCARD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static getLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 466
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 467
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    goto :goto_0

    .line 469
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 471
    :goto_0
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalizedName(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 884
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 886
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_BUCKET_ID:I

    if-ne p1, v0, :cond_0

    const p1, 0x7f1000cc

    .line 887
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 888
    :cond_0
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    if-ne p1, v0, :cond_1

    const p1, 0x7f1000ce

    .line 889
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 890
    :cond_1
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->BLUETOOTH_BUCKET_ID:I

    if-ne p1, v0, :cond_2

    const p1, 0x7f1000cb

    .line 891
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 892
    :cond_2
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->IMPORTED_BUCKET_ID:I

    if-ne p1, v0, :cond_3

    const p1, 0x7f1000d2

    .line 893
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 894
    :cond_3
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_SCREENSHOTS_BUCKET_ID:I

    if-ne p1, v0, :cond_4

    const p1, 0x7f1000e1

    .line 895
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 896
    :cond_4
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->NUBIA_TRANSFER_BUCKET_ID:I

    if-ne p1, v0, :cond_5

    const p1, 0x7f1000d9

    .line 897
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 898
    :cond_5
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MULTISHOOT_BUCKET_ID:I

    if-ne p1, v0, :cond_6

    const p1, 0x7f1000d7

    .line 899
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 900
    :cond_6
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PANO_BUCKET_ID:I

    if-ne p1, v0, :cond_7

    .line 901
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 902
    :cond_7
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_FRONT_BUCKET_ID:I

    if-ne p1, v0, :cond_8

    .line 903
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/16 p1, 0x16

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 904
    :cond_8
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MARK_BUCKET_ID:I

    if-ne p1, v0, :cond_9

    const p1, 0x7f1000d5

    .line 905
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 906
    :cond_9
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_ELECTRONICFNO_BUCKET_ID:I

    if-ne p1, v0, :cond_a

    .line 907
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 908
    :cond_a
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_TRAJECTORY_BUCKET_ID:I

    if-ne p1, v0, :cond_b

    .line 909
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 910
    :cond_b
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_STARTRAIL_BUCKET_ID:I

    if-ne p1, v0, :cond_c

    .line 911
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/16 p1, 0xd

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 912
    :cond_c
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_EFFECT_BUCKET_ID:I

    if-ne p1, v0, :cond_d

    .line 913
    invoke-static {p0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getEffectCameraName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 914
    :cond_d
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_SLOWSHUTTER_BUCKET_ID:I

    if-ne p1, v0, :cond_e

    .line 915
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 916
    :cond_e
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_OBJECTCLEAR_BUCKET_ID:I

    if-ne p1, v0, :cond_f

    .line 917
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 918
    :cond_f
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_VIDEO_BUCKET_ID:I

    if-ne p1, v0, :cond_10

    .line 919
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/16 p1, 0x12

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 920
    :cond_10
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_LIGHTDRAW_BUCKET_ID:I

    if-ne p1, v0, :cond_11

    .line 921
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 922
    :cond_11
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MULTIEXPOSURE_BUCKET_ID:I

    if-ne p1, v0, :cond_12

    .line 923
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 924
    :cond_12
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_VIDEOMAKER_BUCKET_ID:I

    if-ne p1, v0, :cond_13

    .line 925
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 926
    :cond_13
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_DEMISTER_BUCKET_ID:I

    if-ne p1, v0, :cond_14

    .line 927
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/16 p1, 0x17

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 928
    :cond_14
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_INTERVALOMETER_BUCKET_ID:I

    if-ne p1, v0, :cond_15

    .line 929
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 930
    :cond_15
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_SLOMOVIDEO_BUCKET_ID:I

    if-ne p1, v0, :cond_16

    .line 931
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/16 p1, 0x15

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 932
    :cond_16
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_CLONE_BUCKET_ID:I

    if-ne p1, v0, :cond_17

    .line 933
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/16 p1, 0x1d

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 934
    :cond_17
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_DYNAMICPHOTO_BUCKET_ID:I

    if-ne p1, v0, :cond_18

    const p1, 0x7f10009b

    .line 935
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 936
    :cond_18
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MACROCAMERA_BUCKET_ID:I

    if-ne p1, v0, :cond_19

    .line 937
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/16 p1, 0x21

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 938
    :cond_19
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MONO_BUCKET_ID:I

    if-ne p1, v0, :cond_1a

    .line 939
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 940
    :cond_1a
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_BIGAPERTURE_BUCKET_ID:I

    if-ne p1, v0, :cond_1b

    .line 941
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/16 p1, 0x24

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 942
    :cond_1b
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PORTRAIT_BUCKET_ID:I

    if-ne p1, v0, :cond_1c

    .line 943
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/16 p1, 0x18

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 944
    :cond_1c
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_IMAGE3D_BUCKET_ID:I

    if-ne p1, v0, :cond_1d

    .line 945
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/16 p1, 0x25

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 946
    :cond_1d
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_ZOOMBLUR_BUCKET_ID:I

    if-ne p1, v0, :cond_1e

    .line 947
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/16 p1, 0x26

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 948
    :cond_1e
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PHOTO3D_BUCKET_ID:I

    if-ne p1, v0, :cond_1f

    .line 949
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/16 p1, 0x28

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 950
    :cond_1f
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_IDPHOTO_BUCKET_ID:I

    if-ne p1, v0, :cond_20

    .line 951
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/16 p1, 0x2d

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 952
    :cond_20
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PRISMA_BUCKET_ID:I

    if-ne p1, v0, :cond_21

    .line 953
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 954
    :cond_21
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->ROOT_BUCKET_ID:I

    if-ne p1, v0, :cond_22

    const p1, 0x7f1001b0

    .line 955
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 956
    :cond_22
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_DNG_BUCKET_ID:I

    if-ne p1, v0, :cond_23

    .line 957
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/16 p1, 0x1b

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 958
    :cond_23
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_SLOWVIDEO_BUCKET_ID:I

    if-ne p1, v0, :cond_24

    .line 959
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 960
    :cond_24
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_FREEZE_VIDEO_BUCKET_ID:I

    if-ne p1, v0, :cond_25

    .line 961
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/16 p1, 0x1c

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 962
    :cond_25
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MUTIL_CAMERA_BUCKET_ID:I

    if-ne p1, v0, :cond_26

    .line 963
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/16 p1, 0x34

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 964
    :cond_26
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_VLOG_BUCKET_ID:I

    if-ne p1, v0, :cond_27

    .line 965
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/16 p1, 0x31

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 966
    :cond_27
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_STAR_SKY_BUCKET_ID:I

    if-ne p1, v0, :cond_28

    .line 967
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/16 p1, 0x35

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 968
    :cond_28
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_MOON_BUCKET_ID:I

    if-ne p1, v0, :cond_29

    .line 969
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/16 p1, 0x36

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 970
    :cond_29
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_HITCH_COCK_BUCKET_ID:I

    if-ne p1, v0, :cond_2a

    .line 971
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/16 p1, 0x32

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 972
    :cond_2a
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_RAW_BUCKET_ID:I

    if-ne p1, v0, :cond_2b

    .line 973
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/4 p1, -0x3

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_0

    .line 974
    :cond_2b
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_PHANTOM_BUCKET_ID:I

    if-ne p1, v0, :cond_2c

    .line 975
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    const/16 p1, 0x2f

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    .line 976
    :cond_2c
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_WECHAT_BUCKET_ID:I

    if-ne p1, v0, :cond_2d

    const p1, 0x7f1000e5

    .line 977
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 978
    :cond_2d
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->PINTU_BUCKET_ID:I

    if-ne p1, v0, :cond_2e

    const p1, 0x7f1000dc

    .line 979
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 980
    :cond_2e
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->ANIMATION_BUCKET_ID:I

    if-ne p1, v0, :cond_2f

    const p1, 0x7f1000ca

    .line 981
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 982
    :cond_2f
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->SCREEN_RECORDER_BUCKET_ID:I

    if-ne p1, v0, :cond_30

    const p1, 0x7f1000e0

    .line 983
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 984
    :cond_30
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->NOTSYSTEM_ALBUM_SET_BUCKET_ID:I

    if-ne p1, v0, :cond_31

    const p1, 0x7f100181

    .line 985
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 986
    :cond_31
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->COLLECTION:I

    if-ne p1, v0, :cond_32

    const p1, 0x7f100237

    .line 987
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 988
    :cond_32
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->WALLPAPER_HISTORIES_BUCKET_ID:I

    if-ne p1, v0, :cond_33

    const p1, 0x7f10028f

    .line 989
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 990
    :cond_33
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->VCARD_BUCKET_ID:I

    if-ne p1, v0, :cond_34

    const p1, 0x7f1000e4

    .line 991
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_34
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_36

    .line 993
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_35

    goto :goto_1

    :cond_35
    return-object p0

    :cond_36
    :goto_1
    return-object p2
.end method

.method public static final getMergedBucketId(I)I
    .locals 5

    .line 1037
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1038
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 1040
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1041
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p0, :cond_1

    .line 1042
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return p0
.end method

.method public static getMergedBucketPaths(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1166
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_BUCKET_ID:I

    if-ne p0, v1, :cond_0

    const-string p0, "/DCIM/Camera"

    .line 1167
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1168
    :cond_0
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PANO_BUCKET_ID:I

    if-ne p0, v1, :cond_1

    .line 1169
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1170
    :cond_1
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_FRONT_BUCKET_ID:I

    if-ne p0, v1, :cond_2

    .line 1171
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1172
    :cond_2
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_ELECTRONICFNO_BUCKET_ID:I

    if-ne p0, v1, :cond_3

    .line 1173
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1174
    :cond_3
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_TRAJECTORY_BUCKET_ID:I

    if-ne p0, v1, :cond_4

    .line 1175
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1176
    :cond_4
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_STARTRAIL_BUCKET_ID:I

    if-ne p0, v1, :cond_5

    .line 1177
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1178
    :cond_5
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_EFFECT_BUCKET_ID:I

    if-ne p0, v1, :cond_6

    .line 1179
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1180
    :cond_6
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_SLOWSHUTTER_BUCKET_ID:I

    if-ne p0, v1, :cond_7

    .line 1181
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1182
    :cond_7
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_OBJECTCLEAR_BUCKET_ID:I

    if-ne p0, v1, :cond_8

    .line 1183
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1184
    :cond_8
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_VIDEO_BUCKET_ID:I

    if-ne p0, v1, :cond_9

    .line 1185
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1186
    :cond_9
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_LIGHTDRAW_BUCKET_ID:I

    if-ne p0, v1, :cond_a

    .line 1187
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1188
    :cond_a
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MULTIEXPOSURE_BUCKET_ID:I

    if-ne p0, v1, :cond_b

    .line 1189
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1190
    :cond_b
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MULTISHOOT_BUCKET_ID:I

    if-ne p0, v1, :cond_c

    .line 1191
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1192
    :cond_c
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_VIDEOMAKER_BUCKET_ID:I

    if-ne p0, v1, :cond_d

    .line 1193
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1194
    :cond_d
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_DEMISTER_BUCKET_ID:I

    if-ne p0, v1, :cond_e

    .line 1195
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1196
    :cond_e
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_INTERVALOMETER_BUCKET_ID:I

    if-ne p0, v1, :cond_f

    .line 1197
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1198
    :cond_f
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_SLOMOVIDEO_BUCKET_ID:I

    if-ne p0, v1, :cond_10

    .line 1199
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1200
    :cond_10
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_CLONE_BUCKET_ID:I

    if-ne p0, v1, :cond_11

    .line 1201
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1202
    :cond_11
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MACROCAMERA_BUCKET_ID:I

    if-ne p0, v1, :cond_12

    .line 1203
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1204
    :cond_12
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_DNG_BUCKET_ID:I

    if-ne p0, v1, :cond_13

    .line 1205
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1206
    :cond_13
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MONO_BUCKET_ID:I

    if-ne p0, v1, :cond_14

    .line 1207
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1208
    :cond_14
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_BIGAPERTURE_BUCKET_ID:I

    if-ne p0, v1, :cond_15

    .line 1209
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1210
    :cond_15
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PORTRAIT_BUCKET_ID:I

    if-ne p0, v1, :cond_16

    .line 1211
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1212
    :cond_16
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_IMAGE3D_BUCKET_ID:I

    if-ne p0, v1, :cond_17

    .line 1213
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1214
    :cond_17
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_ZOOMBLUR_BUCKET_ID:I

    if-ne p0, v1, :cond_18

    .line 1215
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1216
    :cond_18
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PHOTO3D_BUCKET_ID:I

    if-ne p0, v1, :cond_19

    .line 1217
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1218
    :cond_19
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PRISMA_BUCKET_ID:I

    if-ne p0, v1, :cond_1a

    .line 1219
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1220
    :cond_1a
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_IDPHOTO_BUCKET_ID:I

    if-ne p0, v1, :cond_1b

    .line 1221
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1222
    :cond_1b
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_SLOWVIDEO_BUCKET_ID:I

    if-ne p0, v1, :cond_1c

    .line 1223
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1224
    :cond_1c
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_FREEZE_VIDEO_BUCKET_ID:I

    if-ne p0, v1, :cond_1d

    .line 1225
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1226
    :cond_1d
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MUTIL_CAMERA_BUCKET_ID:I

    if-ne p0, v1, :cond_1e

    .line 1227
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v0, 0x34

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1228
    :cond_1e
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_VLOG_BUCKET_ID:I

    if-ne p0, v1, :cond_1f

    .line 1229
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_0

    .line 1230
    :cond_1f
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_STAR_SKY_BUCKET_ID:I

    if-ne p0, v1, :cond_20

    .line 1231
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v0, 0x35

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 1232
    :cond_20
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_MOON_BUCKET_ID:I

    if-ne p0, v1, :cond_21

    .line 1233
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v0, 0x36

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 1234
    :cond_21
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_HITCH_COCK_BUCKET_ID:I

    if-ne p0, v1, :cond_22

    .line 1235
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 1236
    :cond_22
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_RAW_BUCKET_ID:I

    if-ne p0, v1, :cond_23

    .line 1237
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 1238
    :cond_23
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_PHANTOM_BUCKET_ID:I

    if-ne p0, v1, :cond_24

    .line 1239
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 1240
    :cond_24
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_WECHAT_BUCKET_ID:I

    if-ne p0, v1, :cond_25

    const-string p0, "/tencent/MicroMsg/WeChat"

    const-string v0, "/tencent/MicroMsg/WeiXin"

    const-string v1, "/Pictures/WeiXin"

    .line 1241
    filled-new-array {p0, v0, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1242
    :cond_25
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_SCREENSHOTS_BUCKET_ID:I

    if-ne p0, v1, :cond_26

    const-string p0, "/Pictures/PrintScreen"

    const-string v0, "/Pictures/Screenshots"

    .line 1243
    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1245
    :cond_26
    :goto_0
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketPaths(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final getSubBucketIds(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1017
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static final getSubBucketIdsAsString(I)Ljava/lang/String;
    .locals 1

    .line 1013
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getBucketIdSet(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getThingsAlbumLabelCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6

    .line 1148
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/nubia/gallery3d/util/CameraQueryUtil;->CONTENT_CAMERA_THINGSALBUMS_LABEL:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static getThingsGroupLabels()[Ljava/lang/String;
    .locals 1

    .line 1291
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->THINGS_GROUP_LABELS:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1292
    invoke-static {}, Lcn/nubia/improve/category/CategoryUtils;->getThingsGroupLabel()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->THINGS_GROUP_LABELS:[Ljava/lang/String;

    .line 1294
    :cond_0
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->THINGS_GROUP_LABELS:[Ljava/lang/String;

    return-object v0
.end method

.method public static getThingsLabelLocalizedName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1001
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->THINGS_ALBUM_NAMES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getThingsLabels()[Ljava/lang/String;
    .locals 1

    .line 1284
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->THINGS_LABELS:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1285
    invoke-static {}, Lcn/nubia/improve/category/CategoryUtils;->getThingsLabel()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->THINGS_LABELS:[Ljava/lang/String;

    .line 1287
    :cond_0
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->THINGS_LABELS:[Ljava/lang/String;

    return-object v0
.end method

.method private static initBucketIds()V
    .locals 0

    .line 536
    invoke-static {}, Lcn/nubia/gallery3d/util/MediaSetUtils;->initMergedBucketIds()V

    .line 537
    invoke-static {}, Lcn/nubia/gallery3d/util/MediaSetUtils;->initMergedBucketIdMap()V

    .line 538
    invoke-static {}, Lcn/nubia/gallery3d/util/MediaSetUtils;->initCameraBucketIds()V

    .line 539
    invoke-static {}, Lcn/nubia/gallery3d/util/MediaSetUtils;->initSystemBucketIds()V

    .line 540
    invoke-static {}, Lcn/nubia/gallery3d/util/MediaSetUtils;->initonlyCameraBuketIds()V

    .line 541
    invoke-static {}, Lcn/nubia/gallery3d/util/MediaSetUtils;->initFORCameraBucketIds()V

    .line 542
    invoke-static {}, Lcn/nubia/gallery3d/util/MediaSetUtils;->initNoBelongSystemBucketIds()V

    return-void
.end method

.method private static initCameraBucketIds()V
    .locals 2

    .line 746
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_IDS:Ljava/util/List;

    const-string v1, "/DCIM/Camera"

    .line 747
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 748
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_IDS:Ljava/util/List;

    sget-object v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_NAMES:Ljava/util/List;

    invoke-static {v1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 750
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->PRINTSCREEN_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 752
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->NUBIA_TRANSFER_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static initFORCameraBucketIds()V
    .locals 2

    .line 569
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->FOR_CAMERA_BUCKET_IDS:Ljava/util/List;

    const-string v1, "/DCIM/Camera"

    .line 570
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 571
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->FOR_CAMERA_BUCKET_IDS:Ljava/util/List;

    sget-object v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_NAMES:Ljava/util/List;

    invoke-static {v1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static initMergedBucketIdMap()V
    .locals 8

    .line 621
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    .line 622
    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "/DCIM/Camera"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 623
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 622
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PANO_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v3, 0xa

    .line 626
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 625
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 624
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_FRONT_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v3, 0x16

    .line 628
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 627
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_TRAJECTORY_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/4 v3, 0x7

    .line 631
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 630
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 629
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_STARTRAIL_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v3, 0xd

    .line 634
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 633
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 632
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_EFFECT_BUCKET_ID:I

    .line 636
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/4 v3, 0x4

    .line 638
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 637
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 636
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_SLOWSHUTTER_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/4 v3, 0x3

    .line 641
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 640
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 639
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_OBJECTCLEAR_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v4, 0xc

    .line 644
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 643
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 642
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_VIDEO_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v4, 0x12

    .line 647
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 646
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 645
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_INTERVALOMETER_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/4 v4, 0x5

    .line 650
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 649
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 648
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_LIGHTDRAW_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v4, 0x8

    .line 653
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 652
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 651
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MULTIEXPOSURE_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/4 v4, 0x6

    .line 656
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 655
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 654
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_VIDEOMAKER_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v4, 0x9

    .line 659
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 658
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 657
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_ELECTRONICFNO_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/4 v4, 0x2

    .line 662
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 661
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 660
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_SLOMOVIDEO_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v5, 0x15

    .line 665
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 664
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 663
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_DEMISTER_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v5, 0x17

    .line 668
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 667
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 666
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MULTISHOOT_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/4 v5, -0x2

    .line 671
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 670
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 669
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_CLONE_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v5, 0x1d

    .line 673
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 672
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_DNG_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v5, 0x1b

    .line 675
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 674
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MACROCAMERA_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v5, 0x21

    .line 678
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 677
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 676
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MONO_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v5, 0x20

    .line 680
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 679
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_BIGAPERTURE_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v5, 0x24

    .line 683
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 682
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 681
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PORTRAIT_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v5, 0x18

    .line 686
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 685
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 684
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_IMAGE3D_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v5, 0x25

    .line 689
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 688
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 687
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_ZOOMBLUR_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v5, 0x26

    .line 692
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 691
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 690
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PHOTO3D_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v5, 0x28

    .line 695
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 694
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 693
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PRISMA_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v5, 0x29

    .line 698
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 697
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 696
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_IDPHOTO_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v5, 0x2d

    .line 701
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 700
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 699
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_SLOWVIDEO_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v5, 0x30

    .line 704
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 703
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 702
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_FREEZE_VIDEO_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v5, 0x1c

    .line 707
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 706
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 705
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MUTIL_CAMERA_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v5, 0x34

    .line 710
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 709
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 708
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MUTIL_CAMERA_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    .line 713
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 712
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 711
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_VLOG_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v5, 0x31

    .line 716
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 715
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 714
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_STAR_SKY_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v5, 0x35

    .line 719
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 718
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 717
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_MOON_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v5, 0x36

    .line 722
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 721
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 720
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_HITCH_COCK_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v5, 0x32

    .line 725
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 724
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 723
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_RAW_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/4 v5, -0x3

    .line 728
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 727
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 726
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_PHANTOM_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    const/16 v5, 0x2f

    .line 731
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 730
    invoke-static {v2}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 729
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_WECHAT_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Integer;

    sget v5, Lcn/nubia/gallery3d/util/MediaSetUtils;->WECHAT_BUCKET_ID:I

    .line 733
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    sget v5, Lcn/nubia/gallery3d/util/MediaSetUtils;->WEIXIN_BUCKET_ID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v2, v7

    sget v5, Lcn/nubia/gallery3d/util/MediaSetUtils;->WECHAT_PICTURES_BUCKET_ID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 732
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_SCREENSHOTS_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Integer;

    sget v3, Lcn/nubia/gallery3d/util/MediaSetUtils;->PRINTSCREEN_BUCKET_ID:I

    .line 735
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    sget v3, Lcn/nubia/gallery3d/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    sget v3, Lcn/nubia/gallery3d/util/MediaSetUtils;->REDMAGIC_TIME_SNAPSHOT_BUCKET_ID:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 734
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static initMergedBucketIds()V
    .locals 1

    const/16 v0, 0x1d

    .line 574
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_CLONE_BUCKET_ID:I

    const/16 v0, 0x17

    .line 575
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_DEMISTER_BUCKET_ID:I

    const/16 v0, 0x1b

    .line 576
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_DNG_BUCKET_ID:I

    const/4 v0, 0x2

    .line 577
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_ELECTRONICFNO_BUCKET_ID:I

    const/16 v0, 0x16

    .line 578
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_FRONT_BUCKET_ID:I

    const/4 v0, 0x5

    .line 579
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_INTERVALOMETER_BUCKET_ID:I

    const/16 v0, 0x8

    .line 580
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_LIGHTDRAW_BUCKET_ID:I

    const/16 v0, 0x21

    .line 581
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MACROCAMERA_BUCKET_ID:I

    const/16 v0, 0x20

    .line 582
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MONO_BUCKET_ID:I

    const/4 v0, 0x6

    .line 583
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MULTIEXPOSURE_BUCKET_ID:I

    const/4 v0, -0x2

    .line 584
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MULTISHOOT_BUCKET_ID:I

    const/16 v0, 0xc

    .line 585
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_OBJECTCLEAR_BUCKET_ID:I

    const/16 v0, 0xa

    .line 586
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PANO_BUCKET_ID:I

    const/4 v0, 0x3

    .line 587
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_SLOWSHUTTER_BUCKET_ID:I

    const/16 v0, 0x11

    .line 588
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_STARCLOUD_BUCKET_ID:I

    const/16 v0, 0xd

    .line 589
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_STARTRAIL_BUCKET_ID:I

    const/4 v0, 0x7

    .line 590
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_TRAJECTORY_BUCKET_ID:I

    const/16 v0, 0x12

    .line 591
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_VIDEO_BUCKET_ID:I

    const/16 v0, 0x15

    .line 592
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_SLOMOVIDEO_BUCKET_ID:I

    const/16 v0, 0x9

    .line 593
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_VIDEOMAKER_BUCKET_ID:I

    const/16 v0, 0x24

    .line 594
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_BIGAPERTURE_BUCKET_ID:I

    const/16 v0, 0x18

    .line 595
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PORTRAIT_BUCKET_ID:I

    const/16 v0, 0x25

    .line 596
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_IMAGE3D_BUCKET_ID:I

    const/16 v0, 0x26

    .line 597
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_ZOOMBLUR_BUCKET_ID:I

    const/16 v0, 0x28

    .line 598
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PHOTO3D_BUCKET_ID:I

    const/16 v0, 0x29

    .line 599
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PRISMA_BUCKET_ID:I

    const/16 v0, 0x2d

    .line 600
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_IDPHOTO_BUCKET_ID:I

    const/16 v0, 0x30

    .line 601
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_SLOWVIDEO_BUCKET_ID:I

    const/16 v0, 0x1c

    .line 602
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_FREEZE_VIDEO_BUCKET_ID:I

    const/16 v0, 0x34

    .line 603
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MUTIL_CAMERA_BUCKET_ID:I

    const/16 v0, 0x35

    .line 604
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_STAR_SKY_BUCKET_ID:I

    const/16 v0, 0x36

    .line 605
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_MOON_BUCKET_ID:I

    const/16 v0, 0x32

    .line 606
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_HITCH_COCK_BUCKET_ID:I

    const/16 v0, 0x31

    .line 607
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_VLOG_BUCKET_ID:I

    const/4 v0, -0x3

    .line 608
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_RAW_BUCKET_ID:I

    const/16 v0, 0x2f

    .line 609
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->generateMergedBucketId(I)I

    move-result v0

    sput v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_PHANTOM_BUCKET_ID:I

    return-void
.end method

.method private static initNoBelongSystemBucketIds()V
    .locals 2

    .line 546
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->NOT_BELONG_NO_SYSTEM_BUCKET_IDS:Ljava/util/List;

    const-string v1, "/DCIM/Camera"

    .line 547
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 548
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->NOT_BELONG_NO_SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget-object v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->SYSTEM_BUCKET_INDEX:[I

    .line 549
    invoke-static {v1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getBucketNames([I)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 550
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->NOT_BELONG_NO_SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->NOT_BELONG_NO_SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->PRINTSCREEN_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->NOT_BELONG_NO_SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->REDMAGIC_TIME_SNAPSHOT_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->NOT_BELONG_NO_SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->NUBIA_TRANSFER_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->NOT_BELONG_NO_SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->SCREEN_RECORDER_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->NOT_BELONG_NO_SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->CJZC_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->NOT_BELONG_NO_SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->WZRY_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->NOT_BELONG_NO_SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->PUBGMOBILE_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->NOT_BELONG_NO_SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->BLZY_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->NOT_BELONG_NO_SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->CJZC_MARVELLOUS_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->NOT_BELONG_NO_SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->WZRY_MARVELLOUS_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->NOT_BELONG_NO_SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->PUBGMOBILE_MARVELLOUS_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->NOT_BELONG_NO_SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->BLZY_MARVELLOUS_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->NOT_BELONG_NO_SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MANUAL_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->NOT_BELONG_NO_SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget-object v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_FAMILY_INDEX:[I

    .line 565
    invoke-static {v1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getBucketNames([I)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static initSystemBucketIds()V
    .locals 2

    .line 763
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->SYSTEM_BUCKET_IDS:Ljava/util/List;

    const-string v1, "/DCIM/Camera"

    .line 764
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 765
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget-object v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->SYSTEM_BUCKET_INDEX:[I

    .line 766
    invoke-static {v1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getBucketNames([I)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 767
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->SNAPSHOT_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->PRINTSCREEN_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->REDMAGIC_TIME_SNAPSHOT_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->NUBIA_TRANSFER_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->SCREEN_RECORDER_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->CJZC_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->WZRY_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 774
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->PUBGMOBILE_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->BLZY_BUCKET_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 776
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->CJZC_MARVELLOUS_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 777
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->WZRY_MARVELLOUS_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->PUBGMOBILE_MARVELLOUS_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->BLZY_MARVELLOUS_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->SYSTEM_BUCKET_IDS:Ljava/util/List;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MANUAL_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static initonlyCameraBuketIds()V
    .locals 2

    .line 759
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->ONLY_CAMERA_BUCKET_IDS:Ljava/util/List;

    .line 760
    sget-object v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_FAMILY_INDEX:[I

    invoke-static {v1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getBucketNames([I)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getExternalAndSdCardBucketIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static final isBucketCannotBeAdd(I)Z
    .locals 1

    .line 1067
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->RECYCLED_BUCKET_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MARK_BUCKET_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_SCREENSHOTS_BUCKET_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->NUBIA_TRANSFER_BUCKET_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->SCREEN_RECORDER_BUCKET_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->FACE_ALBUM_SET_BUCKET_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->LOCATION_ALBUM_SET_BUCKET_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->THINGS_ALBUM_SET_BUCKET_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CJZC_BUCKET_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->WZRY_BUCKET_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->PUBGMOBILE_BUCKET_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->BLZY_BUCKET_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CJZC_MARVELLOUS_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->WZRY_MARVELLOUS_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->PUBGMOBILE_MARVELLOUS_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->BLZY_MARVELLOUS_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MANUAL_ID:I

    if-eq p0, v0, :cond_1

    .line 1083
    invoke-static {p0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->isCameraAlbum(I)Z

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

.method public static final isBucketCannotBeSelected(I)Z
    .locals 1

    .line 1059
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->RECYCLED_BUCKET_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->NOTSYSTEM_ALBUM_SET_BUCKET_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->FACE_ALBUM_SET_BUCKET_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->LOCATION_ALBUM_SET_BUCKET_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->THINGS_ALBUM_SET_BUCKET_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->COLLECTION:I

    if-ne p0, v0, :cond_0

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

.method public static final isBucketCannotBeShifted(I)Z
    .locals 1

    .line 1087
    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MARK_BUCKET_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_SCREENSHOTS_BUCKET_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->NUBIA_TRANSFER_BUCKET_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->SCREEN_RECORDER_BUCKET_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->FACE_ALBUM_SET_BUCKET_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->LOCATION_ALBUM_SET_BUCKET_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->THINGS_ALBUM_SET_BUCKET_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CJZC_BUCKET_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->WZRY_BUCKET_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->PUBGMOBILE_BUCKET_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->BLZY_BUCKET_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CJZC_MARVELLOUS_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->WZRY_MARVELLOUS_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->PUBGMOBILE_MARVELLOUS_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->BLZY_MARVELLOUS_ID:I

    if-eq p0, v0, :cond_1

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MANUAL_ID:I

    if-eq p0, v0, :cond_1

    .line 1102
    invoke-static {p0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->isCameraAlbum(I)Z

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

.method public static final isCameraAlbum(I)Z
    .locals 2

    .line 1055
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_WECHAT_BUCKET_ID:I

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isChinese(Landroid/content/Context;)Z
    .locals 1

    .line 461
    invoke-static {p0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "zh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isMergedAlbum(I)Z
    .locals 1

    .line 1051
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_BUCKET_IDS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static queryCameraBucketInfo(Landroid/content/Context;)V
    .locals 10

    .line 408
    invoke-static {p0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getCameraAlbumQueryCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, -0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_2

    .line 413
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 414
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 416
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 418
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    .line 419
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 420
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 421
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    sget-object v9, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    invoke-virtual {v9, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 424
    sget-object v8, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v8, v7, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eq v7, v2, :cond_0

    if-eq v7, v1, :cond_0

    .line 427
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_NAMES:Ljava/util/List;

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_NAMES:Ljava/util/List;

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 432
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 433
    throw p0

    :cond_2
    const-string v0, "MediaSetUtils"

    const-string v5, "queryCameraBucketInfo failed,CameraContentPorivder can\'t query"

    .line 435
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-static {p0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->isChinese(Landroid/content/Context;)Z

    move-result p0

    .line 437
    :goto_1
    sget-object v0, Lcn/nubia/gallery3d/util/CameraQueryUtil;->ALBUM_INDEX:[I

    array-length v0, v0

    if-ge v3, v0, :cond_5

    if-eqz p0, :cond_3

    .line 439
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->ALBUM_NAME_CN:[Ljava/lang/String;

    aget-object v0, v0, v3

    goto :goto_2

    .line 441
    :cond_3
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->ALBUM_NAME_EN:[Ljava/lang/String;

    aget-object v0, v0, v3

    .line 443
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/DCIM/Camera/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcn/nubia/gallery3d/util/MediaSetUtils;->ALBUM_PATH_CN:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 444
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcn/nubia/gallery3d/util/MediaSetUtils;->ALBUM_PATH_EN:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 445
    sget-object v7, Lcn/nubia/gallery3d/util/CameraQueryUtil;->ALBUM_INDEX:[I

    aget v7, v7, v3

    .line 446
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 447
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    sget-object v9, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    invoke-virtual {v9, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 450
    sget-object v8, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v8, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eq v7, v2, :cond_4

    if-eq v7, v1, :cond_4

    .line 453
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_NAMES:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_NAMES:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    return-void
.end method

.method public static reloadCameraAlbumNames(Landroid/content/Context;)V
    .locals 5

    .line 475
    invoke-static {p0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getCameraAlbumQueryCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 480
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 481
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x3

    .line 482
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 484
    sget-object v4, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 488
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 489
    throw p0

    :cond_2
    const-string v0, "MediaSetUtils"

    const-string v3, "reloadCameraAlbumNames failed,,CameraContentPorivder can\'t query"

    .line 491
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-static {p0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->isChinese(Landroid/content/Context;)Z

    move-result p0

    .line 493
    :goto_1
    sget-object v0, Lcn/nubia/gallery3d/util/CameraQueryUtil;->ALBUM_INDEX:[I

    array-length v0, v0

    if-ge v2, v0, :cond_5

    if-eqz p0, :cond_3

    .line 495
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->ALBUM_NAME_CN:[Ljava/lang/String;

    aget-object v0, v0, v2

    goto :goto_2

    .line 497
    :cond_3
    sget-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->ALBUM_NAME_EN:[Ljava/lang/String;

    aget-object v0, v0, v2

    .line 499
    :goto_2
    sget-object v3, Lcn/nubia/gallery3d/util/CameraQueryUtil;->ALBUM_INDEX:[I

    aget v3, v3, v2

    if-eq v3, v1, :cond_4

    .line 501
    sget-object v4, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    return-void
.end method

.method public static reloadThingsAlbumNames(Landroid/content/Context;)V
    .locals 3

    .line 508
    invoke-static {p0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getThingsAlbumLabelCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 513
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "group_name"

    .line 514
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "group_name_text"

    .line 515
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 516
    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->THINGS_ALBUM_NAMES:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 519
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 520
    throw v0

    .line 522
    :cond_1
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->THINGS_ALBUM_NAMES:Ljava/util/Map;

    const-string v0, "text"

    const-string v1, "\u6587\u672c"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->THINGS_ALBUM_NAMES:Ljava/util/Map;

    const-string v0, "animal"

    const-string v1, "\u52a8\u7269"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->THINGS_ALBUM_NAMES:Ljava/util/Map;

    const-string v0, "flower"

    const-string v1, "\u82b1\u6735"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->THINGS_ALBUM_NAMES:Ljava/util/Map;

    const-string v0, "scenery"

    const-string v1, "\u98ce\u666f"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object p0, Lcn/nubia/gallery3d/util/MediaSetUtils;->THINGS_ALBUM_NAMES:Ljava/util/Map;

    const-string v0, "food"

    const-string v1, "\u7f8e\u98df"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public static setup(Landroid/content/Context;)V
    .locals 2

    .line 394
    invoke-static {p0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getSdcardStorage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->PATH_SDCARD:Ljava/lang/String;

    .line 395
    invoke-static {}, Lcn/nubia/improve/ApiHelper;->getOtgStoragePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->PATH_OTG:Ljava/lang/String;

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PATH_SDCARD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->PATH_SDCARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,PATH_OTG="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->PATH_OTG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSetUtils"

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_NAMES:Ljava/util/List;

    .line 398
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_NAMES:Landroid/util/SparseArray;

    .line 399
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->CAMERA_ALBUM_PATHS:Landroid/util/SparseArray;

    .line 400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/gallery3d/util/MediaSetUtils;->THINGS_ALBUM_NAMES:Ljava/util/Map;

    .line 402
    invoke-static {p0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->queryCameraBucketInfo(Landroid/content/Context;)V

    .line 403
    invoke-static {p0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->reloadThingsAlbumNames(Landroid/content/Context;)V

    .line 404
    invoke-static {}, Lcn/nubia/gallery3d/util/MediaSetUtils;->initBucketIds()V

    return-void
.end method
