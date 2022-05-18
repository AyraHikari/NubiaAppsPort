.class public Lcn/nubia/gallery3d/video/VideoUtils;
.super Ljava/lang/Object;
.source "VideoUtils.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x100000

.field private static final HAS_MEDIA_MUXER:Z

.field public static final MIN_MUTE_SLOMOVIDEO_FRAMERATE:I = 0x5a

.field public static MTK_PLATFORM_START_WITHS:Ljava/lang/String; = null

.field public static QCOM_PLATFORM_START_WITHS:Ljava/lang/String; = null

.field public static final SLOMOVIDEO:I = -0x55c1aa49

.field public static final SLOMOVIDEO_TRIM:I = -0x55c1aa48

.field private static final TAG:Ljava/lang/String; = "VideoUtils"

.field public static localPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcn/nubia/gallery3d/video/VideoUtils;->HAS_MEDIA_MUXER:Z

    const-string v0, "mt"

    .line 74
    sput-object v0, Lcn/nubia/gallery3d/video/VideoUtils;->MTK_PLATFORM_START_WITHS:Ljava/lang/String;

    const-string v0, "msm"

    .line 75
    sput-object v0, Lcn/nubia/gallery3d/video/VideoUtils;->QCOM_PLATFORM_START_WITHS:Ljava/lang/String;

    .line 76
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/video/VideoUtils;->localPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsNubiaVideo(Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "."

    .line 410
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 412
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_4

    const-string v2, ".mp4"

    .line 415
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    .line 417
    :cond_2
    sget-object v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->PATH_EXTERNAL:Ljava/lang/String;

    .line 418
    sget-object v2, Lcn/nubia/gallery3d/util/MediaSetUtils;->PATH_SDCARD:Ljava/lang/String;

    .line 419
    sget-object v3, Lcn/nubia/gallery3d/util/MediaSetUtils;->PATH_OTG:Ljava/lang/String;

    .line 421
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/DCIM/Camera/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/PhotoEditor/Animation/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 422
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/Pictures/Screen Recorder/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 423
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/\u7ea2\u9b54\u65f6\u523b/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 424
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/\u7cbe\u5f69\u65f6\u523b/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 425
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 426
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "/PhotoEditor/Animation//"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 427
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 428
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 430
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 431
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Pictures/Screenshots/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 432
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_0
    return v0
.end method

.method public static clearPref(Landroid/content/Context;)V
    .locals 2

    .line 455
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 454
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 456
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 457
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 458
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static correctTimeToSyncSample(Lcom/googlecode/mp4parser/authoring/Track;DZ)D
    .locals 16

    .line 374
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [D

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-wide v8, v2

    move v7, v4

    .line 377
    :goto_0
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_2

    .line 378
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    move v11, v4

    :goto_1
    int-to-long v12, v11

    .line 379
    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-gez v12, :cond_1

    .line 380
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v12

    const-wide/16 v13, 0x1

    add-long/2addr v5, v13

    invoke-static {v12, v5, v6}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v12

    if-ltz v12, :cond_0

    .line 384
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v12

    invoke-static {v12, v5, v6}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v12

    aput-wide v8, v1, v12

    .line 386
    :cond_0
    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v12

    long-to-double v12, v12

    .line 387
    invoke-interface/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v14

    invoke-virtual {v14}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v14

    long-to-double v14, v14

    div-double/2addr v12, v14

    add-double/2addr v8, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v4, v0, :cond_5

    .line 392
    aget-wide v5, v1, v4

    cmpl-double v7, v5, p1

    if-lez v7, :cond_4

    if-eqz p3, :cond_3

    return-wide v5

    :cond_3
    return-wide v2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    move-wide v2, v5

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 402
    aget-wide v0, v1, v0

    return-wide v0
.end method

.method private static genVideoUsingMuxer(Ljava/lang/String;Ljava/lang/String;IIZZ)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 128
    new-instance v3, Landroid/media/MediaExtractor;

    invoke-direct {v3}, Landroid/media/MediaExtractor;-><init>()V

    .line 129
    invoke-virtual {v3, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v4

    .line 134
    new-instance v5, Landroid/media/MediaMuxer;

    const/4 v6, 0x0

    move-object/from16 v7, p1

    invoke-direct {v5, v7, v6}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    move v8, v6

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    :goto_0
    if-ge v8, v4, :cond_3

    .line 142
    invoke-virtual {v3, v8}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v12

    const-string v13, "mime"

    .line 143
    invoke-virtual {v12, v13}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "audio/"

    .line 146
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    if-eqz p4, :cond_0

    move v10, v8

    goto :goto_1

    :cond_0
    const-string v14, "video/"

    .line 148
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    if-eqz p5, :cond_1

    move v11, v8

    :cond_1
    :goto_1
    const-string v13, "max-input-size"

    .line 152
    invoke-virtual {v12, v13}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 153
    invoke-virtual {v12, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v12

    if-le v12, v9, :cond_2

    move v9, v12

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    if-gez v9, :cond_4

    const/high16 v9, 0x100000

    .line 163
    :cond_4
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 164
    invoke-virtual {v4, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v0, 0x18

    .line 166
    invoke-virtual {v4, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 168
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_5

    .line 170
    invoke-virtual {v5, v0}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 185
    :cond_5
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 186
    new-instance v8, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v8}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    if-ltz v11, :cond_6

    .line 189
    invoke-virtual {v3, v11}, Landroid/media/MediaExtractor;->selectTrack(I)V

    :cond_6
    if-ltz v10, :cond_7

    .line 192
    invoke-virtual {v3, v10}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    :cond_7
    const/4 v9, 0x2

    if-ltz v1, :cond_8

    mul-int/lit16 v12, v1, 0x3e8

    int-to-long v12, v12

    .line 196
    invoke-virtual {v3, v12, v13, v9}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 199
    :cond_8
    invoke-virtual {v3, v0, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v12

    const-string v15, "VideoUtils"

    if-ltz v12, :cond_9

    .line 200
    invoke-virtual {v3, v11}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v12

    .line 201
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v13

    .line 202
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sniff fvs@"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    const/4 v12, -0x1

    const-wide/16 v13, -0x1

    :goto_2
    if-ltz v11, :cond_a

    .line 207
    invoke-virtual {v3, v11}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    :cond_a
    if-ltz v10, :cond_b

    .line 210
    invoke-virtual {v3, v10}, Landroid/media/MediaExtractor;->selectTrack(I)V

    :cond_b
    const-wide/16 v6, 0x0

    if-ltz v1, :cond_d

    cmp-long v17, v13, v6

    if-ltz v17, :cond_c

    .line 216
    invoke-virtual {v3, v13, v14, v9}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_3

    :cond_c
    const-string v6, "video not found,try only audio"

    .line 219
    invoke-static {v15, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v6, v1

    .line 220
    invoke-virtual {v3, v6, v7, v9}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :cond_d
    :goto_3
    const/4 v1, 0x0

    .line 224
    invoke-virtual {v3, v0, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v6

    if-ltz v6, :cond_e

    .line 225
    invoke-virtual {v3, v10}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v7

    move v1, v10

    .line 226
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    .line 227
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v7

    const-string v7, "sniff fas@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v7, v16

    goto :goto_4

    :cond_e
    move v1, v10

    const/4 v7, -0x1

    const-wide/16 v9, -0x1

    :goto_4
    if-ltz v11, :cond_f

    .line 232
    :try_start_0
    invoke-virtual {v3, v11}, Landroid/media/MediaExtractor;->selectTrack(I)V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v11, v3

    goto/16 :goto_e

    :catch_0
    move-object v11, v3

    goto/16 :goto_c

    :cond_f
    :goto_5
    if-ltz v1, :cond_10

    .line 235
    invoke-virtual {v3, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    :cond_10
    const-wide/16 v17, 0x0

    cmp-long v6, v13, v17

    if-ltz v6, :cond_13

    if-ltz v6, :cond_11

    const/4 v6, 0x2

    .line 241
    invoke-virtual {v3, v13, v14, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_6

    :cond_11
    const/4 v6, 0x2

    cmp-long v16, v9, v17

    if-ltz v16, :cond_12

    .line 244
    invoke-virtual {v3, v9, v10, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_6

    :cond_12
    const-string v6, "can not be here"

    .line 246
    invoke-static {v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_13
    :goto_6
    invoke-virtual {v5}, Landroid/media/MediaMuxer;->start()V

    move/from16 v16, v7

    move-wide/from16 p0, v9

    const-wide/16 v6, -0x1

    const/4 v9, 0x0

    const-wide/16 v19, -0x1

    .line 251
    :goto_7
    iput v9, v8, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 252
    invoke-virtual {v3, v0, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v10

    iput v10, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 253
    iget v9, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-gez v9, :cond_14

    const-string v0, "Saw input EOS."

    .line 254
    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    .line 255
    iput v9, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_8

    .line 258
    :cond_14
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v9

    iput-wide v9, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    if-lez v2, :cond_15

    .line 259
    iget-wide v9, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 p4, v0

    move/from16 p2, v1

    int-to-long v0, v2

    const-wide/16 v21, 0x3e8

    mul-long v0, v0, v21

    cmp-long v0, v9, v0

    if-lez v0, :cond_16

    const-string v0, "The current sample is over the trim end time."

    .line 260
    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_15
    move-object/from16 p4, v0

    move/from16 p2, v1

    .line 263
    :cond_16
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v0

    iput v0, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 264
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v0

    .line 265
    iget v1, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v9, v1

    add-long v9, v17, v9

    const-wide v17, 0xf0a3d709L

    cmp-long v1, v9, v17

    if-lez v1, :cond_17

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File limit reached:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_8
    invoke-virtual {v5}, Landroid/media/MediaMuxer;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    invoke-virtual {v5}, Landroid/media/MediaMuxer;->release()V

    .line 298
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    goto/16 :goto_d

    :cond_17
    const-wide/16 v17, 0x1

    const-string v1, "/"

    if-ne v0, v11, :cond_19

    move-wide/from16 v21, v9

    .line 271
    :try_start_1
    iget-wide v9, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v9, v13

    iput-wide v9, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 272
    iget-wide v9, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v9, v6

    if-gez v0, :cond_18

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "not increase v@ "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v9, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-long v6, v6, v17

    .line 274
    iput-wide v6, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 276
    :cond_18
    iget-wide v0, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v9, p4

    .line 277
    invoke-virtual {v5, v12, v9, v8}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    move-wide/from16 v23, p0

    move-wide v6, v0

    move v0, v11

    move/from16 p0, v12

    move-wide/from16 p4, v13

    goto :goto_a

    :cond_19
    move-wide/from16 v21, v9

    move/from16 v10, p2

    move-object/from16 v9, p4

    if-ne v0, v10, :cond_1b

    move/from16 p2, v10

    move v0, v11

    .line 279
    iget-wide v10, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v23, p0

    sub-long v10, v10, v23

    iput-wide v10, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 280
    iget-wide v10, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move/from16 p0, v12

    move-wide/from16 p4, v13

    move-wide/from16 v12, v19

    cmp-long v10, v10, v12

    if-gez v10, :cond_1a

    .line 281
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "not increase a@ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v3

    :try_start_2
    iget-wide v2, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-long v1, v6, v17

    .line 282
    iput-wide v1, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_9

    :cond_1a
    move-object v11, v3

    .line 284
    :goto_9
    iget-wide v1, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move/from16 v3, v16

    .line 285
    invoke-virtual {v5, v3, v9, v8}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    move-wide/from16 v19, v1

    goto :goto_b

    :cond_1b
    move-wide/from16 v23, p0

    move/from16 p2, v10

    move v0, v11

    move/from16 p0, v12

    move-wide/from16 p4, v13

    move-wide/from16 v12, v19

    :goto_a
    move-object v11, v3

    move/from16 v3, v16

    .line 287
    :goto_b
    invoke-virtual {v11}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v12, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v13, p4

    move/from16 v16, v3

    move-object v3, v11

    move-wide/from16 v17, v21

    move-wide/from16 p0, v23

    move v11, v0

    move-object v0, v9

    const/4 v9, 0x0

    goto/16 :goto_7

    :catch_1
    :goto_c
    :try_start_3
    const-string v0, "The source video file is malformed"

    .line 295
    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 297
    invoke-virtual {v5}, Landroid/media/MediaMuxer;->release()V

    .line 298
    invoke-virtual {v11}, Landroid/media/MediaExtractor;->release()V

    .line 299
    :goto_d
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void

    :catchall_1
    move-exception v0

    .line 297
    :goto_e
    invoke-virtual {v5}, Landroid/media/MediaMuxer;->release()V

    .line 298
    invoke-virtual {v11}, Landroid/media/MediaExtractor;->release()V

    .line 299
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 300
    throw v0
.end method

.method public static getIntPref(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2

    .line 440
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 439
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 441
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static setIntPref(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 446
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 445
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 447
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 448
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 450
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static startTrim(Ljava/io/File;Ljava/io/File;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    sget-boolean v0, Lcn/nubia/gallery3d/video/VideoUtils;->HAS_MEDIA_MUXER:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x1

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Lcn/nubia/gallery3d/video/VideoUtils;->genVideoUsingMuxer(Ljava/lang/String;Ljava/lang/String;IIZZ)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/gallery3d/video/VideoUtils;->trimUsingMp4Parser(Ljava/io/File;Ljava/io/File;II)V

    :goto_0
    return-void
.end method

.method private static trimUsingMp4Parser(Ljava/io/File;Ljava/io/File;II)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-static {v1}, Lcom/googlecode/mp4parser/authoring/container/mp4/MovieCreator;->build(Ljava/nio/channels/ReadableByteChannel;)Lcom/googlecode/mp4parser/authoring/Movie;

    move-result-object v1

    .line 310
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/Movie;->getTracks()Ljava/util/List;

    move-result-object v2

    .line 311
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/authoring/Movie;->setTracks(Ljava/util/List;)V

    move/from16 v3, p2

    .line 313
    div-int/lit16 v3, v3, 0x3e8

    int-to-double v3, v3

    move/from16 v5, p3

    .line 314
    div-int/lit16 v5, v5, 0x3e8

    int-to-double v5, v5

    .line 321
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    move v9, v8

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/googlecode/mp4parser/authoring/Track;

    .line 322
    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v11

    const/4 v12, 0x1

    if-eqz v11, :cond_0

    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v11

    array-length v11, v11

    if-lez v11, :cond_0

    if-nez v9, :cond_1

    .line 332
    invoke-static {v10, v3, v4, v8}, Lcn/nubia/gallery3d/video/VideoUtils;->correctTimeToSyncSample(Lcom/googlecode/mp4parser/authoring/Track;DZ)D

    move-result-wide v3

    .line 333
    invoke-static {v10, v5, v6, v12}, Lcn/nubia/gallery3d/video/VideoUtils;->correctTimeToSyncSample(Lcom/googlecode/mp4parser/authoring/Track;DZ)D

    move-result-wide v5

    move v9, v12

    goto :goto_0

    .line 329
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The startTime has already been corrected by another track with SyncSample. Not Supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lcom/googlecode/mp4parser/authoring/Track;

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, -0x1

    move v7, v8

    move-wide/from16 v17, v13

    move-wide v13, v11

    move-wide v11, v15

    .line 344
    :goto_2
    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_6

    .line 345
    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Track;->getDecodingTimeEntries()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    move-wide/from16 p2, v11

    :goto_3
    int-to-long v11, v8

    .line 346
    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v19

    cmp-long v11, v11, v19

    if-gez v11, :cond_5

    cmpg-double v11, v17, v3

    if-gtz v11, :cond_3

    move-wide v11, v13

    goto :goto_4

    :cond_3
    move-wide/from16 v11, p2

    :goto_4
    cmpg-double v19, v17, v5

    if-gtz v19, :cond_4

    move-wide/from16 v19, v3

    move-object v4, v2

    .line 362
    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v2

    long-to-double v2, v2

    .line 363
    invoke-interface {v10}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v15

    move-wide/from16 v21, v5

    move-object v6, v4

    invoke-virtual {v15}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->getTimescale()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    add-double v17, v17, v2

    const-wide/16 v2, 0x1

    add-long/2addr v2, v13

    add-int/lit8 v8, v8, 0x1

    move-wide/from16 p2, v11

    move-wide v15, v13

    move-wide v13, v2

    move-object v2, v6

    move-wide/from16 v3, v19

    move-wide/from16 v5, v21

    goto :goto_3

    :cond_4
    move-wide/from16 v19, v3

    move-wide/from16 v21, v5

    move-object v6, v2

    goto :goto_5

    :cond_5
    move-wide/from16 v19, v3

    move-wide/from16 v21, v5

    move-object v6, v2

    move-wide/from16 v11, p2

    :goto_5
    add-int/lit8 v7, v7, 0x1

    move-object v2, v6

    move-wide/from16 v3, v19

    move-wide/from16 v5, v21

    const/4 v8, 0x0

    goto :goto_2

    :cond_6
    move-wide/from16 v19, v3

    move-wide/from16 v21, v5

    move-object v6, v2

    .line 367
    new-instance v2, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;

    move-object v9, v2

    move-wide v13, v15

    invoke-direct/range {v9 .. v14}, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;-><init>(Lcom/googlecode/mp4parser/authoring/Track;JJ)V

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/authoring/Movie;->addTrack(Lcom/googlecode/mp4parser/authoring/Track;)V

    move-object v2, v6

    move-wide/from16 v5, v21

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v2, p1

    .line 369
    invoke-static {v2, v1}, Lcn/nubia/gallery3d/video/VideoUtils;->writeMovieIntoFile(Ljava/io/File;Lcom/googlecode/mp4parser/authoring/Movie;)V

    .line 370
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method private static writeMovieIntoFile(Ljava/io/File;Lcom/googlecode/mp4parser/authoring/Movie;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 95
    :cond_0
    new-instance v0, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/authoring/builder/DefaultMp4Builder;->build(Lcom/googlecode/mp4parser/authoring/Movie;)Lcom/coremedia/iso/IsoFile;

    move-result-object p1

    .line 96
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 97
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    .line 98
    invoke-virtual {p1, p0}, Lcom/coremedia/iso/IsoFile;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 100
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V

    .line 101
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method
