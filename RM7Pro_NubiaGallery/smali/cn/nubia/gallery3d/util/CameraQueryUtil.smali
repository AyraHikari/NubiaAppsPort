.class public Lcn/nubia/gallery3d/util/CameraQueryUtil;
.super Ljava/lang/Object;
.source "CameraQueryUtil.java"


# static fields
.field public static ALBUM_INDEX:[I = null

.field public static final COLUMN_INDEX_ALBUM_INDEX:I = 0x3

.field public static final COLUMN_INDEX_ALBUM_NAME:I = 0x0

.field public static final COLUMN_INDEX_ALBUM_PATH_CN:I = 0x2

.field public static final COLUMN_INDEX_ALBUM_PATH_EN:I = 0x1

.field public static final COLUMN_THING_LABEL:Ljava/lang/String; = "group_name"

.field public static final COLUMN_THING_LABEL_CN:Ljava/lang/String; = "group_name_text"

.field public static final CONTENT_CAMERA_ALBUMS:Landroid/net/Uri;

.field public static final CONTENT_CAMERA_THINGSALBUMS_LABEL:Landroid/net/Uri;

.field public static final INDEX_BIGAPERTURE:I = 0x24

.field public static final INDEX_CLONE:I = 0x1d

.field public static final INDEX_DEFAULT:I = -0x1

.field public static final INDEX_DEMISTER:I = 0x17

.field public static final INDEX_DNG:I = 0x1b

.field public static final INDEX_EFFECT:I = 0x4

.field public static final INDEX_ELETRONIC:I = 0x2

.field public static final INDEX_FREEZE_VIDEO:I = 0x1c

.field public static final INDEX_FRONT:I = 0x16

.field public static final INDEX_HITCH_COCK:I = 0x32

.field public static final INDEX_IDPHOTO:I = 0x2d

.field public static final INDEX_IMAGE3D:I = 0x25

.field public static final INDEX_INTERVALOMETER:I = 0x5

.field public static final INDEX_LIGHTDRAW:I = 0x8

.field public static final INDEX_MACROCAMERA:I = 0x21

.field public static final INDEX_MONO:I = 0x20

.field public static final INDEX_MOON:I = 0x36

.field public static final INDEX_MULTIEXPOSURE:I = 0x6

.field public static final INDEX_MULTISHOOT:I = -0x2

.field public static final INDEX_MUTIL_CAMERA:I = 0x34

.field public static final INDEX_OBJECTCLEAR:I = 0xc

.field public static final INDEX_PANORAMA:I = 0xa

.field public static final INDEX_PHANTOM:I = 0x2f

.field public static final INDEX_PHOTO3D:I = 0x28

.field public static final INDEX_PORTRAIT:I = 0x18

.field public static final INDEX_PRISMA:I = 0x29

.field public static final INDEX_RAW:I = -0x3

.field public static final INDEX_SLOWSHUTTER:I = 0x3

.field public static final INDEX_SLOWVIDEO:I = 0x30

.field public static final INDEX_STARCLOUD:I = 0x11

.field public static final INDEX_STARTRAIL:I = 0xd

.field public static final INDEX_STAR_SKY:I = 0x35

.field public static final INDEX_TRAJECTORY:I = 0x7

.field public static final INDEX_VIDEOMAKER:I = 0x9

.field public static final INDEX_VIDEO_RECORD:I = 0x12

.field public static final INDEX_VIDEO_SLOMO:I = 0x15

.field public static final INDEX_VLOG:I = 0x31

.field public static final INDEX_VR:I = 0x22

.field public static final INDEX_ZOOMBLUR:I = 0x26


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://nubia.camera.family/directory"

    .line 7
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/util/CameraQueryUtil;->CONTENT_CAMERA_ALBUMS:Landroid/net/Uri;

    const-string v0, "content://nubia.camera.family/labelgroup"

    .line 8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/util/CameraQueryUtil;->CONTENT_CAMERA_THINGSALBUMS_LABEL:Landroid/net/Uri;

    const/16 v0, 0x1f

    new-array v0, v0, [I

    .line 57
    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/gallery3d/util/CameraQueryUtil;->ALBUM_INDEX:[I

    return-void

    :array_0
    .array-data 4
        -0x2
        0x16
        0x18
        0x27
        0x1d
        0x1b
        0x2
        0x5
        0x8
        0x21
        0x6
        0xa
        0x3
        0xd
        0x7
        0x25
        0x15
        0x12
        0x9
        0x26
        0x29
        0x2d
        0x30
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

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
