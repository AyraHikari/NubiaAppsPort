.class public Lcn/nubia/music/utils/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field public static final AUDIO_EXTS:[Ljava/lang/String;

.field public static final BOOKMARK_EXT:Ljava/lang/String; = ".bmark"

.field public static final CUE_EXT:Ljava/lang/String; = ".cue"

.field public static final CUSTOM_PLAYLIST_EXT:Ljava/lang/String; = ".playlist"

.field public static final EXTENSION_SEPARATOR:C = '.'

.field public static final HASH_TYPE_MD5:Ljava/lang/String; = "MD5"

.field public static final HASH_TYPE_SHA1:Ljava/lang/String; = "SHA1"

.field public static final HASH_TYPE_SHA1_256:Ljava/lang/String; = "SHA-256"

.field public static final HASH_TYPE_SHA1_384:Ljava/lang/String; = "SHA-384"

.field public static final HASH_TYPE_SHA1_512:Ljava/lang/String; = "SHA-512"

.field public static final LOSSLESS_EXTS:[Ljava/lang/String;

.field public static final LOSS_EXTS:[Ljava/lang/String;

.field public static final ONE_GB:J = 0x40000000L

.field public static final ONE_KB:J = 0x400L

.field public static final ONE_MB:J = 0x100000L

.field public static final PLAYLIST_EXTS:[Ljava/lang/String;

.field public static hexChar:[C


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/music/utils/FileUtil;->hexChar:[C

    .line 46
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".flac"

    aput-object v1, v0, v3

    const-string v1, ".FLAC"

    aput-object v1, v0, v4

    const-string v1, ".ape"

    aput-object v1, v0, v5

    const-string v1, ".APE"

    aput-object v1, v0, v6

    const-string v1, ".wv"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, ".WV"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ".mpc"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ".MPC"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "m4a"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "M4A"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ".wav"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ".WAV"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, ".mp3"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, ".MP3"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, ".wma"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, ".WMA"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, ".ogg"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, ".OGG"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, ".3gpp"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, ".3GPP"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, ".aac"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, ".AAC"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/music/utils/FileUtil;->AUDIO_EXTS:[Ljava/lang/String;

    .line 53
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".flac"

    aput-object v1, v0, v3

    const-string v1, ".FLAC"

    aput-object v1, v0, v4

    const-string v1, ".ape"

    aput-object v1, v0, v5

    const-string v1, ".APE"

    aput-object v1, v0, v6

    const-string v1, ".wv"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, ".WV"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ".mpc"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ".MPC"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "m4a"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "M4A"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ".wav"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ".WAV"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/music/utils/FileUtil;->LOSSLESS_EXTS:[Ljava/lang/String;

    .line 58
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".mp3"

    aput-object v1, v0, v3

    const-string v1, ".MP3"

    aput-object v1, v0, v4

    const-string v1, ".wma"

    aput-object v1, v0, v5

    const-string v1, ".WMA"

    aput-object v1, v0, v6

    const-string v1, ".ogg"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, ".OGG"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ".3gpp"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ".3GPP"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ".aac"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ".AAC"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/music/utils/FileUtil;->LOSS_EXTS:[Ljava/lang/String;

    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".playlist"

    aput-object v1, v0, v3

    const-string v1, ".m3u"

    aput-object v1, v0, v4

    const-string v1, ".M3U"

    aput-object v1, v0, v5

    const-string v1, ".pls"

    aput-object v1, v0, v6

    const-string v1, ".PLS"

    aput-object v1, v0, v7

    sput-object v0, Lcn/nubia/music/utils/FileUtil;->PLAYLIST_EXTS:[Ljava/lang/String;

    return-void

    .line 41
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteCountToDisplaySize(J)Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/32 v8, 0x40000000

    const-wide/32 v6, 0x100000

    const-wide/16 v4, 0x400

    const-wide/16 v2, 0x0

    .line 188
    div-long v0, p0, v8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long v2, p0, v8

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " GB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    .line 191
    :cond_0
    div-long v0, p0, v6

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long v2, p0, v6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 194
    :cond_1
    div-long v0, p0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long v2, p0, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 197
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static checkDir(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 541
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    const/4 v0, 0x0

    .line 551
    :goto_0
    return v0

    .line 544
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 546
    const/4 v0, 0x1

    goto :goto_0

    .line 548
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 549
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 551
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    goto :goto_0
.end method

.method public static checkFile(Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 718
    if-nez p0, :cond_0

    .line 719
    const/4 v0, 0x0

    .line 729
    :goto_0
    return v0

    .line 721
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
    const/4 v0, 0x1

    goto :goto_0

    .line 724
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_2

    .line 725
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 727
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 729
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    goto :goto_0
.end method

.method public static checkPathInSDcard(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 765
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 770
    :cond_0
    :goto_0
    return v0

    .line 768
    :cond_1
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getExternalStorageMgr()Ljava/io/File;

    move-result-object v1

    .line 769
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 770
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getExternalStorageMgr()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 771
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkSDCardHasEnoughSpace(J)Z
    .locals 2

    .prologue
    .line 761
    invoke-static {}, Lcn/nubia/music/utils/FileUtil;->getSDCardAvailableSpace()J

    move-result-wide v0

    cmp-long v0, v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static clearDir(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 697
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 698
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 713
    :cond_0
    :goto_0
    return v0

    .line 701
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_5

    aget-object v5, v3, v1

    .line 702
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 701
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 705
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 706
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 708
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 709
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/music/utils/FileUtil;->clearDir(Ljava/lang/String;)Z

    goto :goto_2

    .line 712
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 713
    if-eqz v1, :cond_6

    array-length v1, v1

    if-nez v1, :cond_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static clearFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 326
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    :cond_0
    return-void

    .line 329
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 335
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 336
    invoke-virtual {v4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 337
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 334
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static clearFiles(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 343
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    :cond_0
    return-void

    .line 347
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 348
    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 351
    invoke-static {v0}, Lcn/nubia/music/utils/FileUtil;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 352
    invoke-static {v2}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 355
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 358
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static copyfile(Ljava/io/File;Ljava/io/File;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 82
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    .line 103
    :cond_2
    if-eqz v1, :cond_3

    .line 104
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 106
    :cond_3
    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 91
    :cond_4
    :try_start_1
    invoke-static {p1}, Lcn/nubia/music/utils/FileUtil;->checkFile(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_6

    .line 103
    if-eqz v1, :cond_5

    .line 104
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 106
    :cond_5
    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 94
    :cond_6
    :try_start_2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 103
    if-eqz v0, :cond_7

    .line 104
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 106
    :cond_7
    if-eqz v2, :cond_10

    .line 107
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    move-object v1, v2

    .line 110
    :cond_8
    :goto_1
    if-eqz v0, :cond_9

    .line 111
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 113
    :cond_9
    if-eqz v1, :cond_a

    .line 114
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 116
    :cond_a
    const/4 v0, 0x1

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 103
    :goto_2
    if-eqz v0, :cond_b

    .line 104
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 106
    :cond_b
    if-eqz v1, :cond_8

    .line 107
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    .line 98
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 103
    :goto_3
    if-eqz v0, :cond_c

    .line 104
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 106
    :cond_c
    if-eqz v1, :cond_8

    .line 107
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    .line 100
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 103
    :goto_4
    if-eqz v0, :cond_d

    .line 104
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 106
    :cond_d
    if-eqz v1, :cond_8

    .line 107
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    .line 103
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_e

    .line 104
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 106
    :cond_e
    if-eqz v1, :cond_f

    .line 107
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_f
    throw v0

    .line 103
    :catchall_1
    move-exception v2

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    goto :goto_5

    .line 100
    :catch_3
    move-exception v2

    goto :goto_4

    .line 98
    :catch_4
    move-exception v2

    goto :goto_3

    .line 96
    :catch_5
    move-exception v2

    goto :goto_2

    :cond_10
    move-object v1, v2

    goto :goto_1
.end method

.method public static createNewDirectory(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const/4 v0, 0x1

    .line 220
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    goto :goto_0
.end method

.method public static createNewDirectory(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 213
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/nubia/music/utils/FileUtil;->createNewDirectory(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static delAllFile(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 251
    .line 252
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 276
    :cond_0
    :goto_0
    return v0

    .line 256
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    move v2, v0

    move v1, v0

    .line 261
    :goto_1
    array-length v0, v3

    if-ge v2, v0, :cond_4

    .line 262
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 263
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 268
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 270
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v3, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/FileUtil;->delAllFile(Ljava/lang/String;)Z

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v3, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/FileUtil;->delDirectory(Ljava/lang/String;)V

    .line 273
    const/4 v0, 0x1

    .line 261
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 265
    :cond_3
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move v0, v1

    .line 276
    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method public static delDirectory(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 240
    :try_start_0
    invoke-static {p0}, Lcn/nubia/music/utils/FileUtil;->delAllFile(Ljava/lang/String;)Z

    .line 242
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 224
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v0

    .line 227
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 232
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0
.end method

.method public static filterFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x5f

    .line 734
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    :goto_0
    return-object p0

    .line 737
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 738
    const/16 v1, 0x22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 739
    const/16 v1, 0x27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 740
    const/16 v1, 0x5c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 741
    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 742
    const/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 743
    const/16 v1, 0x3e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 744
    const/16 v1, 0x7c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 745
    const/16 v1, 0x3f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 746
    const/16 v1, 0x3a

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 747
    const/16 v1, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 748
    const/16 v1, 0x2a

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getDirLength(Ljava/lang/String;)J
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    .line 555
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 570
    :cond_0
    return-wide v0

    .line 558
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 559
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 563
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 564
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 565
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 563
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 566
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 567
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/music/utils/FileUtil;->getDirLength(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_1
.end method

.method public static getDirLength(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    .line 574
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 589
    :cond_0
    return-wide v0

    .line 577
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 582
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 583
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 584
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 582
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 585
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 586
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcn/nubia/music/utils/FileUtil;->getDirLength(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_1
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 140
    if-nez p0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-object v0

    .line 143
    :cond_1
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 144
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 145
    const/16 v3, 0x5c

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 146
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 147
    if-gt v2, v1, :cond_0

    if-ltz v1, :cond_0

    .line 150
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFileLines(Ljava/io/File;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 513
    if-nez p0, :cond_0

    .line 537
    :goto_0
    return v1

    .line 516
    :cond_0
    const/4 v3, 0x0

    .line 519
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 520
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    if-eqz v3, :cond_1

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 529
    :cond_1
    if-eqz v2, :cond_2

    .line 531
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_2
    move v1, v0

    .line 537
    goto :goto_0

    .line 532
    :catch_0
    move-exception v1

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 523
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 524
    :goto_3
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 529
    if-eqz v2, :cond_4

    .line 531
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move v0, v1

    .line 534
    goto :goto_2

    .line 532
    :catch_2
    move-exception v0

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    move v0, v1

    .line 534
    goto :goto_2

    .line 526
    :catch_3
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    .line 527
    :goto_4
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 529
    if-eqz v3, :cond_2

    .line 531
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_2

    .line 532
    :catch_4
    move-exception v1

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 529
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v3, :cond_3

    .line 531
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 534
    :cond_3
    :goto_6
    throw v0

    .line 532
    :catch_5
    move-exception v1

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_6

    .line 529
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_5

    .line 526
    :catch_6
    move-exception v1

    move-object v3, v2

    goto :goto_4

    .line 523
    :catch_7
    move-exception v0

    goto/16 :goto_3

    :cond_4
    move v0, v1

    goto/16 :goto_2
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    if-nez p0, :cond_1

    .line 121
    const/4 p0, 0x0

    .line 129
    :cond_0
    :goto_0
    return-object p0

    .line 123
    :cond_1
    const-string v0, ""

    .line 124
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 125
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getFileNameNoPostfix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    if-nez p0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFilesByLastModified(Ljava/io/File;)[Ljava/io/File;
    .locals 4

    .prologue
    .line 641
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 642
    :cond_0
    const/4 v0, 0x0

    .line 658
    :goto_0
    return-object v0

    .line 644
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 645
    const-string v1, "java.util.Arrays.useLegacyMergeSort"

    const-string v2, "true"

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 647
    :try_start_0
    new-instance v1, Lcn/nubia/music/utils/FileUtil$1;

    invoke-direct {v1}, Lcn/nubia/music/utils/FileUtil$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 655
    :catch_0
    move-exception v1

    .line 656
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getFilesByLastModified(Ljava/io/File;Ljava/lang/String;)[Ljava/io/File;
    .locals 4

    .prologue
    .line 662
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 663
    :cond_0
    const/4 v0, 0x0

    .line 688
    :goto_0
    return-object v0

    .line 665
    :cond_1
    new-instance v0, Lcn/nubia/music/utils/FileUtil$2;

    invoke-direct {v0, p1}, Lcn/nubia/music/utils/FileUtil$2;-><init>(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 675
    const-string v1, "java.util.Arrays.useLegacyMergeSort"

    const-string v2, "true"

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 677
    :try_start_0
    new-instance v1, Lcn/nubia/music/utils/FileUtil$3;

    invoke-direct {v1}, Lcn/nubia/music/utils/FileUtil$3;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 685
    :catch_0
    move-exception v1

    .line 686
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 281
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 282
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 283
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 285
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    .line 286
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 289
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/FileUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    if-nez p0, :cond_0

    .line 183
    :goto_0
    return-object v0

    .line 172
    :cond_0
    const-string v0, ".3gp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    const-string v0, "video/3gpp"

    goto :goto_0

    .line 174
    :cond_1
    const-string v0, ".mid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    const-string v0, "audio/mid"

    goto :goto_0

    .line 176
    :cond_2
    const-string v0, ".mp3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    const-string v0, "audio/mpeg"

    goto :goto_0

    .line 178
    :cond_3
    const-string v0, ".xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 179
    const-string v0, "text/xml"

    goto :goto_0

    .line 181
    :cond_4
    const-string v0, ""

    goto :goto_0
.end method

.method public static getSDCardAvailableSpace()J
    .locals 4

    .prologue
    .line 753
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getExternalStorageMgr()Ljava/io/File;

    move-result-object v0

    .line 754
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 755
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 756
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 757
    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static isAudio(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 163
    invoke-static {p0}, Lcn/nubia/music/utils/FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDirectory(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFile(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLocal(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 154
    if-eqz p0, :cond_0

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLosslessSupported(Ljava/io/File;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 302
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    const-string v2, ".flac"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".FLAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 318
    :cond_0
    :goto_0
    return v0

    .line 306
    :cond_1
    const-string v2, ".ape"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".APE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 309
    const-string v2, ".wav"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".WAV"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 312
    const-string v2, ".wv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".WV"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 315
    const-string v2, ".mpc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".MPC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 318
    const-string v2, ".m4a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".M4A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLosslessSupported(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public static isMediaUri(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 73
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 74
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 75
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 76
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSDCardAvailable()Z
    .locals 2

    .prologue
    .line 692
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 693
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isVideo(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 158
    invoke-static {p0}, Lcn/nubia/music/utils/FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_0

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static listFiles(Ljava/lang/String;)[Ljava/io/File;
    .locals 2

    .prologue
    .line 501
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 503
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 506
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 509
    :goto_0
    return-object v0

    .line 507
    :catch_0
    move-exception v0

    .line 509
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readFileToString(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 470
    if-nez p0, :cond_0

    .line 471
    const-string v0, ""

    .line 497
    :goto_0
    return-object v0

    .line 473
    :cond_0
    const/4 v2, 0x0

    .line 474
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 476
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    const/16 v0, 0x400

    :try_start_1
    new-array v0, v0, [B

    .line 478
    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 479
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 480
    const/16 v0, 0x400

    new-array v0, v0, [B
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 489
    :cond_1
    if-eqz v1, :cond_2

    .line 491
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 497
    :cond_2
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 482
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 483
    :goto_3
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 489
    if-eqz v1, :cond_2

    .line 491
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 492
    :catch_2
    move-exception v0

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 484
    :catch_3
    move-exception v0

    move-object v1, v2

    .line 485
    :goto_4
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 489
    if-eqz v1, :cond_2

    .line 491
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 492
    :catch_4
    move-exception v0

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 486
    :catch_5
    move-exception v0

    move-object v1, v2

    .line 487
    :goto_5
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 489
    if-eqz v1, :cond_2

    .line 491
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_2

    .line 492
    :catch_6
    move-exception v0

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 489
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_6
    if-eqz v1, :cond_3

    .line 491
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 494
    :cond_3
    :goto_7
    throw v0

    .line 492
    :catch_7
    move-exception v1

    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_7

    .line 489
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 486
    :catch_8
    move-exception v0

    goto :goto_5

    .line 484
    :catch_9
    move-exception v0

    goto/16 :goto_4

    .line 482
    :catch_a
    move-exception v0

    goto/16 :goto_3
.end method

.method public static removeOldFiles(Ljava/lang/String;J)I
    .locals 13

    .prologue
    const-wide/16 v10, 0x0

    const/4 v0, 0x0

    .line 593
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    cmp-long v1, p1, v10

    if-gtz v1, :cond_1

    .line 613
    :cond_0
    return v0

    .line 596
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 597
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 600
    invoke-static {v1}, Lcn/nubia/music/utils/FileUtil;->getFilesByLastModified(Ljava/io/File;)[Ljava/io/File;

    move-result-object v4

    .line 603
    array-length v5, v4

    move v1, v0

    move-wide v2, p1

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, v4, v1

    .line 604
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 605
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 606
    add-int/lit8 v0, v0, 0x1

    .line 607
    sub-long/2addr v2, v8

    .line 608
    cmp-long v6, v2, v10

    if-lez v6, :cond_0

    .line 603
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static removeOldFiles(Ljava/lang/String;JLjava/lang/String;)I
    .locals 15

    .prologue
    const-wide/16 v12, 0x0

    const/4 v2, 0x0

    .line 617
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    cmp-long v3, p1, v12

    if-gtz v3, :cond_1

    .line 637
    :cond_0
    return v2

    .line 620
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 621
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 624
    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcn/nubia/music/utils/FileUtil;->getFilesByLastModified(Ljava/io/File;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    .line 627
    array-length v7, v6

    move v3, v2

    move-wide/from16 v4, p1

    :goto_0
    if-ge v3, v7, :cond_0

    aget-object v8, v6, v3

    .line 628
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 629
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 630
    add-int/lit8 v2, v2, 0x1

    .line 631
    sub-long/2addr v4, v10

    .line 632
    cmp-long v8, v4, v12

    if-lez v8, :cond_0

    .line 627
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 294
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 295
    sget-object v2, Lcn/nubia/music/utils/FileUtil;->hexChar:[C

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    sget-object v2, Lcn/nubia/music/utils/FileUtil;->hexChar:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static writeStringToFile(Ljava/io/File;Ljava/lang/String;Z)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 443
    .line 444
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v0, v1

    .line 466
    :cond_1
    :goto_0
    return v0

    .line 447
    :cond_2
    const/4 v3, 0x0

    .line 449
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, p1, v0, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V

    .line 451
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 452
    const/4 v0, 0x1

    .line 457
    if-eqz v2, :cond_1

    .line 459
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 460
    :catch_0
    move-exception v0

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    move v0, v1

    .line 463
    goto :goto_0

    .line 453
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 455
    :goto_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 457
    if-eqz v2, :cond_4

    .line 459
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move v0, v1

    .line 463
    goto :goto_0

    .line 460
    :catch_2
    move-exception v0

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    move v0, v1

    .line 463
    goto :goto_0

    .line 457
    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_3

    .line 459
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 463
    :cond_3
    :goto_3
    throw v0

    .line 460
    :catch_3
    move-exception v1

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_3

    .line 457
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 453
    :catch_4
    move-exception v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method

.method public static writeToFile(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 366
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p2}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-object v0

    .line 372
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/4 v3, 0x0

    invoke-virtual {p0, p2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 375
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 377
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 378
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 380
    :catch_0
    move-exception v0

    .line 381
    :goto_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 384
    if-eqz v2, :cond_2

    .line 385
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 387
    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 388
    if-eqz v1, :cond_3

    .line 389
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 390
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 396
    :cond_3
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 384
    :cond_4
    if-eqz v2, :cond_5

    .line 385
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 387
    :cond_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 388
    if-eqz v1, :cond_3

    .line 389
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 390
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 392
    :catch_1
    move-exception v0

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_3

    .line 392
    :catch_2
    move-exception v0

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_3

    .line 383
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 384
    :goto_4
    if-eqz v2, :cond_6

    .line 385
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 387
    :cond_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 388
    if-eqz v1, :cond_7

    .line 389
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 390
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 394
    :cond_7
    :goto_5
    throw v0

    .line 392
    :catch_3
    move-exception v1

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_5

    .line 383
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 380
    :catch_4
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto/16 :goto_2

    :catch_5
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto/16 :goto_2
.end method

.method public static writeToFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 401
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move-object p1, v0

    .line 434
    :cond_1
    :goto_0
    return-object p1

    .line 407
    :cond_2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write to file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 408
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/FileUtil;->checkDir(Ljava/lang/String;)Z

    .line 410
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 411
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 412
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 414
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 415
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 417
    :catch_0
    move-exception v0

    .line 418
    :goto_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 419
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 421
    :catchall_0
    move-exception v0

    .line 422
    :goto_3
    if-eqz v2, :cond_3

    .line 423
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 425
    :cond_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 426
    if-eqz v1, :cond_4

    .line 427
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 428
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 432
    :cond_4
    :goto_4
    throw v0

    .line 422
    :cond_5
    if-eqz v2, :cond_6

    .line 423
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 425
    :cond_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 426
    if-eqz v1, :cond_1

    .line 427
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 428
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 430
    :catch_1
    move-exception v0

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 430
    :catch_2
    move-exception v1

    .line 431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_4

    .line 421
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    .line 417
    :catch_3
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto/16 :goto_2

    :catch_4
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto/16 :goto_2
.end method

.method public static declared-synchronized writeToFileSync(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    const-class v0, Lcn/nubia/music/utils/FileUtil;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lcn/nubia/music/utils/FileUtil;->writeToFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
