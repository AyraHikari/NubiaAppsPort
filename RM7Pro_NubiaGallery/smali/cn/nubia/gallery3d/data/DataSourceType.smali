.class public final Lcn/nubia/gallery3d/data/DataSourceType;
.super Ljava/lang/Object;
.source "DataSourceType.java"


# static fields
.field public static final TYPE_BIGAPERTURE:I = 0x1b

.field public static final TYPE_CLONE:I = 0x13

.field public static final TYPE_CLOUDITEM:I = 0x1d

.field public static final TYPE_DNG:I = 0x14

.field public static final TYPE_DYNAMICPHOTO:I = 0xc

.field public static final TYPE_ELECTRONICFNO:I = 0x11

.field public static final TYPE_FACE:I = 0x24

.field public static final TYPE_FREEVIDEO:I = 0x31

.field public static final TYPE_FRONT:I = 0x18

.field public static final TYPE_HITCOCK:I = 0x2e

.field public static final TYPE_IDPHOTO:I = 0x27

.field public static final TYPE_IMAGE3D:I = 0x1e

.field public static final TYPE_INTERVALOMETER:I = 0xb

.field public static final TYPE_LIGHTDRAW:I = 0x15

.field public static final TYPE_LIKE:I = 0xe

.field public static final TYPE_LOCATION:I = 0x25

.field public static final TYPE_MACROCAMERA:I = 0x19

.field public static final TYPE_MANUAL:I = 0x2b

.field public static final TYPE_MARVELLOUSTIME:I = 0x2a

.field public static final TYPE_MONO:I = 0x20

.field public static final TYPE_MOON:I = 0x2d

.field public static final TYPE_MULTICAMERA:I = 0x30

.field public static final TYPE_MULTIEXPOSURE:I = 0x12

.field public static final TYPE_MULTISHOOT:I = 0x8

.field public static final TYPE_NEWFOLDER:I = 0x1c

.field public static final TYPE_NOT_CATEGORIZED:I = 0x0

.field public static final TYPE_PANORAMA:I = 0x9

.field public static final TYPE_PHANTOM:I = 0x33

.field public static final TYPE_PHOTO3D:I = 0x21

.field public static final TYPE_PICASA:I = 0x2

.field public static final TYPE_PORTRAIT:I = 0x22

.field public static final TYPE_PRISMA:I = 0x23

.field public static final TYPE_RAW:I = 0x32

.field public static final TYPE_READMAGICTIME:I = 0x29

.field public static final TYPE_RECYCLED:I = 0x5

.field public static final TYPE_SLOMOVIDEO:I = 0xa

.field public static final TYPE_SLOWSHUTTER:I = 0x17

.field public static final TYPE_SLOWVIDEO:I = 0x28

.field public static final TYPE_SNAPSHOT:I = 0x7

.field public static final TYPE_STARSKY:I = 0x2f

.field public static final TYPE_STARTRAIL:I = 0x16

.field public static final TYPE_THING:I = 0x26

.field public static final TYPE_TRAJECTORY:I = 0xf

.field public static final TYPE_VIDEO:I = 0xd

.field public static final TYPE_VIDEOMAKER:I = 0x10

.field public static final TYPE_VLOG:I = 0x2c

.field public static final TYPE_ZOOMBLUR:I = 0x1f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getItemSourceType(Lcn/nubia/gallery3d/data/MediaItem;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 175
    :cond_0
    instance-of v1, p0, Lcn/nubia/gallery3d/data/MultiShootItem;

    if-eqz v1, :cond_1

    const/16 p0, 0x8

    return p0

    .line 177
    :cond_1
    instance-of v1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;

    if-eqz v1, :cond_b

    .line 178
    check-cast p0, Lcn/nubia/gallery3d/data/LocalMediaItem;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/LocalMediaItem;->getSourceType()I

    move-result v1

    if-eqz v1, :cond_2

    return v1

    .line 183
    :cond_2
    iget v1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->bucketId:I

    invoke-static {v1}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getMergedBucketId(I)I

    move-result v1

    .line 184
    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_SLOMOVIDEO_BUCKET_ID:I

    if-ne v1, v2, :cond_3

    const/16 p0, 0xa

    return p0

    .line 186
    :cond_3
    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_INTERVALOMETER_BUCKET_ID:I

    if-ne v1, v2, :cond_4

    const/16 p0, 0xb

    return p0

    .line 188
    :cond_4
    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_VIDEOMAKER_BUCKET_ID:I

    if-ne v1, v2, :cond_5

    const/16 p0, 0x10

    return p0

    .line 192
    :cond_5
    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PANO_BUCKET_ID:I

    if-ne v1, v2, :cond_6

    const/16 p0, 0x9

    return p0

    .line 194
    :cond_6
    iget v1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->bucketId:I

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CJZC_BUCKET_ID:I

    if-eq v1, v2, :cond_a

    iget v1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->bucketId:I

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->PUBGMOBILE_BUCKET_ID:I

    if-eq v1, v2, :cond_a

    iget v1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->bucketId:I

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->WZRY_BUCKET_ID:I

    if-eq v1, v2, :cond_a

    iget v1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->bucketId:I

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->BLZY_BUCKET_ID:I

    if-ne v1, v2, :cond_7

    goto :goto_1

    .line 197
    :cond_7
    iget v1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->bucketId:I

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CJZC_MARVELLOUS_ID:I

    if-eq v1, v2, :cond_9

    iget v1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->bucketId:I

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->PUBGMOBILE_MARVELLOUS_ID:I

    if-eq v1, v2, :cond_9

    iget v1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->bucketId:I

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->WZRY_MARVELLOUS_ID:I

    if-eq v1, v2, :cond_9

    iget v1, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->bucketId:I

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->BLZY_MARVELLOUS_ID:I

    if-ne v1, v2, :cond_8

    goto :goto_0

    .line 201
    :cond_8
    iget p0, p0, Lcn/nubia/gallery3d/data/LocalMediaItem;->bucketId:I

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MANUAL_ID:I

    if-ne p0, v1, :cond_b

    const/16 p0, 0x2b

    return p0

    :cond_9
    :goto_0
    const/16 p0, 0x2a

    return p0

    :cond_a
    :goto_1
    const/16 p0, 0x29

    return p0

    :cond_b
    return v0
.end method

.method public static identifySourceType(Lcn/nubia/gallery3d/data/MediaSet;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->RECYCLED_BUCKET_ID:I

    if-ne v1, v2, :cond_1

    const/4 p0, 0x5

    return p0

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_SCREENSHOTS_BUCKET_ID:I

    if-ne v1, v2, :cond_2

    const/4 p0, 0x7

    return p0

    .line 79
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MULTISHOOT_BUCKET_ID:I

    if-ne v1, v2, :cond_3

    const/16 p0, 0x8

    return p0

    .line 81
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PANO_BUCKET_ID:I

    if-ne v1, v2, :cond_4

    const/16 p0, 0x9

    return p0

    .line 83
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_SLOMOVIDEO_BUCKET_ID:I

    if-ne v1, v2, :cond_5

    const/16 p0, 0xa

    return p0

    .line 85
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_INTERVALOMETER_BUCKET_ID:I

    if-ne v1, v2, :cond_6

    const/16 p0, 0xb

    return p0

    .line 87
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_VIDEO_BUCKET_ID:I

    if-ne v1, v2, :cond_7

    const/16 p0, 0xd

    return p0

    .line 89
    :cond_7
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MARK_BUCKET_ID:I

    if-ne v1, v2, :cond_8

    const/16 p0, 0xe

    return p0

    .line 91
    :cond_8
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_CLONE_BUCKET_ID:I

    if-ne v1, v2, :cond_9

    const/16 p0, 0x13

    return p0

    .line 93
    :cond_9
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_DNG_BUCKET_ID:I

    if-ne v1, v2, :cond_a

    const/16 p0, 0x14

    return p0

    .line 95
    :cond_a
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_ELECTRONICFNO_BUCKET_ID:I

    if-ne v1, v2, :cond_b

    const/16 p0, 0x11

    return p0

    .line 97
    :cond_b
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_LIGHTDRAW_BUCKET_ID:I

    if-ne v1, v2, :cond_c

    const/16 p0, 0x15

    return p0

    .line 101
    :cond_c
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MULTIEXPOSURE_BUCKET_ID:I

    if-ne v1, v2, :cond_d

    const/16 p0, 0x12

    return p0

    .line 103
    :cond_d
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_TRAJECTORY_BUCKET_ID:I

    if-ne v1, v2, :cond_e

    const/16 p0, 0xf

    return p0

    .line 105
    :cond_e
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_VIDEOMAKER_BUCKET_ID:I

    if-ne v1, v2, :cond_f

    const/16 p0, 0x10

    return p0

    .line 107
    :cond_f
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_SLOWSHUTTER_BUCKET_ID:I

    if-ne v1, v2, :cond_10

    const/16 p0, 0x17

    return p0

    .line 109
    :cond_10
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_FRONT_BUCKET_ID:I

    if-ne v1, v2, :cond_11

    const/16 p0, 0x18

    return p0

    .line 111
    :cond_11
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->NEWFOLDER_BUCKET_ID:I

    if-ne v1, v2, :cond_12

    const/16 p0, 0x1c

    return p0

    .line 113
    :cond_12
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MACROCAMERA_BUCKET_ID:I

    if-ne v1, v2, :cond_13

    const/16 p0, 0x19

    return p0

    .line 115
    :cond_13
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_STARTRAIL_BUCKET_ID:I

    if-ne v1, v2, :cond_14

    const/16 p0, 0x16

    return p0

    .line 117
    :cond_14
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_IMAGE3D_BUCKET_ID:I

    if-ne v1, v2, :cond_15

    const/16 p0, 0x1e

    return p0

    .line 119
    :cond_15
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_ZOOMBLUR_BUCKET_ID:I

    if-ne v1, v2, :cond_16

    const/16 p0, 0x1f

    return p0

    .line 121
    :cond_16
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MONO_BUCKET_ID:I

    if-ne v1, v2, :cond_17

    const/16 p0, 0x20

    return p0

    .line 123
    :cond_17
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PHOTO3D_BUCKET_ID:I

    if-ne v1, v2, :cond_18

    const/16 p0, 0x21

    return p0

    .line 125
    :cond_18
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PORTRAIT_BUCKET_ID:I

    if-ne v1, v2, :cond_19

    const/16 p0, 0x22

    return p0

    .line 127
    :cond_19
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_PRISMA_BUCKET_ID:I

    if-ne v1, v2, :cond_1a

    const/16 p0, 0x23

    return p0

    .line 129
    :cond_1a
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_IDPHOTO_BUCKET_ID:I

    if-ne v1, v2, :cond_1b

    const/16 p0, 0x27

    return p0

    .line 131
    :cond_1b
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_SLOWVIDEO_BUCKET_ID:I

    if-ne v1, v2, :cond_1c

    const/16 p0, 0x28

    return p0

    .line 133
    :cond_1c
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->FACE_ALBUM_SET_BUCKET_ID:I

    if-ne v1, v2, :cond_1d

    const/16 p0, 0x24

    return p0

    .line 135
    :cond_1d
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->LOCATION_ALBUM_SET_BUCKET_ID:I

    if-ne v1, v2, :cond_1e

    const/16 p0, 0x25

    return p0

    .line 137
    :cond_1e
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->THINGS_ALBUM_SET_BUCKET_ID:I

    if-ne v1, v2, :cond_1f

    const/16 p0, 0x26

    return p0

    .line 139
    :cond_1f
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_VLOG_BUCKET_ID:I

    if-ne v1, v2, :cond_20

    const/16 p0, 0x2c

    return p0

    .line 141
    :cond_20
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_MUTIL_CAMERA_BUCKET_ID:I

    if-ne v1, v2, :cond_21

    const/16 p0, 0x30

    return p0

    .line 143
    :cond_21
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_STAR_SKY_BUCKET_ID:I

    if-ne v1, v2, :cond_22

    const/16 p0, 0x2f

    return p0

    .line 145
    :cond_22
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_MOON_BUCKET_ID:I

    if-ne v1, v2, :cond_23

    const/16 p0, 0x2d

    return p0

    .line 147
    :cond_23
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_HITCH_COCK_BUCKET_ID:I

    if-ne v1, v2, :cond_24

    const/16 p0, 0x2e

    return p0

    .line 149
    :cond_24
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_CAMERA_FREEZE_VIDEO_BUCKET_ID:I

    if-ne v1, v2, :cond_25

    const/16 p0, 0x31

    return p0

    .line 151
    :cond_25
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_RAW_BUCKET_ID:I

    if-ne v1, v2, :cond_26

    const/16 p0, 0x32

    return p0

    .line 153
    :cond_26
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->MERGED_PHANTOM_BUCKET_ID:I

    if-ne v1, v2, :cond_27

    const/16 p0, 0x33

    return p0

    .line 156
    :cond_27
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CJZC_BUCKET_ID:I

    if-eq v1, v2, :cond_2c

    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->PUBGMOBILE_BUCKET_ID:I

    if-eq v1, v2, :cond_2c

    .line 157
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->WZRY_BUCKET_ID:I

    if-eq v1, v2, :cond_2c

    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->BLZY_BUCKET_ID:I

    if-ne v1, v2, :cond_28

    goto :goto_1

    .line 160
    :cond_28
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->CJZC_MARVELLOUS_ID:I

    if-eq v1, v2, :cond_2b

    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->PUBGMOBILE_MARVELLOUS_ID:I

    if-eq v1, v2, :cond_2b

    .line 161
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->WZRY_MARVELLOUS_ID:I

    if-eq v1, v2, :cond_2b

    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v1

    sget v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->BLZY_MARVELLOUS_ID:I

    if-ne v1, v2, :cond_29

    goto :goto_0

    .line 164
    :cond_29
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result p0

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MANUAL_ID:I

    if-ne p0, v1, :cond_2a

    const/16 p0, 0x2b

    return p0

    :cond_2a
    return v0

    :cond_2b
    :goto_0
    const/16 p0, 0x2a

    return p0

    :cond_2c
    :goto_1
    const/16 p0, 0x29

    return p0
.end method
