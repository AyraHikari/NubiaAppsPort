.class public Lcn/nubia/music/utils/MusicUtils;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# static fields
.field private static COLUM_POSTFIX_INDEX:I = 0x0

.field private static COLUM_RATE_INDEX:I = 0x0

.field private static final HEX_DIGITS:[C

.field private static final INTERVAL:J = 0x0L

.field private static final PLAY_SERVICE_NAME:Ljava/lang/String; = "cn.nubia.music.MediaPlaybackService"

.field public static final UPDATE_CURRENTALBUM:Ljava/lang/String; = "com.bean.music.preset.CurrentAlbumChange"

.field private static firstTime:J

.field private static mActivityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static mAlbumCoverId:I

.field private static mCurrentAlbumBitmap:Landroid/graphics/Bitmap;

.field private static mCurrentLocale:Ljava/util/Locale;

.field private static mDefaultAlbumConver:[Landroid/graphics/Bitmap;

.field private static mLastSdStatus:Ljava/lang/String;

.field private static final sArtCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static sArtCacheId:I

.field private static final sArtworkUri:Landroid/net/Uri;

.field private static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private static final sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

.field private static sCachePath:Ljava/lang/String;

.field private static sContentValuesCache:[Landroid/content/ContentValues;

.field private static final sEmptyList:[J

.field private static sFavContentValuesCache:[Landroid/content/ContentValues;

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field private static final sTimeArgs:[Ljava/lang/Object;

.field private static s_isStrictMode_Init:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x23e

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 126
    sput-object v1, Lcn/nubia/music/utils/MusicUtils;->mDefaultAlbumConver:[Landroid/graphics/Bitmap;

    .line 127
    sput v3, Lcn/nubia/music/utils/MusicUtils;->mAlbumCoverId:I

    .line 128
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/music/utils/MusicUtils;->HEX_DIGITS:[C

    .line 131
    sput-boolean v3, Lcn/nubia/music/utils/MusicUtils;->s_isStrictMode_Init:Z

    .line 215
    new-array v0, v3, [J

    sput-object v0, Lcn/nubia/music/utils/MusicUtils;->sEmptyList:[J

    .line 650
    sput-object v1, Lcn/nubia/music/utils/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    .line 651
    sput-object v1, Lcn/nubia/music/utils/MusicUtils;->sFavContentValuesCache:[Landroid/content/ContentValues;

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcn/nubia/music/utils/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 959
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcn/nubia/music/utils/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcn/nubia/music/utils/MusicUtils;->sFormatter:Ljava/util/Formatter;

    .line 960
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcn/nubia/music/utils/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 1027
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcn/nubia/music/utils/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .line 1028
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcn/nubia/music/utils/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 1029
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/utils/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    .line 1030
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lcn/nubia/music/utils/MusicUtils;->sArtCache:Landroid/util/LongSparseArray;

    .line 1031
    const/4 v0, -0x1

    sput v0, Lcn/nubia/music/utils/MusicUtils;->sArtCacheId:I

    .line 1038
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1039
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1041
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1042
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1045
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1046
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1955
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/utils/MusicUtils;->mCurrentLocale:Ljava/util/Locale;

    .line 3185
    sput v3, Lcn/nubia/music/utils/MusicUtils;->COLUM_RATE_INDEX:I

    .line 3186
    const/4 v0, 0x1

    sput v0, Lcn/nubia/music/utils/MusicUtils;->COLUM_POSTFIX_INDEX:I

    return-void

    .line 128
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BeanMusicDialogBuilder(Landroid/content/Context;)Lcn/nubia/commonui/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static CenterDialogBuilder(Landroid/content/Context;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic access$000([JJ)[J
    .locals 1

    .prologue
    .line 122
    invoke-static {p0, p1, p2}, Lcn/nubia/music/utils/MusicUtils;->fliterIds([JJ)[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100([JIIJ)V
    .locals 1

    .prologue
    .line 122
    invoke-static {p0, p1, p2, p3, p4}, Lcn/nubia/music/utils/MusicUtils;->makeInsertItems([JIIJ)V

    return-void
.end method

.method static synthetic access$200()[Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$300(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    invoke-static {p0, p1}, Lcn/nubia/music/utils/MusicUtils;->isValidSourceOfRingtone(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 0

    .prologue
    .line 122
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/music/utils/MusicUtils;->setCallRingtoneImpl(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static addToCurrentPlaylist(Landroid/content/Context;[J)V
    .locals 6

    .prologue
    .line 639
    sget-boolean v0, Lcn/nubia/music/app/MusicPlayer;->isBinded:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcn/nubia/music/utils/EmptyChecker;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcn/nubia/music/app/MusicPlayer;->enqueue([JI)V

    .line 645
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0001

    array-length v2, p1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    array-length v5, p1

    .line 646
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 645
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 647
    invoke-static {p0, v0}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static addToPlayFavorite([J)V
    .locals 5

    .prologue
    .line 776
    if-nez p0, :cond_1

    .line 779
    const-string v0, "ListSelection null"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 793
    :cond_0
    return-void

    .line 781
    :cond_1
    array-length v1, p0

    .line 782
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 786
    const-string v0, "content://nubia.music.preset/favorites"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 788
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 789
    const/16 v4, 0x3e8

    invoke-static {p0, v0, v4}, Lcn/nubia/music/utils/MusicUtils;->makeInsertItemsFavorite([JII)V

    .line 790
    sget-object v4, Lcn/nubia/music/utils/MusicUtils;->sFavContentValuesCache:[Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 788
    add-int/lit16 v0, v0, 0x3e8

    goto :goto_0
.end method

.method public static addToPlaylist([JJ)V
    .locals 7

    .prologue
    .line 694
    if-eqz p0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 697
    :cond_0
    const-string v0, "ListSelection null"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 710
    :cond_1
    return-void

    .line 699
    :cond_2
    invoke-static {p0, p1, p2}, Lcn/nubia/music/utils/MusicUtils;->fliterIds([JJ)[J

    move-result-object v1

    .line 700
    array-length v2, p0

    .line 701
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 704
    const-string v0, "content://nubia.music.preset/playlistDatas"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 705
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 706
    const/16 v5, 0x3e8

    invoke-static {v1, v0, v5, p1, p2}, Lcn/nubia/music/utils/MusicUtils;->makeInsertItems([JIIJ)V

    .line 707
    sget-object v5, Lcn/nubia/music/utils/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 705
    add-int/lit16 v0, v0, 0x3e8

    goto :goto_0
.end method

.method public static addToPlaylistWithCallback(Landroid/content/Context;[JJ)V
    .locals 2

    .prologue
    .line 714
    new-instance v0, Lcn/nubia/music/utils/MusicUtils$1;

    invoke-direct {v0, p1, p2, p3, p0}, Lcn/nubia/music/utils/MusicUtils$1;-><init>([JJLandroid/content/Context;)V

    invoke-static {v0}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    .line 739
    return-void
.end method

.method public static bmpToByteArray(Landroid/graphics/Bitmap;Z)[B
    .locals 4

    .prologue
    .line 142
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 143
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 144
    if-eqz p1, :cond_0

    .line 145
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 148
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 150
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-object v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static bulkInsertSongInfo2(Landroid/content/Context;Ljava/util/List;)[J
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/data/MusicEntry;",
            ">;)[J"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 2582
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Landroid/content/ContentValues;

    .line 2583
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 2585
    const v0, 0x7f0b0133

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2586
    const v0, 0x7f0b0134

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v7

    move v1, v6

    .line 2587
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 2588
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/data/MusicEntry;

    .line 2589
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insertSongInfo mArtistName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcn/nubia/music/online/data/MusicEntry;->mArtistName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 2590
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insertSongInfo mAlbumTitle:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcn/nubia/music/online/data/MusicEntry;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 2591
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insertSongInfo mImageUrl:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Lcn/nubia/music/online/data/MusicEntry;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 2593
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    aput-object v8, v2, v1

    .line 2595
    aget-object v8, v2, v1

    const-string v9, "song_id"

    iget-object v10, v0, Lcn/nubia/music/online/data/MusicEntry;->mSongId:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2596
    iget-object v8, v0, Lcn/nubia/music/online/data/MusicEntry;->mSongId:Ljava/lang/String;

    aput-object v8, v3, v1

    .line 2597
    aget-object v8, v2, v1

    const-string v9, "title"

    iget-object v10, v0, Lcn/nubia/music/online/data/MusicEntry;->mSongName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2598
    aget-object v8, v2, v1

    const-string v9, "type"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2599
    aget-object v8, v2, v1

    const-string v9, "duration"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2600
    aget-object v8, v2, v1

    const-string v9, "parent_path"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2601
    aget-object v8, v2, v1

    const-string v9, "data"

    iget-object v10, v0, Lcn/nubia/music/online/data/MusicEntry;->mSongId:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2602
    iget-object v8, v0, Lcn/nubia/music/online/data/MusicEntry;->mArtistName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2603
    aget-object v8, v2, v1

    const-string v9, "artist"

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2607
    :goto_1
    iget-object v8, v0, Lcn/nubia/music/online/data/MusicEntry;->mAlbumName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2608
    aget-object v0, v2, v1

    const-string v8, "album"

    invoke-virtual {v0, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2612
    :goto_2
    aget-object v0, v2, v1

    const-string v8, "album_art"

    const-string v9, ""

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2613
    aget-object v0, v2, v1

    const-string v8, "album_img"

    const-string v9, ""

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2587
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 2605
    :cond_0
    aget-object v8, v2, v1

    const-string v9, "artist"

    iget-object v10, v0, Lcn/nubia/music/online/data/MusicEntry;->mArtistName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2610
    :cond_1
    aget-object v8, v2, v1

    const-string v9, "album"

    iget-object v0, v0, Lcn/nubia/music/online/data/MusicEntry;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2616
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/musicInfos"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 2619
    const-string v0, "content://nubia.music.preset/audios"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2620
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2621
    const-string v0, "song_id IN ( "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v6

    .line 2622
    :goto_3
    array-length v2, v3

    if-ge v0, v2, :cond_4

    .line 2623
    if-nez v0, :cond_3

    .line 2624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v7, v3, v0

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2622
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2626
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ",\'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v7, v3, v0

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 2629
    :cond_4
    const-string v0, " ) "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "where "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 2631
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v6

    .line 2633
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 2631
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2635
    if-eqz v2, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2636
    const-string v0, "cursor is not  null "

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 2637
    if-nez v4, :cond_7

    .line 2638
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [J

    :goto_5
    move v1, v6

    .line 2642
    :cond_5
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    aput-wide v8, v0, v1

    .line 2643
    add-int/lit8 v1, v1, 0x1

    .line 2644
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2646
    :goto_6
    if-eqz v2, :cond_6

    .line 2647
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v4, v0

    .line 2652
    :goto_7
    return-object v4

    .line 2651
    :cond_6
    const-string v0, "cursor is null "

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    move-object v0, v4

    goto :goto_5

    :cond_8
    move-object v0, v4

    goto :goto_6
.end method

.method public static bulkInsertSongInfo2(Ljava/util/ArrayList;[J)[J
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/music/online/data/MusicEntry;",
            ">;[J)[J"
        }
    .end annotation

    .prologue
    .line 2788
    array-length v0, p1

    new-array v3, v0, [Landroid/content/ContentValues;

    .line 2789
    array-length v0, p1

    new-array v4, v0, [Landroid/content/ContentValues;

    .line 2790
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2791
    array-length v1, p1

    new-array v5, v1, [Ljava/lang/String;

    .line 2793
    const v1, 0x7f0b0133

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2794
    const v1, 0x7f0b0134

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2795
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_2

    .line 2796
    aget-wide v8, p1, v2

    long-to-int v1, v8

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/music/online/data/MusicEntry;

    .line 2797
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    aput-object v8, v3, v2

    .line 2798
    aget-object v8, v3, v2

    const-string v9, "song_id"

    iget-object v10, v1, Lcn/nubia/music/online/data/MusicEntry;->mSongId:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2799
    iget-object v8, v1, Lcn/nubia/music/online/data/MusicEntry;->mSongId:Ljava/lang/String;

    aput-object v8, v5, v2

    .line 2800
    aget-object v8, v3, v2

    const-string v9, "title"

    iget-object v10, v1, Lcn/nubia/music/online/data/MusicEntry;->mSongName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2801
    aget-object v8, v3, v2

    const-string v9, "type"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2802
    aget-object v8, v3, v2

    const-string v9, "duration"

    iget-object v10, v1, Lcn/nubia/music/online/data/MusicEntry;->mDuration:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2803
    aget-object v8, v3, v2

    const-string v9, "parent_path"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2804
    aget-object v8, v3, v2

    const-string v9, "data"

    iget-object v10, v1, Lcn/nubia/music/online/data/MusicEntry;->mSongId:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2805
    iget-object v8, v1, Lcn/nubia/music/online/data/MusicEntry;->mArtistName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2806
    aget-object v8, v3, v2

    const-string v9, "artist"

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2810
    :goto_1
    iget-object v8, v1, Lcn/nubia/music/online/data/MusicEntry;->mAlbumName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2811
    aget-object v8, v3, v2

    const-string v9, "album"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2815
    :goto_2
    aget-object v8, v3, v2

    const-string v9, "album_art"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2816
    aget-object v8, v3, v2

    const-string v9, "album_img"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2817
    aget-object v8, v3, v2

    const-string v9, "available_flag"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2819
    iget-object v8, v1, Lcn/nubia/music/online/data/MusicEntry;->mImageUrl:Ljava/lang/String;

    .line 2821
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    aput-object v9, v4, v2

    .line 2822
    aget-object v9, v4, v2

    const-string v10, "artist"

    iget-object v11, v1, Lcn/nubia/music/online/data/MusicEntry;->mArtistName:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2823
    aget-object v9, v4, v2

    const-string v10, "album"

    iget-object v11, v1, Lcn/nubia/music/online/data/MusicEntry;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2824
    aget-object v9, v4, v2

    const-string v10, "image_url"

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2825
    aget-object v8, v4, v2

    const-string v9, "image_url_80_80"

    iget-object v10, v1, Lcn/nubia/music/online/data/MusicEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v10, v10, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_80_80:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2827
    aget-object v8, v4, v2

    const-string v9, "image_url_120_120"

    iget-object v10, v1, Lcn/nubia/music/online/data/MusicEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v10, v10, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_120_120:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2829
    aget-object v8, v4, v2

    const-string v9, "image_url_220_220"

    iget-object v10, v1, Lcn/nubia/music/online/data/MusicEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v10, v10, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_220_220:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2832
    aget-object v8, v4, v2

    const-string v9, "image_url_330_330"

    iget-object v10, v1, Lcn/nubia/music/online/data/MusicEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v10, v10, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_330_330:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2834
    aget-object v8, v4, v2

    const-string v9, "image_url_400_400"

    iget-object v10, v1, Lcn/nubia/music/online/data/MusicEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v10, v10, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_400_400:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2836
    aget-object v8, v4, v2

    const-string v9, "image_url_640_640"

    iget-object v10, v1, Lcn/nubia/music/online/data/MusicEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v10, v10, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_640_640:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2838
    aget-object v8, v4, v2

    const-string v9, "image_url_720_720"

    iget-object v1, v1, Lcn/nubia/music/online/data/MusicEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v1, v1, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_720_720:Ljava/lang/String;

    invoke-virtual {v8, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2841
    aget-object v1, v4, v2

    const-string v8, "image_path"

    const-string v9, ""

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2795
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_0

    .line 2808
    :cond_0
    aget-object v8, v3, v2

    const-string v9, "artist"

    iget-object v10, v1, Lcn/nubia/music/online/data/MusicEntry;->mArtistName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2813
    :cond_1
    aget-object v8, v3, v2

    const-string v9, "album"

    iget-object v10, v1, Lcn/nubia/music/online/data/MusicEntry;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2845
    :cond_2
    const-string v1, "content://nubia.music.preset/iamges"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 2846
    const-string v1, "content://nubia.music.preset/musicInfos"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 2849
    const-string v1, "content://nubia.music.preset/audios"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2850
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2851
    const-string v2, "song_id IN ( "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2852
    const/4 v2, 0x0

    :goto_3
    array-length v4, v5

    if-ge v2, v4, :cond_4

    .line 2853
    if-nez v2, :cond_3

    .line 2854
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, v5, v2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2852
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2856
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ",\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, v5, v2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 2859
    :cond_4
    const-string v2, " ) "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2860
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "where "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 2861
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "song_id"

    aput-object v5, v2, v4

    .line 2863
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2861
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 2864
    const/4 v0, 0x0

    .line 2865
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2866
    if-eqz v5, :cond_7

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2867
    const-string v1, "cursor is not  null "

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 2868
    if-nez v0, :cond_a

    .line 2869
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [J

    move-object v1, v0

    .line 2871
    :goto_5
    const/4 v2, 0x0

    .line 2873
    :cond_5
    const/4 v0, 0x1

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2877
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2878
    const/4 v0, 0x0

    move v3, v2

    move v2, v0

    :goto_6
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 2879
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/data/MusicEntry;

    .line 2880
    if-eqz v0, :cond_6

    iget-object v4, v0, Lcn/nubia/music/online/data/MusicEntry;->mSongId:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2882
    add-int/lit8 v4, v3, 0x1

    :try_start_0
    iget-object v0, v0, Lcn/nubia/music/online/data/MusicEntry;->mSongId:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 2878
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    .line 2883
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 2889
    :cond_7
    :goto_7
    if-eqz v5, :cond_8

    .line 2890
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2895
    :goto_8
    return-object v0

    .line 2894
    :cond_8
    const-string v0, "cursor is null "

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 2895
    const/4 v0, 0x0

    goto :goto_8

    :cond_9
    move-object v0, v1

    goto :goto_7

    :cond_a
    move-object v1, v0

    goto :goto_5
.end method

.method public static bulkInsertSongInfoNew2(Ljava/util/ArrayList;)[J
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/music/online/data/MusicEntry;",
            ">;)[J"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 2901
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Landroid/content/ContentValues;

    .line 2902
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2903
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v5, v1, [Ljava/lang/String;

    .line 2905
    const v1, 0x7f0b0133

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2906
    const v1, 0x7f0b0134

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v8

    move v2, v6

    .line 2907
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 2908
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/music/online/data/MusicEntry;

    .line 2909
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    aput-object v9, v3, v2

    .line 2910
    aget-object v9, v3, v2

    const-string v10, "song_id"

    iget-object v11, v1, Lcn/nubia/music/online/data/MusicEntry;->mSongId:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2911
    iget-object v9, v1, Lcn/nubia/music/online/data/MusicEntry;->mSongId:Ljava/lang/String;

    aput-object v9, v5, v2

    .line 2912
    aget-object v9, v3, v2

    const-string v10, "title"

    iget-object v11, v1, Lcn/nubia/music/online/data/MusicEntry;->mSongName:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2913
    aget-object v9, v3, v2

    const-string v10, "type"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2914
    aget-object v9, v3, v2

    const-string v10, "duration"

    iget-object v11, v1, Lcn/nubia/music/online/data/MusicEntry;->mDuration:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2915
    aget-object v9, v3, v2

    const-string v10, "parent_path"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2916
    aget-object v9, v3, v2

    const-string v10, "data"

    iget-object v11, v1, Lcn/nubia/music/online/data/MusicEntry;->mSongId:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2917
    iget-object v9, v1, Lcn/nubia/music/online/data/MusicEntry;->mArtistName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2918
    aget-object v9, v3, v2

    const-string v10, "artist"

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2922
    :goto_1
    iget-object v9, v1, Lcn/nubia/music/online/data/MusicEntry;->mAlbumName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2923
    aget-object v9, v3, v2

    const-string v10, "album"

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2927
    :goto_2
    aget-object v9, v3, v2

    const-string v10, "album_art"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2928
    aget-object v9, v3, v2

    const-string v10, "album_img"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2930
    const-string v9, ""

    .line 2931
    iget-object v9, v1, Lcn/nubia/music/online/data/MusicEntry;->mImageUrl:Ljava/lang/String;

    .line 2934
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2935
    const-string v11, "artist"

    iget-object v12, v1, Lcn/nubia/music/online/data/MusicEntry;->mArtistName:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2936
    const-string v11, "album"

    iget-object v12, v1, Lcn/nubia/music/online/data/MusicEntry;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2937
    const-string v11, "image_url"

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2939
    const-string v9, "image_url_80_80"

    iget-object v11, v1, Lcn/nubia/music/online/data/MusicEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v11, v11, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_80_80:Ljava/lang/String;

    invoke-virtual {v10, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2941
    const-string v9, "image_url_120_120"

    iget-object v11, v1, Lcn/nubia/music/online/data/MusicEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v11, v11, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_120_120:Ljava/lang/String;

    invoke-virtual {v10, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2943
    const-string v9, "image_url_220_220"

    iget-object v11, v1, Lcn/nubia/music/online/data/MusicEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v11, v11, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_220_220:Ljava/lang/String;

    invoke-virtual {v10, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2945
    const-string v9, "image_url_330_330"

    iget-object v11, v1, Lcn/nubia/music/online/data/MusicEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v11, v11, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_330_330:Ljava/lang/String;

    invoke-virtual {v10, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2947
    const-string v9, "image_url_400_400"

    iget-object v11, v1, Lcn/nubia/music/online/data/MusicEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v11, v11, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_400_400:Ljava/lang/String;

    invoke-virtual {v10, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2949
    const-string v9, "image_url_640_640"

    iget-object v11, v1, Lcn/nubia/music/online/data/MusicEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v11, v11, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_640_640:Ljava/lang/String;

    invoke-virtual {v10, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2951
    const-string v9, "image_url_720_720"

    iget-object v1, v1, Lcn/nubia/music/online/data/MusicEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v1, v1, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_720_720:Ljava/lang/String;

    invoke-virtual {v10, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2954
    const-string v1, "image_path"

    const-string v9, ""

    invoke-virtual {v10, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2955
    const-string v1, "content://nubia.music.preset/iamges"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2907
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_0

    .line 2920
    :cond_0
    aget-object v9, v3, v2

    const-string v10, "artist"

    iget-object v11, v1, Lcn/nubia/music/online/data/MusicEntry;->mArtistName:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2925
    :cond_1
    aget-object v9, v3, v2

    const-string v10, "album"

    iget-object v11, v1, Lcn/nubia/music/online/data/MusicEntry;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2959
    :cond_2
    const-string v1, "content://nubia.music.preset/musicInfos"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 2961
    const-string v1, "content://nubia.music.preset/audios"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2962
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2963
    const-string v2, "song_id IN ( "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v6

    .line 2964
    :goto_3
    array-length v7, v5

    if-ge v2, v7, :cond_4

    .line 2965
    if-nez v2, :cond_3

    .line 2966
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2964
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2968
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ",\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 2971
    :cond_4
    const-string v2, " ) "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2972
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "where "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 2973
    new-array v2, v13, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v6

    .line 2975
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 2973
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2977
    if-eqz v2, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2978
    const-string v0, "cursor is not  null "

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 2979
    if-nez v4, :cond_7

    .line 2980
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [J

    :goto_5
    move v1, v6

    .line 2984
    :cond_5
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    aput-wide v8, v0, v1

    .line 2985
    add-int/lit8 v1, v1, 0x1

    .line 2986
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2988
    :goto_6
    if-eqz v2, :cond_6

    .line 2989
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v4, v0

    .line 2994
    :goto_7
    return-object v4

    .line 2993
    :cond_6
    const-string v0, "cursor is null "

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    move-object v0, v4

    goto :goto_5

    :cond_8
    move-object v0, v4

    goto :goto_6
.end method

.method private static checkoutAndGetFormatter()Ljava/util/Formatter;
    .locals 3

    .prologue
    .line 1958
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1959
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/utils/MusicUtils;->mCurrentLocale:Ljava/util/Locale;

    .line 1960
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcn/nubia/music/utils/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcn/nubia/music/utils/MusicUtils;->sFormatter:Ljava/util/Formatter;

    .line 1962
    :cond_0
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->sFormatter:Ljava/util/Formatter;

    return-object v0
.end method

.method public static clearAlbumArtCache()V
    .locals 2

    .prologue
    .line 1060
    sget-object v1, Lcn/nubia/music/utils/MusicUtils;->sArtCache:Landroid/util/LongSparseArray;

    monitor-enter v1

    .line 1061
    :try_start_0
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->sArtCache:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1062
    monitor-exit v1

    .line 1063
    return-void

    .line 1062
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static clearVersionData()V
    .locals 1

    .prologue
    .line 1230
    new-instance v0, Lcn/nubia/music/utils/MusicUtils$4;

    invoke-direct {v0}, Lcn/nubia/music/utils/MusicUtils$4;-><init>()V

    invoke-static {v0}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    .line 1242
    return-void
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v6, -0x1

    .line 1917
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1918
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1919
    if-ne v6, p2, :cond_0

    move v0, v1

    .line 1920
    :goto_0
    if-ne p1, v6, :cond_1

    const/16 v2, 0x80

    .line 1922
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1931
    :goto_2
    return v0

    .line 1919
    :cond_0
    mul-int v0, v2, v3

    div-int/2addr v0, p2

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    goto :goto_0

    .line 1920
    :cond_1
    div-int/2addr v2, p1

    int-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    div-int v2, v3, p1

    int-to-double v2, v2

    .line 1921
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 1920
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v2, v2

    goto :goto_1

    .line 1925
    :cond_2
    if-ne p1, v6, :cond_3

    if-ne p2, v6, :cond_3

    move v0, v1

    .line 1926
    goto :goto_2

    .line 1927
    :cond_3
    if-ne p1, v6, :cond_4

    .line 1928
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computeInitialSampleSize lower = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move v0, v2

    .line 1931
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    .prologue
    .line 1901
    invoke-static {p0, p1, p2}, Lcn/nubia/music/utils/MusicUtils;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    .line 1902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computeSampleSize initialSize = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1904
    const/16 v0, 0x8

    if-gt v1, v0, :cond_0

    .line 1905
    const/4 v0, 0x1

    .line 1906
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1907
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1910
    :cond_0
    add-int/lit8 v0, v1, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    .line 1912
    :cond_1
    return v0
.end method

.method public static countTotalSize(Ljava/util/ArrayList;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 3374
    const-wide/16 v0, 0x0

    .line 3375
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 3376
    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 3377
    goto :goto_0

    .line 3378
    :cond_0
    return-wide v2
.end method

.method public static createClearRemindDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 3

    .prologue
    .line 3017
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->BeanMusicDialogBuilder(Landroid/content/Context;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b002f

    .line 3019
    invoke-virtual {v0, v1, p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0027

    new-instance v2, Lcn/nubia/music/utils/MusicUtils$3;

    invoke-direct {v2}, Lcn/nubia/music/utils/MusicUtils$3;-><init>()V

    .line 3020
    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    .line 3026
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    .line 3027
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 3028
    return-object v0
.end method

.method public static createDialogForRingtone(Landroid/content/Context;[Ljava/lang/String;ZLjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2350
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 2356
    :goto_0
    return-object v0

    .line 2353
    :cond_0
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->BeanMusicDialogBuilder(Landroid/content/Context;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b0027

    .line 2354
    invoke-virtual {v0, v2, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    .line 2355
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public static createDialogForXiamiAccount(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3447
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3459
    :goto_0
    return-object v0

    .line 3450
    :cond_0
    new-instance v1, Lcn/nubia/music/app/model/DialogListItem;

    invoke-direct {v1}, Lcn/nubia/music/app/model/DialogListItem;-><init>()V

    .line 3451
    iget-object v2, v1, Lcn/nubia/music/app/model/DialogListItem;->mContents:Landroid/widget/TextView;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3452
    iget-object v2, v1, Lcn/nubia/music/app/model/DialogListItem;->mContents:Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3453
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->BeanMusicDialogBuilder(Landroid/content/Context;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, v1, Lcn/nubia/music/app/model/DialogListItem;->mView:Landroid/view/View;

    .line 3454
    invoke-virtual {v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0027

    .line 3455
    invoke-virtual {v2, v3, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    .line 3456
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    .line 3457
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3458
    iget-object v1, v1, Lcn/nubia/music/app/model/DialogListItem;->mContents:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static createRemindDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .prologue
    .line 3033
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->CenterDialogBuilder(Landroid/content/Context;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00bf

    .line 3034
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b002f

    .line 3035
    invoke-virtual {v0, v1, p1}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0027

    .line 3036
    invoke-virtual {v0, v1, p2}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->create()Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    move-result-object v0

    .line 3037
    invoke-virtual {v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->show()V

    .line 3038
    return-void
.end method

.method public static deletePlaylistData([JLcn/nubia/music/app/listener/IDeleteMusicCallBack;I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 355
    if-nez p1, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    const-string v0, "audio_id IN ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 361
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_3

    .line 362
    aget-wide v4, p0, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 363
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    .line 364
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 367
    :cond_3
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " and playlist_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "content://nubia.music.preset/playlistDatas"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 371
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 370
    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 373
    if-lez v0, :cond_0

    .line 374
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f0a0000

    array-length v3, p0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    array-length v5, p0

    .line 375
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 374
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-interface {p1, v0}, Lcn/nubia/music/app/listener/IDeleteMusicCallBack;->onfinish(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deleteTracksWithCallback([JLcn/nubia/music/app/listener/IDeleteMusicCallBack;ZZ)V
    .locals 12

    .prologue
    .line 384
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 385
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 389
    if-nez p1, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v0

    const/4 v0, 0x1

    const-string v3, "data"

    aput-object v3, v1, v0

    const/4 v0, 0x2

    const-string v3, "album_id"

    aput-object v3, v1, v0

    const/4 v0, 0x3

    const-string v3, "music_id"

    aput-object v3, v1, v0

    .line 397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    const-string v0, "history_audio_id IN ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const-string v0, "_id IN ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    const/4 v0, 0x0

    :goto_1
    array-length v5, p0

    if-ge v0, v5, :cond_3

    .line 402
    aget-wide v6, p0, v0

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 403
    aget-wide v6, p0, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 404
    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_2

    .line 405
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 409
    :cond_3
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    const-string v0, "content://nubia.music.preset/audios"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v1, v5, v6, v7}, Lcn/nubia/music/utils/MusicUtils;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 414
    if-eqz v0, :cond_10

    .line 419
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v5, v1, [J

    .line 420
    const/4 v1, 0x0

    .line 421
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 422
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_5

    .line 425
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 426
    aput-wide v6, v5, v1

    .line 427
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    add-int/lit8 v1, v1, 0x1

    .line 429
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 432
    :catch_0
    move-exception v1

    .line 433
    if-eqz v0, :cond_11

    .line 434
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 435
    const/4 v0, 0x0

    move-object v7, v0

    .line 439
    :goto_3
    if-eqz p3, :cond_7

    if-nez p2, :cond_7

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    const-string v0, "history_audio_id IN ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    const-string v0, "audio_id IN ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const/4 v0, 0x0

    :goto_4
    array-length v5, p0

    if-ge v0, v5, :cond_6

    .line 445
    aget-wide v10, p0, v0

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 446
    aget-wide v10, p0, v0

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 447
    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_4

    .line 448
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 431
    :cond_5
    :try_start_1
    invoke-static {v5}, Lcn/nubia/music/app/MusicPlayer;->removeTracksAudioId([J)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v7, v0

    .line 437
    goto :goto_3

    .line 452
    :cond_6
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "where = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 455
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "content://nubia.music.preset/favorites"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 456
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    .line 455
    invoke-virtual {v0, v3, v1, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 461
    :goto_5
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/playhistory"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 462
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 461
    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 464
    if-eqz p2, :cond_e

    .line 465
    const/4 v6, 0x0

    .line 466
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    const-string v0, "_data IN ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 469
    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const-string v4, "\'"

    const-string v5, "\'\'"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    const-string v0, "\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 458
    :cond_7
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/musicInfos"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 459
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 458
    invoke-virtual {v0, v1, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_5

    .line 476
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 477
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 481
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 479
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 482
    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_a

    .line 483
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move v0, v6

    .line 484
    :goto_7
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_b

    .line 485
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 486
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 487
    sget-object v4, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 488
    invoke-static {v5, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 487
    invoke-virtual {v4, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 490
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 494
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_9

    .line 498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 500
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 501
    invoke-interface {p1, v0}, Lcn/nubia/music/app/listener/IDeleteMusicCallBack;->onDelete(I)V

    .line 502
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    .line 503
    :catch_1
    move-exception v2

    .line 504
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_7

    :cond_a
    move v0, v6

    .line 508
    :cond_b
    if-eqz v1, :cond_c

    .line 509
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 511
    :cond_c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 513
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 514
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 515
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 517
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete push file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 518
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 519
    add-int/lit8 v1, v1, 0x1

    .line 520
    invoke-interface {p1, v1}, Lcn/nubia/music/app/listener/IDeleteMusicCallBack;->onDelete(I)V

    :cond_d
    move v0, v1

    move v1, v0

    .line 523
    goto :goto_8

    .line 526
    :cond_e
    if-eqz v7, :cond_f

    .line 527
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {p1, v0}, Lcn/nubia/music/app/listener/IDeleteMusicCallBack;->onDelete(I)V

    .line 530
    :cond_f
    if-eqz v7, :cond_10

    .line 531
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 536
    :cond_10
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a0000

    array-length v2, p0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    array-length v5, p0

    .line 537
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 536
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 539
    invoke-interface {p1, v0}, Lcn/nubia/music/app/listener/IDeleteMusicCallBack;->onfinish(Ljava/lang/String;)V

    .line 541
    if-eqz p2, :cond_0

    .line 542
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://media"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    :cond_11
    move-object v7, v0

    goto/16 :goto_3
.end method

.method public static deleteUnExistTracks(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 590
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "data"

    aput-object v3, v0, v4

    const/4 v3, 0x2

    const-string v4, "album_id"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "music_id"

    aput-object v4, v0, v3

    .line 594
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 595
    const-string v3, "insert_tag = 0"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    const-string v3, " AND type = 0 "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    const-string v3, "content://nubia.music.preset/audios"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v0, v5, v1, v1}, Lcn/nubia/music/utils/MusicUtils;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 601
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 606
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v5, v3, [J

    .line 608
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 609
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 612
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 613
    add-int/lit8 v3, v2, 0x1

    aput-wide v6, v5, v2

    .line 614
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 615
    invoke-static {v2}, Lcn/nubia/music/utils/DownloadUtil;->deleteAudio(Ljava/lang/String;)V

    .line 616
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move v2, v3

    .line 617
    goto :goto_0

    .line 618
    :cond_0
    invoke-static {v5}, Lcn/nubia/music/app/MusicPlayer;->removeTracksAudioId([J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :cond_1
    :goto_1
    sget-object v2, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://nubia.music.preset/musicInfos"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 627
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 626
    invoke-virtual {v2, v3, v4, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 629
    if-eqz v0, :cond_2

    .line 630
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 635
    :cond_2
    return-void

    .line 619
    :catch_0
    move-exception v2

    .line 620
    if-eqz v0, :cond_1

    .line 621
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 622
    goto :goto_1
.end method

.method public static deleteUnExistTracks([J)V
    .locals 7

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 547
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v0

    const-string v2, "data"

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "album_id"

    aput-object v3, v1, v2

    const-string v2, "music_id"

    aput-object v2, v1, v4

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    const-string v3, "_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 554
    aget-wide v4, p0, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 555
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 556
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 559
    :cond_1
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    const-string v0, "content://nubia.music.preset/audios"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3, v6, v6}, Lcn/nubia/music/utils/MusicUtils;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 562
    if-eqz v1, :cond_3

    .line 564
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 565
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 566
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 567
    invoke-static {v0}, Lcn/nubia/music/utils/DownloadUtil;->deleteAudio(Ljava/lang/String;)V

    .line 569
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 570
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 572
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 571
    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 570
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 573
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 575
    :catch_0
    move-exception v0

    .line 576
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    if-eqz v1, :cond_2

    .line 579
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 583
    :cond_2
    :goto_2
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/musicInfos"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 584
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 583
    invoke-virtual {v0, v1, v2, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 586
    :cond_3
    return-void

    .line 578
    :cond_4
    if-eqz v1, :cond_2

    .line 579
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 578
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    .line 579
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 580
    :cond_5
    throw v0
.end method

.method public static disabledOnlyPlayInWifi()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3480
    const-string v0, "only_wifi_download_switch"

    invoke-static {v1, v0, v1}, Lcn/nubia/music/utils/SharedPrefersHelper;->putBoolean(ILjava/lang/String;Z)V

    .line 3482
    return-void
.end method

.method public static disallowShowMagnifier(Landroid/widget/TextView;)V
    .locals 5

    .prologue
    .line 2391
    :try_start_0
    const-string v0, "android.widget.TextView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2392
    const-string v1, "disallowShowMagnifier"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2393
    if-eqz v0, :cond_0

    .line 2394
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2403
    :cond_0
    :goto_0
    return-void

    .line 2396
    :catch_0
    move-exception v0

    .line 2397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 2398
    :catch_1
    move-exception v0

    .line 2399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 2400
    :catch_2
    move-exception v0

    .line 2401
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

.method public static displayDatabaseError(Landroid/app/Activity;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 827
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 828
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getSecondaryStorageMgr()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 829
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getSecondaryStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 919
    :cond_0
    :goto_0
    return-void

    .line 836
    :cond_1
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 839
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 840
    const v1, 0x7f0b00fa

    .line 841
    const v0, 0x7f0b00f8

    .line 847
    :goto_1
    const-string v3, "shared"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "unmounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 848
    :cond_2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 849
    const v1, 0x7f0b00f6

    .line 850
    const v0, 0x7f0b00f4

    move v7, v0

    move v0, v1

    move v1, v7

    .line 877
    :goto_2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 878
    const v0, 0x7f100168

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 879
    if-eqz v0, :cond_3

    .line 880
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 881
    check-cast v0, Landroid/widget/TextView;

    .line 882
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 884
    :cond_3
    const v0, 0x7f100167

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 885
    if-eqz v0, :cond_4

    .line 886
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 889
    :cond_4
    const v0, 0x7f10015a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 890
    if-eqz v0, :cond_5

    .line 891
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 894
    :cond_5
    const v0, 0x7f100072

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 895
    if-eqz v0, :cond_6

    .line 896
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 899
    :cond_6
    const v0, 0x7f10015d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 900
    if-eqz v0, :cond_7

    .line 901
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 904
    :cond_7
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 905
    if-eqz v0, :cond_8

    .line 906
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 909
    :cond_8
    const v0, 0x7f100075

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 910
    if-eqz v0, :cond_9

    .line 911
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 913
    :cond_9
    const v0, 0x7f10007a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 914
    if-eqz v0, :cond_0

    .line 915
    check-cast v0, Lcn/nubia/music/ui/MiniMusicPlayBar;

    .line 916
    invoke-virtual {v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->forceGone()V

    goto/16 :goto_0

    .line 843
    :cond_a
    const v1, 0x7f0b00fb

    .line 844
    const v0, 0x7f0b00f9

    goto/16 :goto_1

    .line 852
    :cond_b
    const v1, 0x7f0b00f7

    .line 853
    const v0, 0x7f0b00f5

    move v7, v0

    move v0, v1

    move v1, v7

    goto :goto_2

    .line 855
    :cond_c
    const-string v3, "removed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 856
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 857
    const v1, 0x7f0b00fe

    .line 858
    const v0, 0x7f0b00fc

    move v7, v0

    move v0, v1

    move v1, v7

    goto/16 :goto_2

    .line 860
    :cond_d
    const v1, 0x7f0b00ff

    .line 861
    const v0, 0x7f0b00fd

    move v7, v0

    move v0, v1

    move v1, v7

    goto/16 :goto_2

    .line 863
    :cond_e
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 868
    const-string v2, ""

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 869
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 870
    const-class v3, Lcn/nubia/music/activity/ScanningProgressActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 871
    const/16 v3, 0xb

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v7, v0

    move v0, v1

    move v1, v7

    .line 872
    goto/16 :goto_2

    :cond_f
    sget-object v3, Lcn/nubia/music/utils/MusicUtils;->mLastSdStatus:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 873
    sput-object v2, Lcn/nubia/music/utils/MusicUtils;->mLastSdStatus:Ljava/lang/String;

    .line 874
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sd card: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    :cond_10
    move v7, v0

    move v0, v1

    move v1, v7

    goto/16 :goto_2
.end method

.method public static exitApp()V
    .locals 4

    .prologue
    .line 1330
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->stopAllService()V

    .line 1331
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    const-string v1, "activity"

    .line 1332
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1334
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1335
    const-string v2, "cn.nubia.music.MusicService"

    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1336
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 1340
    :cond_1
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->mActivityList:Ljava/util/List;

    if-eqz v0, :cond_2

    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->mActivityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1362
    :cond_2
    :goto_0
    return-void

    .line 1343
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1344
    const/4 v0, 0x0

    .line 1345
    sget-object v1, Lcn/nubia/music/utils/MusicUtils;->mActivityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1346
    if-nez v1, :cond_5

    .line 1347
    add-int/lit8 v1, v1, 0x1

    .line 1349
    :cond_5
    if-eqz v0, :cond_4

    .line 1350
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1351
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1354
    :cond_6
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->mActivityList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1355
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcn/nubia/music/utils/MusicUtils$5;

    invoke-direct {v1}, Lcn/nubia/music/utils/MusicUtils$5;-><init>()V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private static fliterIds([JJ)[J
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 762
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move v0, v1

    .line 763
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 764
    aget-wide v4, p0, v0

    invoke-static {p1, p2, v4, v5}, Lcn/nubia/music/utils/MusicUtils;->isInPlayList(JJ)Z

    move-result v3

    if-nez v3, :cond_0

    .line 765
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 763
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 768
    :cond_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v3, v0, [J

    .line 769
    :goto_1
    array-length v0, v3

    if-ge v1, v0, :cond_2

    .line 770
    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    int-to-long v4, v0

    aput-wide v4, v3, v1

    .line 769
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 772
    :cond_2
    return-object v3
.end method

.method public static getActivitys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1321
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->mActivityList:Ljava/util/List;

    return-object v0
.end method

.method private static getArtworkFromFile(JJ)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 1152
    .line 1155
    cmp-long v1, p2, v2

    if-gez v1, :cond_0

    cmp-long v1, p0, v2

    if-gez v1, :cond_0

    .line 1156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify an album or a song id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1160
    :cond_0
    cmp-long v1, p2, v2

    if-gez v1, :cond_2

    .line 1161
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://media/external/audio/media/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/albumart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1162
    sget-object v2, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "r"

    .line 1163
    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1164
    if-eqz v1, :cond_1

    .line 1165
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 1166
    const/4 v2, 0x0

    sget-object v3, Lcn/nubia/music/utils/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1180
    :cond_1
    :goto_0
    return-object v0

    .line 1169
    :cond_2
    sget-object v1, Lcn/nubia/music/utils/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1170
    sget-object v2, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "r"

    .line 1171
    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1172
    if-eqz v1, :cond_1

    .line 1173
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 1174
    const/4 v2, 0x0

    sget-object v3, Lcn/nubia/music/utils/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1178
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1177
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static getAudioIdByPlaylistId(Landroid/content/ContentResolver;I)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1607
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    move-object v0, v6

    .line 1629
    :goto_0
    return-object v0

    .line 1610
    :cond_0
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1613
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://nubia.music.preset/playlistDatas/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1614
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1616
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1619
    :cond_1
    const-string v0, "audio_id"

    .line 1620
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1619
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    .line 1621
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1622
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 1625
    :cond_2
    if-eqz v6, :cond_3

    .line 1626
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v7

    .line 1629
    goto :goto_0

    .line 1625
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1626
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getAudioIdBySongId(Ljava/lang/String;)J
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 983
    const-wide/16 v6, -0x1

    .line 984
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/audios"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "song_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 988
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 989
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 992
    :goto_0
    if-eqz v2, :cond_0

    .line 993
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 995
    :cond_0
    return-wide v0

    :cond_1
    move-wide v0, v6

    goto :goto_0
.end method

.method public static getAudioIdFromFavorite(Landroid/content/ContentResolver;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1580
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1583
    :try_start_0
    const-string v0, "content://nubia.music.preset/favorites"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1584
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1586
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1589
    :cond_0
    const-string v0, "audio_id"

    .line 1590
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1589
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v2, v0

    .line 1591
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1592
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 1595
    :cond_1
    if-eqz v1, :cond_2

    .line 1596
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1599
    :cond_2
    return-object v7

    .line 1595
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_3

    .line 1596
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 1595
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public static getBitmap(JJZ)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1093
    cmp-long v0, p2, v2

    if-gez v0, :cond_3

    .line 1097
    cmp-long v0, p0, v2

    if-ltz v0, :cond_1

    .line 1098
    const-wide/16 v2, -0x1

    invoke-static {p0, p1, v2, v3}, Lcn/nubia/music/utils/MusicUtils;->getArtworkFromFile(JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1099
    if-eqz v0, :cond_1

    .line 1144
    :cond_0
    :goto_0
    return-object v0

    .line 1103
    :cond_1
    if-eqz p4, :cond_2

    .line 1104
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->getDefaultArtwork()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1106
    goto :goto_0

    .line 1109
    :cond_3
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1110
    sget-object v2, Lcn/nubia/music/utils/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1111
    if-eqz v2, :cond_7

    .line 1114
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 1115
    const/4 v0, 0x0

    sget-object v2, Lcn/nubia/music/utils/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1136
    if-eqz v1, :cond_0

    .line 1137
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1139
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1117
    :catch_1
    move-exception v0

    .line 1121
    :try_start_2
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/music/utils/MusicUtils;->getArtworkFromFile(JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1122
    if-eqz v0, :cond_4

    .line 1123
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1124
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1125
    if-nez v0, :cond_5

    if-eqz p4, :cond_5

    .line 1126
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->getDefaultArtwork()Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 1136
    if-eqz v1, :cond_0

    .line 1137
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1139
    :catch_2
    move-exception v1

    goto :goto_0

    .line 1129
    :cond_4
    if-eqz p4, :cond_5

    .line 1130
    :try_start_4
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->getDefaultArtwork()Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 1136
    if-eqz v1, :cond_0

    .line 1137
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 1139
    :catch_3
    move-exception v1

    goto :goto_0

    .line 1136
    :cond_5
    if-eqz v1, :cond_0

    .line 1137
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 1139
    :catch_4
    move-exception v1

    goto :goto_0

    .line 1135
    :catchall_0
    move-exception v0

    .line 1136
    if-eqz v1, :cond_6

    .line 1137
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1140
    :cond_6
    :goto_1
    throw v0

    :cond_7
    move-object v0, v1

    .line 1144
    goto :goto_0

    .line 1139
    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public static getCacheDirPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1891
    .line 1892
    const-string v0, "mounted"

    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1893
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcn/nubia/music/app/StorageMgr;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1895
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCacheDirPath ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1896
    return-object v0

    .line 1894
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCard2State(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2365
    :try_start_0
    const-string v0, "android.telephony.TelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2366
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 2367
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2368
    const-string v3, "hasIccCard"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2369
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2370
    if-nez v0, :cond_0

    move v0, v1

    .line 2382
    :goto_0
    return v0

    .line 2373
    :cond_0
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 2374
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 2377
    :cond_1
    const-string v0, "getCard2State   result is not Boolean"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v1

    .line 2382
    goto :goto_0

    .line 2379
    :catch_0
    move-exception v0

    .line 2380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getCardId()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1301
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1302
    const-string v1, "content://media/external/fs_id"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1303
    const/4 v0, -0x1

    .line 1304
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1305
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1306
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1308
    :cond_0
    return v0
.end method

.method private static getDefaultArtwork()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 1185
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->mDefaultAlbumConver:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 1186
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->initDefaultAlbumCover()[Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/utils/MusicUtils;->mDefaultAlbumConver:[Landroid/graphics/Bitmap;

    .line 1189
    :cond_0
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->mDefaultAlbumConver:[Landroid/graphics/Bitmap;

    sget v1, Lcn/nubia/music/utils/MusicUtils;->mAlbumCoverId:I

    aget-object v0, v0, v1

    .line 1191
    return-object v0
.end method

.method public static getDolbyState()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2339
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2340
    const-string v2, "get"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2341
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "dolby.ds.state"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2345
    :goto_0
    return-object v0

    .line 2342
    :catch_0
    move-exception v0

    .line 2343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getDownLoadMusicPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 3190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDownLoadMusicPath,songId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 3191
    const-string v3, "64"

    .line 3192
    const-string v0, "mp3"

    .line 3195
    :try_start_0
    invoke-static {p0, p4}, Lcn/nubia/music/utils/MusicUtils;->getSongRateAndPostfixDownLoad(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 3196
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 3197
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3198
    sget v0, Lcn/nubia/music/utils/MusicUtils;->COLUM_RATE_INDEX:I

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3199
    sget v0, Lcn/nubia/music/utils/MusicUtils;->COLUM_POSTFIX_INDEX:I

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "postFix:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";bitRate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3204
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    .line 3205
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 3204
    :cond_1
    if-eqz v1, :cond_2

    .line 3205
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3210
    :cond_2
    if-nez v3, :cond_5

    .line 3211
    invoke-static {p0}, Lcn/nubia/music/utils/DownloadUtil;->getDownloadQuality(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3214
    :goto_2
    if-nez v0, :cond_3

    .line 3215
    const-string v0, "mp3"

    .line 3218
    :cond_3
    sget-object v3, Lcn/nubia/music/utils/MusicUtils;->sCachePath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3219
    const-string v3, "test muti process empty path"

    invoke-static {v3}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 3220
    invoke-static {p0}, Lcn/nubia/music/app/download/PathManager;->getInstance(Landroid/content/Context;)Lcn/nubia/music/app/download/PathManager;

    move-result-object v3

    sget-object v4, Lcn/nubia/music/app/download/PathManager$PathTag;->SONGS:Lcn/nubia/music/app/download/PathManager$PathTag;

    invoke-virtual {v3, v4}, Lcn/nubia/music/app/download/PathManager;->getCachePath(Lcn/nubia/music/app/download/PathManager$PathTag;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcn/nubia/music/utils/MusicUtils;->sCachePath:Ljava/lang/String;

    .line 3225
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/nubia/music/utils/MusicUtils;->sCachePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3226
    invoke-static {p1, p2, p3, v1, v2}, Lcn/nubia/music/utils/MusicHelper;->generateFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3228
    return-object v0

    .line 3222
    :cond_4
    const-string v3, "test muti process not empty path"

    invoke-static {v3}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    goto :goto_3

    .line 3204
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :cond_5
    move-object v1, v3

    goto :goto_2
.end method

.method public static getDownloadInfoOfSongs(Landroid/content/Context;Ljava/util/List;)Landroid/database/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 3149
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 3172
    :cond_0
    :goto_0
    return-object v4

    .line 3153
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3154
    const-string v0, "song_id IN ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3156
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v0, v1

    .line 3157
    :goto_1
    if-ge v0, v2, :cond_3

    .line 3158
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3159
    add-int/lit8 v5, v2, -0x1

    if-ge v0, v5, :cond_2

    .line 3160
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3157
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3163
    :cond_3
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3164
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "status"

    aput-object v0, v2, v1

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    const-string v0, "song_id"

    aput-object v0, v2, v6

    .line 3168
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "nubiaMp3DB.db"

    invoke-static {v0, v1, v6}, Lcn/nubia/music/app/db/MusicDBHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcn/nubia/music/app/db/MusicDBHelper;

    move-result-object v0

    .line 3170
    invoke-static {}, Lcn/nubia/music/app/db/MusicDBConfig$DownloadItemColumns;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 3169
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/music/app/db/MusicDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0
.end method

.method public static getFilePostfix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3421
    if-eqz p0, :cond_0

    .line 3422
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 3423
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3424
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3427
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getFileSize(Ljava/io/File;)J
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 3382
    .line 3383
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3384
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 3385
    if-eqz v3, :cond_0

    array-length v2, v3

    if-nez v2, :cond_1

    .line 3394
    :cond_0
    :goto_0
    return-wide v0

    .line 3388
    :cond_1
    array-length v6, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_0

    aget-object v4, v3, v2

    .line 3389
    invoke-static {v4}, Lcn/nubia/music/utils/MusicUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v4, v0

    .line 3388
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v4

    goto :goto_1

    .line 3392
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public static getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3431
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 3432
    if-ltz v0, :cond_0

    .line 3433
    add-int/lit8 v0, v0, 0x1

    .line 3434
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3435
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 3438
    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 3439
    if-lez v0, :cond_1

    .line 3440
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 3442
    :cond_1
    return-object p0
.end method

.method public static getFirstLetter(C)C
    .locals 1

    .prologue
    .line 2037
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    .line 2040
    :goto_0
    return p0

    :cond_0
    const/16 p0, 0x23

    goto :goto_0
.end method

.method public static getForegroundActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 6

    .prologue
    .line 3273
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3274
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 3275
    const/4 v1, 0x0

    .line 3276
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3277
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 3278
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3280
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->getActivitys()Ljava/util/List;

    move-result-object v0

    .line 3281
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 3282
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 3283
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 3284
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3293
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getFreeSize(Ljava/lang/String;)J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 3360
    if-nez p0, :cond_0

    .line 3369
    :goto_0
    return-wide v0

    .line 3364
    :cond_0
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3365
    invoke-virtual {v2}, Landroid/os/StatFs;->getFreeBlocks()I

    move-result v3

    int-to-long v4, v3

    .line 3366
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    .line 3367
    mul-long/2addr v0, v4

    goto :goto_0

    .line 3368
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getLocalIdlist()[J
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1003
    :try_start_0
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/audios"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "type=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1007
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1008
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v6, v0, [J

    move v0, v7

    .line 1011
    :cond_0
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v6, v0

    .line 1012
    add-int/lit8 v0, v0, 0x1

    .line 1014
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_0

    .line 1017
    :cond_1
    if-eqz v1, :cond_2

    .line 1018
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1023
    :cond_2
    return-object v6

    .line 1017
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_3

    .line 1018
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1019
    :cond_3
    throw v0

    .line 1017
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public static getNetSongAudioId(Ljava/lang/String;)J
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 1811
    const-wide/16 v6, -0x1

    .line 1813
    const-string v0, "content://nubia.music.preset/audios"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1814
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "song_id = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1816
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v8

    .line 1818
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 1816
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1819
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1820
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1824
    :goto_0
    if-eqz v2, :cond_0

    .line 1825
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1828
    :cond_0
    return-wide v0

    :cond_1
    move-wide v0, v6

    goto :goto_0
.end method

.method public static getNubiaId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 160
    const/4 v1, 0x0

    .line 161
    const-string v2, "com.ztemt"

    .line 162
    const-string v3, "userId"

    .line 164
    :try_start_0
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    const-string v4, "account"

    .line 165
    invoke-virtual {v0, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    .line 166
    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 167
    if-eqz v2, :cond_0

    array-length v4, v2

    if-lez v4, :cond_0

    .line 168
    const/4 v4, 0x0

    aget-object v2, v2, v4

    .line 169
    invoke-virtual {v0, v2, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v0, v1

    .line 171
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nubiaId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    :goto_1
    return-object v0

    .line 172
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 173
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 172
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static getPhoneStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3318
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3319
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->getSecondaryStorageMgr()Ljava/lang/String;

    move-result-object v0

    .line 3321
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getExternalStorageMgr()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPinYin(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2028
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2029
    const-string v0, "#"

    .line 2033
    :goto_0
    return-object v0

    .line 2032
    :cond_0
    invoke-static {}, Lcn/nubia/music/utils/CharacterParser;->getInstance()Lcn/nubia/music/utils/CharacterParser;

    move-result-object v0

    .line 2033
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/CharacterParser;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getPlaylistUnion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT audio_id FROM playlistdatas WHERE playlist_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1718
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPostfixWithDot(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3414
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3417
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1936
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1937
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1938
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1939
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1940
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1942
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 1943
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 1945
    int-to-float v6, v4

    int-to-float v7, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v6, v7, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1946
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1947
    invoke-virtual {v2, v0, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1949
    return-object v0
.end method

.method public static getSdStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3337
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3338
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->getSecondaryStorageMgr()Ljava/lang/String;

    move-result-object v0

    .line 3340
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getExternalStorageMgr()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSecondaryStorageMgr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3326
    const/16 v0, 0x17

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v1, :cond_0

    .line 3327
    const-string v0, "SECONDARY_STORAGE"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3333
    :goto_0
    return-object v0

    .line 3329
    :cond_0
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getSecondaryStorageMgr()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 3331
    :catch_0
    move-exception v0

    .line 3333
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSelectedFiles(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2154
    const/4 v0, 0x0

    .line 2155
    if-eqz p0, :cond_2

    .line 2156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2157
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2158
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2159
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2160
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2157
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 2164
    :cond_2
    return-object v0
.end method

.method public static getSelectedFilesId(Ljava/util/ArrayList;)[J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)[J"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 2173
    .line 2174
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 2175
    :cond_0
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->sEmptyList:[J

    .line 2215
    :cond_1
    return-object v0

    .line 2177
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 2178
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2182
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2185
    const-string v0, "_data IN ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v6

    .line 2186
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_4

    .line 2187
    if-nez v0, :cond_3

    .line 2188
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v3, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2186
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2190
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ",\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v3, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2193
    :cond_4
    const-string v0, " )"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2195
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2196
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    .line 2195
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2197
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2198
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v2, v0, [J

    move v0, v6

    .line 2201
    :cond_5
    const-string v3, "_id"

    .line 2202
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 2201
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 2203
    add-int/lit8 v0, v0, 0x1

    .line 2204
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_5

    move-object v0, v2

    .line 2208
    :goto_2
    if-eqz v1, :cond_6

    .line 2209
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2212
    :cond_6
    :goto_3
    array-length v1, v0

    if-ge v6, v1, :cond_1

    .line 2213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSongsOfSelectedFiles --- parentId -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-wide v2, v0, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 2212
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    move-object v0, v2

    goto :goto_2
.end method

.method public static getSongDownLoad(Landroid/content/Context;J)Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 3113
    const-string v3, "song_id=?"

    .line 3114
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "status"

    aput-object v0, v2, v1

    const-string v0, "_data"

    aput-object v0, v2, v4

    .line 3117
    new-array v4, v4, [Ljava/lang/String;

    .line 3118
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 3120
    const-string v0, "nubiaMp3DB.db"

    invoke-static {p0, v0, v5}, Lcn/nubia/music/app/db/MusicDBHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcn/nubia/music/app/db/MusicDBHelper;

    move-result-object v0

    .line 3122
    invoke-static {}, Lcn/nubia/music/app/db/MusicDBConfig$DownloadItemColumns;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v5, 0x0

    .line 3121
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/music/app/db/MusicDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3125
    return-object v0
.end method

.method public static getSongDownloadStatus(Landroid/content/Context;J)I
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3075
    const-string v3, "song_id=?"

    .line 3076
    new-array v2, v1, [Ljava/lang/String;

    const-string v0, "status"

    aput-object v0, v2, v6

    const-string v0, "_data"

    aput-object v0, v2, v7

    .line 3079
    new-array v4, v7, [Ljava/lang/String;

    .line 3080
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    .line 3082
    const-string v0, "nubiaMp3DB.db"

    invoke-static {p0, v0, v1}, Lcn/nubia/music/app/db/MusicDBHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcn/nubia/music/app/db/MusicDBHelper;

    move-result-object v0

    .line 3084
    invoke-static {}, Lcn/nubia/music/app/db/MusicDBConfig$DownloadItemColumns;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    .line 3083
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/music/app/db/MusicDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3087
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 3088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSongDownloadStatus() cursor.getCount()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 3089
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3091
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3094
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3095
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3098
    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    move v0, v6

    .line 3108
    :cond_2
    :goto_0
    return v0

    .line 3102
    :cond_3
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    .line 3105
    :goto_1
    if-eqz v1, :cond_2

    .line 3106
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    move v0, v6

    goto :goto_1
.end method

.method public static getSongListCursorOfSelectedFiles(Ljava/util/ArrayList;)Landroid/database/Cursor;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 2508
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 2543
    :cond_0
    :goto_0
    return-object v4

    .line 2514
    :cond_1
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2515
    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-string v5, "_data"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "title"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "_size"

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-string v5, "mime_type"

    aput-object v5, v2, v3

    const/4 v3, 0x5

    const-string v5, "duration"

    aput-object v5, v2, v3

    const/4 v3, 0x6

    const-string v5, "album"

    aput-object v5, v2, v3

    const/4 v3, 0x7

    const-string v5, "artist"

    aput-object v5, v2, v3

    const/16 v3, 0x8

    const-string v5, "album_id"

    aput-object v5, v2, v3

    const/16 v3, 0x9

    const-string v5, "date_modified"

    aput-object v5, v2, v3

    .line 2523
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 2524
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    .line 2525
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2527
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2529
    :goto_1
    array-length v7, v3

    if-ge v0, v7, :cond_3

    .line 2530
    aget-object v7, v3, v0

    invoke-static {v7}, Lcn/nubia/music/utils/MusicUtils;->replaceSepcialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v0

    .line 2531
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\'%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v0

    .line 2532
    if-nez v0, :cond_2

    .line 2533
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_data LIKE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2529
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2535
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " OR _data LIKE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2540
    :cond_3
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "title_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public static getSongListForAlbums(Landroid/content/Context;[J)[J
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 262
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 263
    :cond_0
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->sEmptyList:[J

    .line 285
    :goto_0
    return-object v0

    .line 265
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v0

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    const-string v3, "type = 0 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v3, " AND album_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_3

    .line 272
    aget-wide v4, p1, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 273
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    .line 274
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 277
    :cond_3
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string v0, "content://nubia.music.preset/audios"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "title_key"

    invoke-static {v0, v1, v2, v3, v4}, Lcn/nubia/music/utils/MusicUtils;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 280
    if-eqz v1, :cond_4

    .line 281
    invoke-static {v1}, Lcn/nubia/music/utils/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v0

    .line 282
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 285
    :cond_4
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->sEmptyList:[J

    goto :goto_0
.end method

.method public static getSongListForArtists(Landroid/content/Context;[J)[J
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 235
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 236
    :cond_0
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->sEmptyList:[J

    .line 258
    :goto_0
    return-object v0

    .line 238
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v0

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    const-string v3, "type = 0 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const-string v3, " AND artist_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_3

    .line 245
    aget-wide v4, p1, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 246
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    .line 247
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 250
    :cond_3
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string v0, "content://nubia.music.preset/audios"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "title_key"

    invoke-static {v0, v1, v2, v3, v4}, Lcn/nubia/music/utils/MusicUtils;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 253
    if-eqz v1, :cond_4

    .line 254
    invoke-static {v1}, Lcn/nubia/music/utils/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v0

    .line 255
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 258
    :cond_4
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->sEmptyList:[J

    goto :goto_0
.end method

.method public static getSongListForCursor(Landroid/database/Cursor;)[J
    .locals 6

    .prologue
    .line 218
    if-nez p0, :cond_1

    .line 219
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->sEmptyList:[J

    .line 230
    :cond_0
    return-object v0

    .line 221
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 222
    new-array v0, v2, [J

    .line 223
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 225
    const-string v1, "_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 226
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 227
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 228
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getSongListForPlaylist(Landroid/content/Context;J)[J
    .locals 5

    .prologue
    .line 290
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/music/utils/MusicUtils;->getPlaylistUnion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id IN ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const-string v2, "content://nubia.music.preset/audios"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "title_key"

    invoke-static {v2, v0, v1, v3, v4}, Lcn/nubia/music/utils/MusicUtils;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 301
    if-eqz v1, :cond_0

    .line 302
    invoke-static {v1}, Lcn/nubia/music/utils/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[J

    move-result-object v0

    .line 303
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 306
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->sEmptyList:[J

    goto :goto_0
.end method

.method public static getSongRateAndPostfixDownLoad(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 3130
    const-string v3, "song_id=?"

    .line 3131
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "bitrate"

    aput-object v0, v2, v1

    const-string v0, "postfix"

    aput-object v0, v2, v4

    const-string v0, "_data"

    aput-object v0, v2, v5

    .line 3135
    new-array v4, v4, [Ljava/lang/String;

    .line 3136
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 3138
    const-string v0, "nubiaMp3DB.db"

    invoke-static {p0, v0, v5}, Lcn/nubia/music/app/db/MusicDBHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcn/nubia/music/app/db/MusicDBHelper;

    move-result-object v0

    .line 3140
    invoke-static {}, Lcn/nubia/music/app/db/MusicDBConfig$DownloadItemColumns;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v5, 0x0

    .line 3139
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/music/app/db/MusicDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3143
    return-object v0
.end method

.method public static getSongsListByParentId([J)Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2224
    .line 2225
    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2226
    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "_size"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "mime_type"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "duration"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "album"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "artist"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "album_id"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "date_modified"

    aput-object v4, v2, v3

    .line 2234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2235
    const-string v4, "parent IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2236
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    .line 2237
    aget-wide v4, p0, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2238
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_0

    .line 2239
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2236
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2242
    :cond_1
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2244
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "title_key"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2247
    if-eqz v0, :cond_2

    .line 2248
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 2249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSongsList -- count -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 2251
    :cond_2
    return-object v0
.end method

.method public static getSoundEffectName()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2327
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2328
    const-string v2, "get"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2329
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "audio.effect.name"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2333
    :goto_0
    return-object v0

    .line 2330
    :catch_0
    move-exception v0

    .line 2331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static getStorageFile()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2068
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    const-string v3, "storage"

    .line 2069
    invoke-virtual {v0, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 2070
    if-eqz v0, :cond_1

    .line 2072
    :try_start_0
    const-string v3, "android.os.storage.StorageManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 2073
    const-string v4, "getVolumePaths"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2074
    if-eqz v3, :cond_3

    .line 2075
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2076
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2077
    if-eqz v0, :cond_3

    .line 2078
    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    move-object v3, v0

    .line 2090
    :goto_1
    if-eqz v3, :cond_2

    .line 2091
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    .line 2092
    :goto_2
    array-length v2, v3

    if-ge v0, v2, :cond_2

    .line 2093
    new-instance v2, Ljava/io/File;

    aget-object v4, v3, v0

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2094
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2095
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2092
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2082
    :catch_0
    move-exception v0

    .line 2083
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    move-object v3, v1

    .line 2088
    goto :goto_1

    .line 2084
    :catch_1
    move-exception v0

    .line 2085
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    move-object v3, v1

    .line 2088
    goto :goto_1

    .line 2086
    :catch_2
    move-exception v0

    .line 2087
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

    :cond_1
    move-object v3, v1

    goto :goto_1

    .line 2100
    :cond_2
    return-object v1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static getStoragePathList(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3344
    const-string v0, "storage"

    .line 3345
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 3347
    :try_start_0
    const-class v1, Landroid/os/storage/StorageManager;

    const-string v2, "getVolumePaths"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3348
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 3349
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3352
    :goto_0
    return-object v0

    .line 3350
    :catch_0
    move-exception v0

    .line 3352
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStorageState(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 3297
    if-eqz p1, :cond_0

    .line 3299
    :try_start_0
    const-string v0, "storage"

    .line 3300
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 3301
    const-class v1, Landroid/os/storage/StorageManager;

    const-string v2, "getVolumeState"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3303
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3307
    :goto_0
    return-object v0

    .line 3304
    :catch_0
    move-exception v0

    .line 3307
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getVersionData()Lcn/nubia/upgrade/model/VersionData;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1245
    const-string v1, "versionData"

    invoke-static {v7, v1, v0}, Lcn/nubia/music/utils/SharedPrefersHelper;->getStringSet(ILjava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 1248
    if-eqz v2, :cond_c

    .line 1249
    new-instance v1, Lcn/nubia/upgrade/model/VersionData;

    invoke-direct {v1}, Lcn/nubia/upgrade/model/VersionData;-><init>()V

    .line 1250
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1251
    const-string v3, "#"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1252
    aget-object v3, v0, v7

    const-string v4, "isUpdate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1253
    aget-object v3, v0, v6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcn/nubia/upgrade/model/VersionData;->setUpdate(Z)V

    .line 1254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUpdate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 1256
    :cond_1
    aget-object v3, v0, v7

    const-string v4, "upgradeTime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1257
    aget-object v3, v0, v6

    invoke-virtual {v1, v3}, Lcn/nubia/upgrade/model/VersionData;->setUpgradeTime(Ljava/lang/String;)V

    .line 1258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upgradeTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v0, v0, v6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 1260
    :cond_2
    aget-object v3, v0, v7

    const-string v4, "version"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1261
    aget-object v3, v0, v6

    invoke-virtual {v1, v3}, Lcn/nubia/upgrade/model/VersionData;->setVersion(Ljava/lang/String;)V

    .line 1262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v0, v0, v6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1264
    :cond_3
    aget-object v3, v0, v7

    const-string v4, "upgradeContent"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1265
    aget-object v3, v0, v6

    invoke-virtual {v1, v3}, Lcn/nubia/upgrade/model/VersionData;->setUpgradeContent(Ljava/lang/String;)V

    .line 1266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upgradeContent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v0, v0, v6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1268
    :cond_4
    aget-object v3, v0, v7

    const-string v4, "apkUrl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1269
    aget-object v3, v0, v6

    invoke-virtual {v1, v3}, Lcn/nubia/upgrade/model/VersionData;->setApkUrl(Ljava/lang/String;)V

    .line 1270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apkUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v0, v0, v6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1272
    :cond_5
    aget-object v3, v0, v7

    const-string v4, "checkSumNew"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1273
    aget-object v3, v0, v6

    invoke-virtual {v1, v3}, Lcn/nubia/upgrade/model/VersionData;->setCheckSumNew(Ljava/lang/String;)V

    .line 1274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkSumNew:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v0, v0, v6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1276
    :cond_6
    aget-object v3, v0, v7

    const-string v4, "fromVersionCode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1277
    aget-object v3, v0, v6

    invoke-virtual {v1, v3}, Lcn/nubia/upgrade/model/VersionData;->setFromVersionCode(Ljava/lang/String;)V

    .line 1278
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fromVersionCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v0, v0, v6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1280
    :cond_7
    aget-object v3, v0, v7

    const-string v4, "toVersionCode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1281
    aget-object v3, v0, v6

    invoke-virtual {v1, v3}, Lcn/nubia/upgrade/model/VersionData;->setToVersionCode(Ljava/lang/String;)V

    .line 1282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toVersionCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v0, v0, v6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1284
    :cond_8
    aget-object v3, v0, v7

    const-string v4, "fileSize"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1285
    aget-object v3, v0, v6

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcn/nubia/upgrade/model/VersionData;->setFileSize(J)V

    .line 1286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v0, v0, v6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1288
    :cond_9
    aget-object v3, v0, v7

    const-string v4, "isForce"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1289
    aget-object v3, v0, v6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcn/nubia/upgrade/model/VersionData;->setIsForce(Z)V

    .line 1290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isForce:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v0, v0, v6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1291
    :cond_a
    aget-object v3, v0, v7

    const-string v4, "checkSumPatch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1292
    aget-object v3, v0, v6

    invoke-virtual {v1, v3}, Lcn/nubia/upgrade/model/VersionData;->setCheckSumPatch(Ljava/lang/String;)V

    .line 1293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkSumPatch:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v0, v0, v6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    move-object v0, v1

    .line 1297
    :cond_c
    return-object v0
.end method

.method public static hasFroyo()Z
    .locals 2

    .prologue
    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasGingerbread()Z
    .locals 2

    .prologue
    .line 191
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasHoneycomb()Z
    .locals 2

    .prologue
    .line 195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasHoneycombMR1()Z
    .locals 2

    .prologue
    .line 199
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hashKeyForMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2047
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2048
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 2049
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->toHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2053
    :goto_0
    return-object v0

    .line 2050
    :catch_0
    move-exception v0

    .line 2051
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static hideDatabaseError(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 922
    const v0, 0x7f100168

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 923
    if-eqz v0, :cond_0

    .line 924
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 926
    :cond_0
    const v0, 0x7f100167

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 927
    if-eqz v0, :cond_1

    .line 928
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 931
    :cond_1
    const v0, 0x7f10015a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 932
    if-eqz v0, :cond_2

    .line 933
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 936
    :cond_2
    const v0, 0x7f100072

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 937
    if-eqz v0, :cond_3

    .line 938
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 941
    :cond_3
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 942
    if-eqz v0, :cond_4

    .line 943
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 946
    :cond_4
    const v0, 0x7f100075

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 947
    if-eqz v0, :cond_5

    .line 948
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 950
    :cond_5
    const v0, 0x7f10007a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 951
    if-eqz v0, :cond_6

    .line 952
    check-cast v0, Lcn/nubia/music/ui/MiniMusicPlayBar;

    .line 953
    invoke-virtual {v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->forceVisibility()V

    .line 956
    :cond_6
    return-void
.end method

.method public static initAlbumArtCache()V
    .locals 2

    .prologue
    .line 1052
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getMediaMountedCount()I

    move-result v0

    .line 1053
    sget v1, Lcn/nubia/music/utils/MusicUtils;->sArtCacheId:I

    if-eq v0, v1, :cond_0

    .line 1054
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->clearAlbumArtCache()V

    .line 1055
    sput v0, Lcn/nubia/music/utils/MusicUtils;->sArtCacheId:I

    .line 1057
    :cond_0
    return-void
.end method

.method private static initDefaultAlbumCover()[Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 1220
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    .line 1221
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1222
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1223
    const/4 v2, 0x0

    sget-object v3, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    .line 1224
    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02008d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    const/4 v4, 0x0

    .line 1223
    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1226
    return-object v0
.end method

.method public static insertArtistAvg(Lcn/nubia/music/online/data/ArtistEntry;)V
    .locals 3

    .prologue
    .line 2000
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2002
    const-string v1, "artist"

    iget-object v2, p0, Lcn/nubia/music/online/data/ArtistEntry;->mArtistName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2003
    const-string v1, "avg_80_80"

    iget-object v2, p0, Lcn/nubia/music/online/data/ArtistEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v2, v2, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_80_80:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    const-string v1, "avg_120_120"

    iget-object v2, p0, Lcn/nubia/music/online/data/ArtistEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v2, v2, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_120_120:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2006
    const-string v1, "avg_220_220"

    iget-object v2, p0, Lcn/nubia/music/online/data/ArtistEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v2, v2, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_220_220:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    const-string v1, "avg_330_330"

    iget-object v2, p0, Lcn/nubia/music/online/data/ArtistEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v2, v2, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_330_330:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    const-string v1, "avg_400_400"

    iget-object v2, p0, Lcn/nubia/music/online/data/ArtistEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v2, v2, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_400_400:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    const-string v1, "avg_640_640"

    iget-object v2, p0, Lcn/nubia/music/online/data/ArtistEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v2, v2, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_640_640:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    const-string v1, "avg_720_720"

    iget-object v2, p0, Lcn/nubia/music/online/data/ArtistEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v2, v2, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_720_720:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    sget-object v1, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://nubia.music.preset/artists"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2019
    return-void
.end method

.method public static insertSongInfo(Lcn/nubia/music/online/data/MusicEntry;)J
    .locals 6

    .prologue
    .line 2721
    const v0, 0x7f0b0133

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2722
    const v1, 0x7f0b0134

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2723
    sget-object v2, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2724
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2725
    const-string v4, "song_id"

    iget-object v5, p0, Lcn/nubia/music/online/data/MusicEntry;->mSongId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2728
    const-string v4, "artist_netid"

    iget-object v5, p0, Lcn/nubia/music/online/data/MusicEntry;->mArtistId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2730
    const-string v4, "title"

    iget-object v5, p0, Lcn/nubia/music/online/data/MusicEntry;->mSongName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2731
    const-string v4, "type"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2732
    const-string v4, "duration"

    iget-object v5, p0, Lcn/nubia/music/online/data/MusicEntry;->mDuration:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2733
    const-string v4, "parent_path"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2734
    const-string v4, "data"

    iget-object v5, p0, Lcn/nubia/music/online/data/MusicEntry;->mSongId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2736
    iget-object v4, p0, Lcn/nubia/music/online/data/MusicEntry;->mArtistName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2737
    const-string v4, "artist"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2741
    :goto_0
    iget-object v1, p0, Lcn/nubia/music/online/data/MusicEntry;->mAlbumName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2742
    const-string v1, "album"

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2747
    :goto_1
    iget-object v0, p0, Lcn/nubia/music/online/data/MusicEntry;->mImageUrl:Ljava/lang/String;

    .line 2748
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2749
    const-string v4, "artist"

    iget-object v5, p0, Lcn/nubia/music/online/data/MusicEntry;->mArtistName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2750
    const-string v4, "album"

    iget-object v5, p0, Lcn/nubia/music/online/data/MusicEntry;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2751
    const-string v4, "image_url"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2752
    const-string v0, "image_url_80_80"

    iget-object v4, p0, Lcn/nubia/music/online/data/MusicEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v4, v4, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_80_80:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2753
    const-string v0, "image_url_120_120"

    iget-object v4, p0, Lcn/nubia/music/online/data/MusicEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v4, v4, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_120_120:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2755
    const-string v0, "image_url_220_220"

    iget-object v4, p0, Lcn/nubia/music/online/data/MusicEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v4, v4, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_220_220:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2757
    const-string v0, "image_url_330_330"

    iget-object v4, p0, Lcn/nubia/music/online/data/MusicEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v4, v4, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_330_330:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2759
    const-string v0, "image_url_400_400"

    iget-object v4, p0, Lcn/nubia/music/online/data/MusicEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v4, v4, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_400_400:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2761
    const-string v0, "image_url_640_640"

    iget-object v4, p0, Lcn/nubia/music/online/data/MusicEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v4, v4, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_640_640:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2763
    const-string v0, "image_url_720_720"

    iget-object v4, p0, Lcn/nubia/music/online/data/MusicEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v4, v4, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_720_720:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2766
    const-string v0, "image_path"

    const-string v4, ""

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2767
    const-string v0, "content://nubia.music.preset/iamges"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2769
    const-string v0, "content://nubia.music.preset/musicInfos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 2771
    if-eqz v0, :cond_2

    .line 2772
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 2774
    :goto_2
    return-wide v0

    .line 2739
    :cond_0
    const-string v1, "artist"

    iget-object v4, p0, Lcn/nubia/music/online/data/MusicEntry;->mArtistName:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2744
    :cond_1
    const-string v0, "album"

    iget-object v1, p0, Lcn/nubia/music/online/data/MusicEntry;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2774
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_2
.end method

.method public static insertSongInfoAsync(Lcn/nubia/music/online/data/MusicEntry;)V
    .locals 1

    .prologue
    .line 2778
    new-instance v0, Lcn/nubia/music/utils/MusicUtils$11;

    invoke-direct {v0, p0}, Lcn/nubia/music/utils/MusicUtils$11;-><init>(Lcn/nubia/music/online/data/MusicEntry;)V

    invoke-static {v0}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    .line 2784
    return-void
.end method

.method public static isAlreadyBuyLosslessMusic(J)Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2104
    .line 2105
    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "lossless_music"

    aput-object v3, v2, v1

    .line 2108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "song_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2111
    const-string v4, "content://nubia.music.preset/audios"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v2, v3, v6, v6}, Lcn/nubia/music/utils/MusicUtils;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2114
    if-eqz v2, :cond_1

    .line 2115
    const-string v3, "lossless_music"

    .line 2116
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 2115
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 2117
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2120
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAlreadyBuyLosslessMusic -- isLossless -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 2121
    return v0

    :cond_0
    move v0, v1

    .line 2115
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static isDestroyed(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    .line 3505
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 3506
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    .line 3508
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDolbyAtmosSurpport()Z
    .locals 3

    .prologue
    .line 2319
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 2320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 2321
    const-string v1, "NX531"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NX563"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDoubleSim()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2295
    :try_start_0
    const-string v0, "android.telephony.TelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2296
    const-string v3, "getDefault"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2297
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2299
    const-string v4, "isMultiSimEnabled"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2300
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2301
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 2315
    :goto_0
    return v0

    .line 2305
    :cond_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2306
    const-string v3, "get"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2307
    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "gsm.display.dualcardui"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "false"

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2308
    const-string v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 2309
    goto :goto_0

    .line 2311
    :catch_0
    move-exception v0

    move v0, v1

    .line 2312
    goto :goto_0

    :cond_1
    move v0, v2

    .line 2315
    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 179
    if-nez p0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 203
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFastClicked()Z
    .locals 6

    .prologue
    .line 3494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3495
    sget-wide v2, Lcn/nubia/music/utils/MusicUtils;->firstTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 3496
    sput-wide v0, Lcn/nubia/music/utils/MusicUtils;->firstTime:J

    .line 3497
    const/4 v0, 0x1

    .line 3500
    :goto_0
    return v0

    .line 3499
    :cond_0
    sput-wide v0, Lcn/nubia/music/utils/MusicUtils;->firstTime:J

    .line 3500
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFiliterFile(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2140
    const-string v0, "audio/ogg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/midi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/amr"

    .line 2141
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/amr-wb"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/ogg"

    .line 2142
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/x-midi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/x-mid"

    .line 2143
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/x-m4r"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2144
    :cond_0
    const/4 v0, 0x1

    .line 2146
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFilteredRingtoneFile(Lcn/nubia/music/app/scan/MediaInfo;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2432
    const-string v2, "type_filter"

    invoke-static {v1, v2, v0}, Lcn/nubia/music/utils/SharedPrefersHelper;->getInt(ILjava/lang/String;I)I

    move-result v2

    .line 2435
    iget-object v3, p0, Lcn/nubia/music/app/scan/MediaInfo;->mMimeType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcn/nubia/music/app/scan/MediaInfo;->mMimeType:Ljava/lang/String;

    invoke-static {v3}, Lcn/nubia/music/utils/MusicUtils;->isFiliterFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-ne v0, v2, :cond_0

    .line 2440
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isFilteredShortTimeMedia(Lcn/nubia/music/app/scan/MediaInfo;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2412
    const-string v2, "time_filter"

    invoke-static {v0, v2, v1}, Lcn/nubia/music/utils/SharedPrefersHelper;->getInt(ILjava/lang/String;I)I

    move-result v2

    .line 2414
    iget-wide v4, p0, Lcn/nubia/music/app/scan/MediaInfo;->mDuration:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 2422
    :cond_0
    :goto_0
    return v0

    .line 2418
    :cond_1
    iget-wide v4, p0, Lcn/nubia/music/app/scan/MediaInfo;->mDuration:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-wide/32 v4, 0xea60

    iget-wide v6, p0, Lcn/nubia/music/app/scan/MediaInfo;->mDuration:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    if-ne v1, v2, :cond_0

    move v0, v1

    .line 2420
    goto :goto_0
.end method

.method public static isFilteredSmallFileSizeMedia(Lcn/nubia/music/app/scan/MediaInfo;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2450
    const-string v2, "size_filter"

    invoke-static {v1, v2, v0}, Lcn/nubia/music/utils/SharedPrefersHelper;->getInt(ILjava/lang/String;I)I

    move-result v2

    .line 2453
    iget-wide v4, p0, Lcn/nubia/music/app/scan/MediaInfo;->mFileSize:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-wide/32 v4, 0x7d000

    iget-wide v6, p0, Lcn/nubia/music/app/scan/MediaInfo;->mFileSize:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    if-ne v0, v2, :cond_0

    .line 2458
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isHeadsetOn()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2057
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    const-string v2, "audio"

    .line 2058
    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2059
    if-eqz v0, :cond_2

    .line 2060
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2062
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2060
    goto :goto_0

    :cond_2
    move v0, v1

    .line 2062
    goto :goto_0
.end method

.method public static isImmersion()Z
    .locals 2

    .prologue
    .line 3512
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    .line 3513
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->isNubiaUI30()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3512
    :goto_0
    return v0

    .line 3513
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInPlayList(JJ)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1397
    const-wide/16 v2, -0x1

    cmp-long v0, p0, v2

    if-nez v0, :cond_0

    move v0, v1

    .line 1408
    :goto_0
    return v0

    .line 1400
    :cond_0
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    long-to-int v2, p0

    invoke-static {v0, v2}, Lcn/nubia/music/utils/MusicUtils;->getAudioIdByPlaylistId(Landroid/content/ContentResolver;I)Ljava/util/Set;

    move-result-object v0

    .line 1403
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1404
    cmp-long v0, v4, p2

    if-nez v0, :cond_1

    .line 1405
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1408
    goto :goto_0
.end method

.method public static isInPlayList(J[J)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1412
    const-wide/16 v2, -0x1

    cmp-long v1, p0, v2

    if-nez v1, :cond_0

    .line 1424
    :goto_0
    return v0

    .line 1415
    :cond_0
    sget-object v1, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    long-to-int v2, p0

    invoke-static {v1, v2}, Lcn/nubia/music/utils/MusicUtils;->getAudioIdByPlaylistId(Landroid/content/ContentResolver;I)Ljava/util/Set;

    move-result-object v1

    .line 1418
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1420
    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_1

    .line 1421
    aget-wide v4, p2, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1420
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1424
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isListInFavoList([J)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1643
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    .line 1644
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1643
    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->getAudioIdFromFavorite(Landroid/content/ContentResolver;)Ljava/util/Set;

    move-result-object v2

    .line 1645
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    array-length v0, p0

    .line 1646
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-le v0, v3, :cond_1

    .line 1656
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 1650
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 1651
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1650
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1656
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isNubiaManufacturer()Z
    .locals 1

    .prologue
    .line 2023
    const/4 v0, 0x1

    return v0
.end method

.method public static isNubiaUI30()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 3518
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 3519
    const-string v2, "get"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 3521
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ro.build.nubia.rom.code"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, ""

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3523
    const-string v2, "V3.0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    .line 3533
    :goto_0
    return v0

    .line 3524
    :catch_0
    move-exception v0

    .line 3525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    :goto_1
    move v0, v1

    .line 3533
    goto :goto_0

    .line 3526
    :catch_1
    move-exception v0

    .line 3527
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 3528
    :catch_2
    move-exception v0

    .line 3529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 3530
    :catch_3
    move-exception v0

    .line 3531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static isPlayServiceRun()Z
    .locals 3

    .prologue
    .line 2128
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    sget-object v1, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    const-string v1, "activity"

    .line 2129
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2130
    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 2131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 2132
    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cn.nubia.music.MediaPlaybackService"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2133
    const/4 v0, 0x1

    .line 2136
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRunMonkey()Z
    .locals 1

    .prologue
    .line 2578
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    return v0
.end method

.method public static isSongLocal([J)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3041
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 3071
    :cond_0
    :goto_0
    return v1

    .line 3045
    :cond_1
    new-array v3, v2, [Ljava/lang/String;

    const-string v0, "type"

    aput-object v0, v3, v1

    .line 3048
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3049
    const-string v0, "_id IN ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 3050
    :goto_1
    array-length v5, p0

    if-ge v0, v5, :cond_3

    .line 3051
    aget-wide v6, p0, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3052
    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_2

    .line 3053
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3050
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3056
    :cond_3
    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3057
    const-string v0, "content://nubia.music.preset/audios"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "title_key"

    invoke-static {v0, v3, v4, v5, v6}, Lcn/nubia/music/utils/MusicUtils;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3059
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3060
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_4

    .line 3061
    const-string v3, "type"

    .line 3062
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 3061
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3063
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    .line 3069
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3067
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2
.end method

.method public static isStorageMounted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 3311
    invoke-static {p0, p1}, Lcn/nubia/music/utils/MusicUtils;->getStorageState(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3312
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isValidSourceOfRingtone(J)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1463
    .line 1464
    const-string v1, "content://nubia.music.preset/audios"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1465
    invoke-static {v1, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1466
    invoke-static {v1, v0, v0, v0, v0}, Lcn/nubia/music/utils/MusicUtils;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1468
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1469
    const-string v1, "data"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1470
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1471
    const-string v1, "isValidSourceOfRingtone isEmpty"

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 1472
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1493
    :goto_0
    return-object v0

    .line 1476
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1477
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1478
    const-string v1, "isValidSourceOfRingtone File unexist"

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 1479
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1484
    :cond_1
    if-eqz v2, :cond_2

    .line 1485
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1487
    :cond_2
    const-string v1, "isValidSourceOfRingtone query null"

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1490
    :cond_3
    if-eqz v2, :cond_4

    .line 1491
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v1

    .line 1493
    goto :goto_0
.end method

.method public static isWrongFileName(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2565
    const-string v1, "[?*.:|\\/\"<>]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2566
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2567
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2574
    :cond_0
    :goto_0
    return v0

    .line 2571
    :cond_1
    if-eqz p0, :cond_2

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2574
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeAlbumsSongsLabel(IIZ)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1978
    sget-object v1, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1979
    if-ne p1, v7, :cond_0

    .line 1980
    const v1, 0x7f0b00b9

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1995
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1982
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1983
    if-nez p2, :cond_1

    .line 1984
    const v2, 0x7f0a0002

    invoke-virtual {v1, v2, p0}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1985
    sget-object v3, Lcn/nubia/music/utils/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1986
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->checkoutAndGetFormatter()Ljava/util/Formatter;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v2, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1987
    sget-object v2, Lcn/nubia/music/utils/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1988
    const v2, 0x7f0b0224

    invoke-static {v2}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1990
    :cond_1
    const v2, 0x7f0a0003

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1991
    sget-object v2, Lcn/nubia/music/utils/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1992
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->checkoutAndGetFormatter()Ljava/util/Formatter;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1993
    sget-object v1, Lcn/nubia/music/utils/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static makeInsertItems([JIIJ)V
    .locals 7

    .prologue
    .line 662
    add-int v0, p1, p2

    array-length v1, p0

    if-le v0, v1, :cond_0

    .line 663
    array-length v0, p0

    sub-int p2, v0, p1

    .line 667
    :cond_0
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    array-length v0, v0

    if-eq v0, p2, :cond_2

    .line 668
    :cond_1
    new-array v0, p2, [Landroid/content/ContentValues;

    sput-object v0, Lcn/nubia/music/utils/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    .line 671
    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_4

    .line 672
    sget-object v1, Lcn/nubia/music/utils/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 673
    sget-object v1, Lcn/nubia/music/utils/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    aput-object v2, v1, v0

    .line 676
    :cond_3
    sget-object v1, Lcn/nubia/music/utils/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    aget-object v1, v1, v0

    const-string v2, "playlist_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 678
    sget-object v1, Lcn/nubia/music/utils/MusicUtils;->sContentValuesCache:[Landroid/content/ContentValues;

    aget-object v1, v1, v0

    const-string v2, "audio_id"

    add-int v3, p1, v0

    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 671
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 680
    :cond_4
    return-void
.end method

.method private static makeInsertItemsFavorite([JII)V
    .locals 6

    .prologue
    .line 743
    add-int v0, p1, p2

    array-length v1, p0

    if-le v0, v1, :cond_0

    .line 744
    array-length v0, p0

    sub-int p2, v0, p1

    .line 748
    :cond_0
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->sFavContentValuesCache:[Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->sFavContentValuesCache:[Landroid/content/ContentValues;

    array-length v0, v0

    if-eq v0, p2, :cond_2

    .line 749
    :cond_1
    new-array v0, p2, [Landroid/content/ContentValues;

    sput-object v0, Lcn/nubia/music/utils/MusicUtils;->sFavContentValuesCache:[Landroid/content/ContentValues;

    .line 752
    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_4

    .line 753
    sget-object v1, Lcn/nubia/music/utils/MusicUtils;->sFavContentValuesCache:[Landroid/content/ContentValues;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 754
    sget-object v1, Lcn/nubia/music/utils/MusicUtils;->sFavContentValuesCache:[Landroid/content/ContentValues;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    aput-object v2, v1, v0

    .line 757
    :cond_3
    sget-object v1, Lcn/nubia/music/utils/MusicUtils;->sFavContentValuesCache:[Landroid/content/ContentValues;

    aget-object v1, v1, v0

    const-string v2, "audio_id"

    add-int v3, p1, v0

    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 752
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 759
    :cond_4
    return-void
.end method

.method public static makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 320
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "playlist_id"

    aput-object v0, v2, v7

    const-string v0, "playlist_name"

    aput-object v0, v2, v6

    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 325
    if-nez v0, :cond_1

    .line 326
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "resolver = null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    const-string v3, "playlist_name != \'\' and playlist_type = 1"

    .line 331
    const-string v1, "content://nubia.music.preset/playlists"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    const-string v5, "playlist_name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 333
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    .line 334
    const/4 v1, 0x4

    const v2, 0x7f0b00a8

    invoke-interface {p1, v6, v1, v7, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 335
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 336
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 337
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    .line 338
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 339
    const-string v2, "playlist"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 340
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "beansprout_favorite"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 341
    const/4 v2, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v7, v3}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 343
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 346
    :cond_3
    if-eqz v0, :cond_0

    .line 347
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static makeTimeString(J)Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v2, 0xe10

    const/4 v4, 0x0

    const-wide/16 v6, 0x3c

    .line 963
    cmp-long v0, p0, v2

    if-gez v0, :cond_0

    const v0, 0x7f0b0226

    :goto_0
    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 969
    sget-object v1, Lcn/nubia/music/utils/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 971
    sget-object v1, Lcn/nubia/music/utils/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 972
    div-long v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 973
    const/4 v2, 0x1

    div-long v4, p0, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 974
    const/4 v2, 0x2

    div-long v4, p0, v6

    rem-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 975
    const/4 v2, 0x3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 976
    const/4 v2, 0x4

    rem-long v4, p0, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 978
    sget-object v2, Lcn/nubia/music/utils/MusicUtils;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v2, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 963
    :cond_0
    const v0, 0x7f0b0225

    goto :goto_0
.end method

.method public static netSongInFavoriteList(Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 1722
    .line 1724
    const-string v0, "content://nubia.music.preset/audios"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1725
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "song_id = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1727
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v9

    .line 1729
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 1727
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1730
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1731
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1732
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1734
    const-string v0, "content://nubia.music.preset/favorites"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1737
    sget-object v1, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1739
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v8

    .line 1743
    :goto_0
    if-eqz v0, :cond_0

    .line 1744
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1746
    :cond_0
    return v1

    :cond_1
    move v1, v9

    goto :goto_0
.end method

.method public static netSongInFavoriteList([Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1751
    if-nez p0, :cond_1

    .line 1807
    :cond_0
    :goto_0
    return v6

    .line 1756
    :cond_1
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1757
    const-string v1, "content://nubia.music.preset/audios"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1758
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1759
    const-string v2, "song_id IN ( "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v6

    .line 1760
    :goto_1
    array-length v5, p0

    if-ge v2, v5, :cond_3

    .line 1761
    if-nez v2, :cond_2

    .line 1762
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v8, p0, v2

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1760
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1764
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ",\'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v8, p0, v2

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1767
    :cond_3
    const-string v2, " )"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1768
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "netSongInFavoriteList x "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1769
    new-array v2, v7, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v6

    .line 1771
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 1769
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1773
    const-string v2, "netSongInFavoriteList "

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1774
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1775
    array-length v2, p0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 1776
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1780
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1781
    const-string v3, "audio_id IN ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1783
    :cond_5
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1784
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-nez v3, :cond_7

    .line 1785
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1789
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1791
    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1792
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "netSongInFavoriteList "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1796
    const-string v1, "content://nubia.music.preset/favorites"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1797
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v4

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1800
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    array-length v1, p0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_6

    move v6, v7

    .line 1804
    :cond_6
    :goto_4
    if-eqz v0, :cond_0

    .line 1805
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1787
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    move-object v0, v1

    goto :goto_4
.end method

.method public static notifyCurrentAlbumUpdate()V
    .locals 2

    .prologue
    .line 1069
    const-string v0, "musicUtils send broadcast"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 1070
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.bean.music.preset.CurrentAlbumChange"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1071
    sget-object v1, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    .line 1072
    return-void
.end method

.method public static onlyPlayInWifi()Z
    .locals 3

    .prologue
    .line 3470
    const/4 v0, 0x0

    const-string v1, "only_wifi_download_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/SharedPrefersHelper;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 821
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcn/nubia/music/utils/MusicUtils;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 798
    .line 800
    :try_start_0
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 801
    if-nez v0, :cond_0

    move-object v0, v6

    .line 814
    :goto_0
    return-object v0

    .line 804
    :cond_0
    if-lez p5, :cond_2

    .line 805
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "limit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    :goto_1
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 807
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 809
    :catch_0
    move-exception v0

    .line 810
    if-eqz v6, :cond_1

    .line 811
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v6

    .line 814
    goto :goto_0

    :cond_2
    move-object v1, p0

    goto :goto_1
.end method

.method public static queryMusicPic2(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2656
    .line 2657
    invoke-static {p2}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    .line 2658
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2681
    :cond_0
    :goto_0
    return-object v2

    .line 2661
    :cond_1
    const-string v0, "content://nubia.music.preset/album_infos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2662
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "artist = \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND album = \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2665
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2666
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    .line 2665
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2668
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "col:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "album_art"

    .line 2671
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "num row:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2672
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2669
    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 2673
    const-string v1, "album_art"

    .line 2674
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 2673
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2677
    :cond_2
    if-eqz v0, :cond_0

    .line 2678
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public static queryMusicPicForAlbum(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2690
    .line 2691
    invoke-static {p2}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    .line 2692
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2715
    :cond_0
    :goto_0
    return-object v2

    .line 2695
    :cond_1
    const-string v0, "content://nubia.music.preset/audios"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2696
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "artist = \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->sqliteTransfer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND album = \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcn/nubia/music/utils/MusicUtils;->sqliteTransfer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2699
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2700
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    .line 2699
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2702
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "col:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "album_art"

    .line 2705
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "num row:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2706
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2703
    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 2707
    const-string v1, "album_art"

    .line 2708
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 2707
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2711
    :cond_2
    if-eqz v0, :cond_0

    .line 2712
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private static queryMusicPicFromAlbumInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1832
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1865
    :cond_0
    :goto_0
    return-object v2

    .line 1836
    :cond_1
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1837
    const-string v1, "content://nubia.music.preset/album_infos"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1838
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1840
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1841
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1842
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND album = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1843
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1844
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1845
    const-string v1, "album_art"

    .line 1846
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1845
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1862
    :cond_2
    if-eqz v0, :cond_0

    .line 1863
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1849
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1850
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1851
    if-eqz v0, :cond_2

    .line 1852
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1853
    const-string v1, "album_art"

    .line 1854
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1853
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1855
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1852
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method

.method private static queryMusicPicFromImageInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1869
    .line 1870
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1886
    :cond_0
    :goto_0
    return-object v2

    .line 1873
    :cond_1
    const-string v0, "content://nubia.music.preset/image_infos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1874
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "artist = \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1876
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1877
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    .line 1876
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1878
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1879
    const-string v1, "image_url"

    .line 1880
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1879
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1883
    :cond_2
    if-eqz v0, :cond_0

    .line 1884
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static readTag(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3244
    .line 3245
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3246
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3268
    :cond_0
    :goto_0
    return-object v0

    .line 3250
    :cond_1
    :try_start_0
    new-instance v2, Lcom/mpatric/mp3agic/s;

    invoke-direct {v2, p0}, Lcom/mpatric/mp3agic/s;-><init>(Ljava/lang/String;)V

    .line 3251
    invoke-virtual {v2}, Lcom/mpatric/mp3agic/s;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3252
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3253
    :try_start_1
    invoke-virtual {v2}, Lcom/mpatric/mp3agic/s;->f()Lcom/mpatric/mp3agic/i;

    move-result-object v2

    .line 3254
    const-string v3, "title"

    invoke-interface {v2}, Lcom/mpatric/mp3agic/i;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3255
    const-string v3, "artist"

    invoke-interface {v2}, Lcom/mpatric/mp3agic/i;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3256
    const-string v3, "album"

    invoke-interface {v2}, Lcom/mpatric/mp3agic/i;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3257
    const-string v3, "songid"

    invoke-interface {v2}, Lcom/mpatric/mp3agic/i;->f()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3258
    invoke-interface {v2}, Lcom/mpatric/mp3agic/i;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "nubia_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 3259
    goto :goto_0

    .line 3265
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static reconstructPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 3398
    const/4 v1, 0x1

    .line 3399
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 3400
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3401
    invoke-static {v3}, Lcn/nubia/music/utils/MusicUtils;->getFilePostfix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/music/utils/MusicUtils;->getPostfixWithDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3402
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3403
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcn/nubia/music/utils/MusicUtils;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3405
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 3406
    goto :goto_0

    .line 3407
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    .line 3410
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static recycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1076
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->mCurrentAlbumBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1077
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->mCurrentAlbumBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1078
    sput-object v2, Lcn/nubia/music/utils/MusicUtils;->mCurrentAlbumBitmap:Landroid/graphics/Bitmap;

    .line 1080
    :cond_0
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->mDefaultAlbumConver:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1081
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcn/nubia/music/utils/MusicUtils;->mDefaultAlbumConver:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1082
    sget-object v1, Lcn/nubia/music/utils/MusicUtils;->mDefaultAlbumConver:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1081
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1084
    :cond_1
    sput-object v2, Lcn/nubia/music/utils/MusicUtils;->mDefaultAlbumConver:[Landroid/graphics/Bitmap;

    .line 1087
    :cond_2
    return-void
.end method

.method public static removeActivity(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 1325
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->mActivityList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1326
    return-void
.end method

.method public static removeFavoList(J)V
    .locals 6

    .prologue
    .line 684
    const-string v0, "content://nubia.music.preset/favorites"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 685
    const-string v1, "audio_id = ?"

    .line 686
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 687
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 690
    sget-object v3, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 691
    return-void
.end method

.method public static removeListFromFavoList([J)V
    .locals 1

    .prologue
    .line 1660
    new-instance v0, Lcn/nubia/music/utils/MusicUtils$9;

    invoke-direct {v0, p0}, Lcn/nubia/music/utils/MusicUtils$9;-><init>([J)V

    invoke-static {v0}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    .line 1682
    return-void
.end method

.method public static removeListFromPlaylist(Ljava/lang/String;[J)V
    .locals 1

    .prologue
    .line 1685
    if-nez p0, :cond_0

    .line 1711
    :goto_0
    return-void

    .line 1688
    :cond_0
    new-instance v0, Lcn/nubia/music/utils/MusicUtils$10;

    invoke-direct {v0, p1, p0}, Lcn/nubia/music/utils/MusicUtils$10;-><init>([JLjava/lang/String;)V

    invoke-static {v0}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static removePlaylist(Landroid/content/Context;J)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1391
    const-string v0, "content://nubia.music.preset/playlists"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1392
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1393
    const v0, 0x7f0b0046

    invoke-static {p0, v0}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    .line 1394
    return-void
.end method

.method private static replaceSepcialCharacter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2489
    if-eqz p0, :cond_0

    .line 2490
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2491
    const-string v1, "["

    const-string v2, "/["

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2492
    const-string v1, "]"

    const-string v2, "/]"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2493
    const-string v1, "%"

    const-string v2, "/%"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2494
    const-string v1, "_"

    const-string v2, "/_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2495
    const-string v1, "("

    const-string v2, "/("

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2496
    const-string v1, ")"

    const-string v2, "/)"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 2499
    :cond_0
    return-object p0
.end method

.method public static saveActivity(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 1314
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->mActivityList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/music/utils/MusicUtils;->mActivityList:Ljava/util/List;

    .line 1317
    :cond_0
    sget-object v0, Lcn/nubia/music/utils/MusicUtils;->mActivityList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1318
    return-void
.end method

.method public static sendCloseTimer(Landroid/content/Context;J)V
    .locals 5

    .prologue
    .line 1376
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.music.preset.musicservicecommand.closetimer"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1377
    const-class v1, Lcn/nubia/music/app/TimeCloseService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1378
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 1379
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1384
    :goto_0
    return-void

    .line 1381
    :cond_0
    const-string v1, "delay"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1382
    invoke-static {p0, v0}, Lcn/nubia/music/utils/AdaptationUtil;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static setCallRingtone(Landroid/content/Context;JI)V
    .locals 1

    .prologue
    .line 1428
    new-instance v0, Lcn/nubia/music/utils/MusicUtils$6;

    invoke-direct {v0, p1, p2, p0, p3}, Lcn/nubia/music/utils/MusicUtils$6;-><init>(JLandroid/content/Context;I)V

    invoke-static {v0}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    .line 1441
    return-void
.end method

.method public static setCallRingtoneByPath(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1449
    new-instance v0, Lcn/nubia/music/utils/MusicUtils$7;

    invoke-direct {v0, p1, p0, p2}, Lcn/nubia/music/utils/MusicUtils$7;-><init>(Ljava/lang/String;Landroid/content/Context;I)V

    invoke-static {v0}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    .line 1459
    return-void
.end method

.method private static setCallRingtoneImpl(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1499
    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "_data"

    aput-object v0, v2, v10

    const-string v0, "title"

    aput-object v0, v2, v11

    .line 1503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data= \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    const-string v3, "\'\'"

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1504
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1507
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1508
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1509
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1510
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCallRingtoneImpl audioid="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",card="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1515
    :try_start_0
    const-string v0, "android.media.RingtoneManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1516
    const-string v2, "setActualRingtoneUriBySubId"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-class v6, Landroid/net/Uri;

    aput-object v6, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1518
    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v3, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    const-string v0, "setCallRingtoneImpl RingtoneManager.setActualRingtoneUriBySubId"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1550
    :goto_0
    const v0, 0x7f0b00e1

    new-array v2, v10, [Ljava/lang/Object;

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1551
    invoke-static {}, Lcn/nubia/music/app/model/MetadataCheck;->getInstance()Lcn/nubia/music/app/model/MetadataCheck;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/nubia/music/app/model/MetadataCheck;->getMetaData(Ljava/lang/String;)Lcn/nubia/music/app/model/MetadataCheck$Metadata;

    move-result-object v2

    .line 1552
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->title:Ljava/lang/String;

    invoke-static {v3}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1553
    const v0, 0x7f0b00e1

    new-array v3, v10, [Ljava/lang/Object;

    iget-object v2, v2, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->title:Ljava/lang/String;

    aput-object v2, v3, v9

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1555
    :cond_0
    invoke-static {p0, v0}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 1556
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "suc in set ring: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 1557
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1574
    :goto_1
    return-void

    .line 1520
    :catch_0
    move-exception v0

    .line 1522
    :try_start_1
    const-string v0, "com.mediatek.audioprofile.AudioProfileManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1523
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1524
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1525
    const-string v0, "getActiveProfileKey"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1526
    if-nez v0, :cond_1

    .line 1527
    const-string v5, "getActiveProfileKey is null"

    invoke-static {v5}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1529
    :cond_1
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1530
    const-string v5, "setRingtoneUri"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-class v8, Landroid/net/Uri;

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1532
    if-nez v2, :cond_2

    .line 1533
    const-string v5, "setRingtoneUri is null"

    invoke-static {v5}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1535
    :cond_2
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    const/4 v6, 0x1

    .line 1536
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    .line 1535
    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    const-string v0, "setCallRingtoneImpl AudioProfileManager.setRingtoneUri"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1538
    :catch_1
    move-exception v0

    .line 1540
    :try_start_2
    const-string v0, "android.media.RingtoneManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1541
    const-string v2, "setActualDefaultRingtoneUri"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-class v6, Landroid/net/Uri;

    aput-object v6, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1543
    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v3, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1544
    const-string v0, "setCallRingtoneImpl RingtoneManager.setActualDefaultRingtoneUri"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1545
    :catch_2
    move-exception v0

    .line 1546
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1559
    :cond_3
    if-nez p3, :cond_4

    .line 1560
    const v0, 0x7f0b010c

    invoke-static {p0, v0}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 1562
    :cond_4
    new-array v0, v10, [Ljava/lang/String;

    aput-object p1, v0, v9

    new-instance v1, Lcn/nubia/music/utils/MusicUtils$8;

    invoke-direct {v1, p0, p2}, Lcn/nubia/music/utils/MusicUtils$8;-><init>(Landroid/content/Context;I)V

    invoke-static {p0, v0, v4, v1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto/16 :goto_1
.end method

.method public static setStrictMode()V
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Lcn/nubia/music/utils/MusicUtils;->s_isStrictMode_Init:Z

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 135
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 137
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/music/utils/MusicUtils;->s_isStrictMode_Init:Z

    .line 139
    :cond_0
    return-void
.end method

.method public static setVersionData(Lcn/nubia/upgrade/model/VersionData;)V
    .locals 4

    .prologue
    .line 1195
    if-nez p0, :cond_0

    .line 1217
    :goto_0
    return-void

    .line 1198
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUpdate#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/upgrade/model/VersionData;->isUpdate()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upgradeTime#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/upgrade/model/VersionData;->getUpgradeTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/upgrade/model/VersionData;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upgradeContent#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/upgrade/model/VersionData;->getUpgradeContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apkUrl#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/upgrade/model/VersionData;->getApkUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSumNew#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumNew()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromVersionCode#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/upgrade/model/VersionData;->getFromVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toVersionCode#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/upgrade/model/VersionData;->getToVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileSize#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/upgrade/model/VersionData;->getFileSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isForce#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/upgrade/model/VersionData;->isForce()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1212
    invoke-virtual {p0}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSumPatch#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/upgrade/model/VersionData;->getCheckSumPatch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1216
    :cond_1
    const/4 v1, 0x0

    const-string v2, "versionData"

    invoke-static {v1, v2, v0}, Lcn/nubia/music/utils/SharedPrefersHelper;->putStringSet(ILjava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_0
.end method

.method public static shareAduioFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2551
    .line 2552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2553
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2554
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2555
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2556
    const-string v2, "audio/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2557
    const-string v2, "android.intent.extra.STREAM"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2558
    const v0, 0x7f0b0110

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 2559
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2562
    return-void
.end method

.method public static showNetworkRemindDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog;
    .locals 3

    .prologue
    .line 3001
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->CenterDialogBuilder(Landroid/content/Context;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00bf

    .line 3002
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setMessage(I)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b002f

    .line 3003
    invoke-virtual {v0, v1, p1}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0027

    new-instance v2, Lcn/nubia/music/utils/MusicUtils$2;

    invoke-direct {v2}, Lcn/nubia/music/utils/MusicUtils$2;-><init>()V

    .line 3004
    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    move-result-object v0

    .line 3010
    invoke-virtual {v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->create()Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    move-result-object v0

    .line 3011
    invoke-virtual {v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->show()V

    .line 3012
    return-object v0
.end method

.method private static sqliteTransfer(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2686
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2687
    return-object v0
.end method

.method private static stopAllService()V
    .locals 3

    .prologue
    .line 1365
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    .line 1366
    new-instance v1, Landroid/content/Intent;

    const-string v2, "cn.nubia.music.preset.musicservicecommand.stop"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1367
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1368
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/nubia/music/MediaPlaybackService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1369
    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1371
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/nubia/music/app/scan/MusicScanService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1372
    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1373
    return-void
.end method

.method public static storageHasEnoughCapacity(Ljava/lang/String;J)Z
    .locals 3

    .prologue
    .line 3356
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->getFreeSize(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1633
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1634
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1635
    sget-object v2, Lcn/nubia/music/utils/MusicUtils;->HEX_DIGITS:[C

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1636
    sget-object v2, Lcn/nubia/music/utils/MusicUtils;->HEX_DIGITS:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1634
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1638
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static updateInsertTag(Landroid/database/Cursor;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 2260
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 2291
    :cond_0
    :goto_0
    return-void

    .line 2264
    :cond_1
    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2265
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    move v0, v1

    .line 2268
    :cond_2
    const/4 v4, 0x1

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 2270
    add-int/lit8 v0, v0, 0x1

    .line 2272
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    move-object v0, v2

    .line 2275
    :goto_1
    const-string v2, "content://nubia.music.preset/musicInfos"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2276
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2278
    const-string v2, "data IN ("

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    .line 2279
    :goto_2
    array-length v6, v0

    if-ge v2, v6, :cond_4

    .line 2280
    if-nez v2, :cond_3

    .line 2281
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2279
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2283
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ",\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2286
    :cond_4
    const-string v0, " )"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2288
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2289
    const-string v2, "insert_tag"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2290
    sget-object v1, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    move-object v0, v3

    goto :goto_1
.end method

.method public static updateInsertTagOfSelectedFiles(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2462
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2486
    :cond_0
    :goto_0
    return-void

    .line 2465
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 2466
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 2467
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2469
    const-string v0, "content://nubia.music.preset/musicInfos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2470
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 2472
    :goto_1
    array-length v6, v2

    if-ge v0, v6, :cond_3

    .line 2473
    aget-object v6, v2, v0

    invoke-static {v6}, Lcn/nubia/music/utils/MusicUtils;->replaceSepcialCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v0

    .line 2474
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\'%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v0

    .line 2475
    if-nez v0, :cond_2

    .line 2476
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data LIKE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2472
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2478
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " OR data LIKE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2483
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2484
    const-string v2, "insert_tag"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2485
    sget-object v1, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method
