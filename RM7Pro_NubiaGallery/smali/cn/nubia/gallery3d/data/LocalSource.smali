.class public Lcn/nubia/gallery3d/data/LocalSource;
.super Lcn/nubia/gallery3d/data/MediaSource;
.source "LocalSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/LocalSource$IdComparator;
    }
.end annotation


# static fields
.field public static final KEY_BUCKET_ID:Ljava/lang/String; = "bucketId"

.field private static final LOCAL_ALL_ALBUM:I = 0x7

.field private static final LOCAL_ALL_ALBUMSET:I = 0x6

.field private static final LOCAL_ALL_FACES_ALBUMSET:I = 0x19

.field private static final LOCAL_ALL_LOCATION_ALBUMSET:I = 0x17

.field private static final LOCAL_ALL_MARK:I = 0x9

.field private static final LOCAL_ALL_NOSYSTEM:I = 0xe

.field private static final LOCAL_ALL_NOSYSTEM_ALBUM:I = 0x11

.field private static final LOCAL_ALL_RECYCLED:I = 0xd

.field private static final LOCAL_ALL_SHOWN_ALBUMSET:I = 0xa

.field private static final LOCAL_ALL_THINGS_ALBUMSET:I = 0x18

.field private static final LOCAL_IMAGE_ALBUM:I = 0x2

.field private static final LOCAL_IMAGE_ALBUMSET:I = 0x0

.field private static final LOCAL_IMAGE_FACES_ALBUMSET:I = 0x1c

.field private static final LOCAL_IMAGE_ITEM:I = 0x4

.field private static final LOCAL_IMAGE_LOCATION_ALBUMSET:I = 0x1a

.field private static final LOCAL_IMAGE_MARK:I = 0x15

.field private static final LOCAL_IMAGE_MULTISHOOT_ITEM:I = 0x8

.field private static final LOCAL_IMAGE_NOSYSTEM:I = 0xf

.field private static final LOCAL_IMAGE_PANORAMA_ITEM:I = 0x1d

.field private static final LOCAL_IMAGE_SHOWN_ALBUMSET:I = 0xb

.field private static final LOCAL_IMAGE_THINGS_ALBUMSET:I = 0x1b

.field private static final LOCAL_VIDEO_ALBUM:I = 0x3

.field private static final LOCAL_VIDEO_ALBUMSET:I = 0x1

.field private static final LOCAL_VIDEO_ITEM:I = 0x5

.field private static final LOCAL_VIDEO_MARK:I = 0x16

.field private static final LOCAL_VIDEO_NOSYSTEM:I = 0x10

.field private static final LOCAL_VIDEO_SHOWN_ALBUMSET:I = 0xc

.field private static final MEDIA_TYPE_ALL:I = 0x0

.field private static final MEDIA_TYPE_IMAGE:I = 0x1

.field private static final MEDIA_TYPE_VIDEO:I = 0x4

.field private static final NO_MATCH:I = -0x1

.field private static final RECYCLED_IMAGE_ITEM:I = 0x12

.field private static final RECYCLED_IMAGE_MULTISHOOT_ITEM:I = 0x14

.field private static final RECYCLED_VIDEO_ITEM:I = 0x13

.field public static final TAG:Ljava/lang/String; = "LocalSource"

.field public static final sIdComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcn/nubia/gallery3d/data/MediaSource$PathId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

.field private mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcn/nubia/gallery3d/data/LocalSource$IdComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/data/LocalSource$IdComparator;-><init>(Lcn/nubia/gallery3d/data/LocalSource$1;)V

    sput-object v0, Lcn/nubia/gallery3d/data/LocalSource;->sIdComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryApp;)V
    .locals 8

    const-string v0, "local"

    .line 75
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    .line 76
    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 77
    new-instance p1, Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-direct {p1}, Lcn/nubia/gallery3d/data/PathMatcher;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/image"

    const/4 v2, 0x0

    .line 78
    invoke-virtual {p1, v1, v2}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 79
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/video"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 80
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/all"

    const/4 v2, 0x6

    invoke-virtual {p1, v1, v2}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 81
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/all_shown"

    const/16 v2, 0xa

    invoke-virtual {p1, v1, v2}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 82
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/image_shown"

    const/16 v2, 0xb

    invoke-virtual {p1, v1, v2}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 83
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/video_shown"

    const/16 v2, 0xc

    invoke-virtual {p1, v1, v2}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 85
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/image/*"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 86
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/video/*"

    const/4 v3, 0x3

    invoke-virtual {p1, v1, v3}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 87
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/all/*"

    const/4 v4, 0x7

    invoke-virtual {p1, v1, v4}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 88
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/image/item/*"

    const/4 v5, 0x4

    invoke-virtual {p1, v1, v5}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 89
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/video/item/*"

    const/4 v6, 0x5

    invoke-virtual {p1, v1, v6}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 90
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/image/item/panorama/*"

    const/16 v7, 0x1d

    invoke-virtual {p1, v1, v7}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 91
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/image/multishootitem/*"

    const/16 v7, 0x8

    invoke-virtual {p1, v1, v7}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 93
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/all/mark/*"

    const/16 v7, 0x9

    invoke-virtual {p1, v1, v7}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 94
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/image/mark/*"

    const/16 v7, 0x15

    invoke-virtual {p1, v1, v7}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 95
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/video/mark/*"

    const/16 v7, 0x16

    invoke-virtual {p1, v1, v7}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 97
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/all/nosystem/*"

    const/16 v7, 0xe

    invoke-virtual {p1, v1, v7}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 98
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/image/nosystem/*"

    const/16 v7, 0xf

    invoke-virtual {p1, v1, v7}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 99
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/video/nosystem/*"

    const/16 v7, 0x10

    invoke-virtual {p1, v1, v7}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 100
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/all/nosystem/*/*"

    const/16 v7, 0x11

    invoke-virtual {p1, v1, v7}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 102
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/all/recycled/*"

    const/16 v7, 0xd

    invoke-virtual {p1, v1, v7}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 103
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/recycled/image/item/*"

    const/16 v7, 0x12

    invoke-virtual {p1, v1, v7}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 104
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/recycled/video/item/*"

    const/16 v7, 0x13

    invoke-virtual {p1, v1, v7}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 105
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/recycled/image/multishootitem/*"

    const/16 v7, 0x14

    invoke-virtual {p1, v1, v7}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 107
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/all/location"

    const/16 v7, 0x17

    invoke-virtual {p1, v1, v7}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 108
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/image/location"

    const/16 v7, 0x1a

    invoke-virtual {p1, v1, v7}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 109
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/all/thing"

    const/16 v7, 0x18

    invoke-virtual {p1, v1, v7}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 110
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/image/thing"

    const/16 v7, 0x1b

    invoke-virtual {p1, v1, v7}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 111
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/all/face"

    const/16 v7, 0x19

    invoke-virtual {p1, v1, v7}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 112
    iget-object p1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    const-string v1, "/local/image/face"

    const/16 v7, 0x1c

    invoke-virtual {p1, v1, v7}, Lcn/nubia/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    const-string p1, "media"

    const-string v1, "external/images/media/#"

    .line 114
    invoke-virtual {v0, p1, v1, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "external/video/media/#"

    .line 115
    invoke-virtual {v0, p1, v1, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "external/images/media"

    .line 116
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "external/video/media"

    .line 117
    invoke-virtual {v0, p1, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "external/file"

    .line 118
    invoke-virtual {v0, p1, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "external_primary/images/media/#"

    .line 120
    invoke-virtual {v0, p1, v1, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "external_primary/video/media/#"

    .line 121
    invoke-virtual {v0, p1, v1, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "external_primary/images/media"

    .line 122
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "external_primary/video/media"

    .line 123
    invoke-virtual {v0, p1, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "external_primary/file"

    .line 124
    invoke-virtual {v0, p1, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private getAlbumPath(Landroid/net/Uri;I)Lcn/nubia/gallery3d/data/Path;
    .locals 2

    const-string v0, "mediaTypes"

    .line 214
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcn/nubia/gallery3d/data/LocalSource;->getMediaType(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "bucketId"

    .line 215
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 218
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const-string p2, "/local/all"

    .line 229
    invoke-static {p2}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p2, "/local/video"

    .line 227
    invoke-static {p2}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p2, "/local/image"

    .line 225
    invoke-static {p2}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p2

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid bucket id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalSource"

    invoke-static {v0, p1, p2}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private static getMediaType(Ljava/lang/String;I)I
    .locals 3

    if-nez p0, :cond_0

    return p1

    .line 199
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v0, p0, 0x5

    if-eqz v0, :cond_1

    return p0

    :catch_0
    move-exception v0

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "LocalSource"

    invoke-static {v1, p0, v0}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return p1
.end method

.method private processMapMediaItems(Ljava/util/ArrayList;Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/MediaSource$PathId;",
            ">;",
            "Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;",
            "Z)V"
        }
    .end annotation

    .line 297
    sget-object p2, Lcn/nubia/gallery3d/data/LocalSource;->sIdComparator:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 298
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x0

    :cond_0
    :goto_0
    if-ge p3, p2, :cond_2

    .line 300
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/MediaSource$PathId;

    .line 303
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 304
    iget-object v0, v0, Lcn/nubia/gallery3d/data/MediaSource$PathId;->path:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 305
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p3, p3, 0x1

    if-ge p3, p2, :cond_0

    .line 309
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/data/MediaSource$PathId;

    .line 310
    iget-object v2, v2, Lcn/nubia/gallery3d/data/MediaSource$PathId;->path:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sub-int v3, v2, v0

    const/16 v4, 0x64

    if-lt v3, v4, :cond_1

    goto :goto_0

    .line 314
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;
    .locals 5

    .line 129
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 130
    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-virtual {v1, p1}, Lcn/nubia/gallery3d/data/PathMatcher;->match(Lcn/nubia/gallery3d/data/Path;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 191
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :pswitch_0
    new-instance v0, Lcn/nubia/gallery3d/data/PanoramaItem;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcn/nubia/gallery3d/data/PanoramaItem;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V

    return-object v0

    .line 189
    :pswitch_1
    new-instance v0, Lcn/nubia/gallery3d/data/FacesAlbumSet;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {v0, p1, v1}, Lcn/nubia/gallery3d/data/FacesAlbumSet;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;)V

    return-object v0

    .line 186
    :pswitch_2
    new-instance v0, Lcn/nubia/gallery3d/data/ThingsAlbumSet;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {v0, p1, v1}, Lcn/nubia/gallery3d/data/ThingsAlbumSet;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;)V

    return-object v0

    .line 183
    :pswitch_3
    new-instance v0, Lcn/nubia/gallery3d/data/LocationAlbumSet;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {v0, p1, v1}, Lcn/nubia/gallery3d/data/LocationAlbumSet;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;)V

    return-object v0

    .line 166
    :pswitch_4
    new-instance v0, Lcn/nubia/gallery3d/data/RecycledMultiShootItem;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcn/nubia/gallery3d/data/RecycledMultiShootItem;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V

    return-object v0

    .line 164
    :pswitch_5
    new-instance v0, Lcn/nubia/gallery3d/data/RecycledVideoItem;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcn/nubia/gallery3d/data/RecycledVideoItem;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V

    return-object v0

    .line 162
    :pswitch_6
    new-instance v0, Lcn/nubia/gallery3d/data/RecycledImageItem;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcn/nubia/gallery3d/data/RecycledImageItem;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V

    return-object v0

    .line 148
    :pswitch_7
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v0

    .line 149
    new-instance v1, Lcn/nubia/gallery3d/data/LocalAllAlbum;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {v1, p1, v2, v0}, Lcn/nubia/gallery3d/data/LocalAllAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V

    return-object v1

    .line 179
    :pswitch_8
    new-instance v0, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcn/nubia/gallery3d/data/NoSystemAlbumSet;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V

    return-object v0

    .line 160
    :pswitch_9
    new-instance v0, Lcn/nubia/gallery3d/data/RecycledAlbum;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcn/nubia/gallery3d/data/RecycledAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V

    return-object v0

    .line 138
    :pswitch_a
    new-instance v0, Lcn/nubia/gallery3d/data/LocalAllAlbumSet;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {v0, p1, v1}, Lcn/nubia/gallery3d/data/LocalAllAlbumSet;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;)V

    return-object v0

    .line 170
    :pswitch_b
    invoke-static {}, Lcn/nubia/gallery3d/data/FavorHelper;->isMediaProviderSupportFavor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Lcn/nubia/gallery3d/data/FavorAlbum;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcn/nubia/gallery3d/data/FavorAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V

    return-object v0

    .line 173
    :cond_0
    new-instance v0, Lcn/nubia/gallery3d/data/MarkAlbum;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcn/nubia/gallery3d/data/MarkAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V

    return-object v0

    .line 158
    :pswitch_c
    new-instance v0, Lcn/nubia/gallery3d/data/MultiShootItem;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcn/nubia/gallery3d/data/MultiShootItem;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V

    return-object v0

    .line 144
    :pswitch_d
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-virtual {v0, v3}, Lcn/nubia/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v0

    .line 145
    new-instance v1, Lcn/nubia/gallery3d/data/LocalAllAlbum;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {v1, p1, v2, v0}, Lcn/nubia/gallery3d/data/LocalAllAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V

    return-object v1

    .line 154
    :pswitch_e
    new-instance v0, Lcn/nubia/gallery3d/data/LocalVideo;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcn/nubia/gallery3d/data/LocalVideo;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V

    return-object v0

    .line 152
    :pswitch_f
    new-instance v0, Lcn/nubia/gallery3d/data/LocalImage;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcn/nubia/gallery3d/data/LocalImage;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V

    return-object v0

    .line 142
    :pswitch_10
    new-instance v1, Lcn/nubia/gallery3d/data/LocalAlbum;

    iget-object v2, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v2

    invoke-direct {v1, p1, v0, v2, v3}, Lcn/nubia/gallery3d/data/LocalAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;IZ)V

    return-object v1

    .line 140
    :pswitch_11
    new-instance v1, Lcn/nubia/gallery3d/data/LocalAlbum;

    iget-object v4, p0, Lcn/nubia/gallery3d/data/LocalSource;->mMatcher:Lcn/nubia/gallery3d/data/PathMatcher;

    invoke-virtual {v4, v3}, Lcn/nubia/gallery3d/data/PathMatcher;->getIntVar(I)I

    move-result v3

    invoke-direct {v1, p1, v0, v3, v2}, Lcn/nubia/gallery3d/data/LocalAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;IZ)V

    return-object v1

    .line 134
    :pswitch_12
    new-instance v0, Lcn/nubia/gallery3d/data/LocalAlbumSet;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/LocalSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-direct {v0, p1, v1}, Lcn/nubia/gallery3d/data/LocalAlbumSet;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_b
        :pswitch_b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;
    .locals 5

    const/4 p2, 0x0

    .line 236
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq v0, v1, :cond_5

    const-wide/16 v3, 0x0

    if-eq v0, v2, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 252
    invoke-direct {p0, p1, v0}, Lcn/nubia/gallery3d/data/LocalSource;->getAlbumPath(Landroid/net/Uri;I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    return-object p1

    .line 242
    :cond_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-ltz v2, :cond_2

    .line 243
    sget-object v2, Lcn/nubia/gallery3d/data/LocalVideo;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/gallery3d/data/Path;->getChild(J)Lcn/nubia/gallery3d/data/Path;

    move-result-object p2

    :cond_2
    return-object p2

    .line 238
    :cond_3
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-ltz v2, :cond_4

    .line 239
    sget-object v2, Lcn/nubia/gallery3d/data/LocalImage;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/gallery3d/data/Path;->getChild(J)Lcn/nubia/gallery3d/data/Path;

    move-result-object p2

    :cond_4
    return-object p2

    .line 249
    :cond_5
    invoke-direct {p0, p1, v2}, Lcn/nubia/gallery3d/data/LocalSource;->getAlbumPath(Landroid/net/Uri;I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    return-object p1

    :cond_6
    const/4 v0, 0x1

    .line 246
    invoke-direct {p0, p1, v0}, Lcn/nubia/gallery3d/data/LocalSource;->getAlbumPath(Landroid/net/Uri;I)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LocalSource"

    invoke-static {v1, p1, v0}, Lcn/nubia/gallery3d/data/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p2
.end method

.method public getDefaultSetOf(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/Path;
    .locals 1

    .line 263
    iget-object v0, p0, Lcn/nubia/gallery3d/data/LocalSource;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/DataManager;->getMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object p1

    .line 264
    instance-of v0, p1, Lcn/nubia/gallery3d/data/LocalImage;

    if-eqz v0, :cond_0

    const-string v0, "/local/image"

    .line 265
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    check-cast p1, Lcn/nubia/gallery3d/data/LocalImage;

    .line 266
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/LocalImage;->getBucketId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 265
    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    return-object p1

    .line 267
    :cond_0
    instance-of v0, p1, Lcn/nubia/gallery3d/data/LocalMediaItem;

    if-eqz v0, :cond_1

    const-string v0, "/local/all"

    .line 268
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    check-cast p1, Lcn/nubia/gallery3d/data/LocalMediaItem;

    .line 269
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/LocalMediaItem;->getBucketId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/MediaSource$PathId;",
            ">;",
            "Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;",
            ")V"
        }
    .end annotation

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 277
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 278
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    .line 280
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/gallery3d/data/MediaSource$PathId;

    .line 283
    iget-object v6, v5, Lcn/nubia/gallery3d/data/MediaSource$PathId;->path:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v6}, Lcn/nubia/gallery3d/data/Path;->getParent()Lcn/nubia/gallery3d/data/Path;

    move-result-object v6

    .line 284
    sget-object v7, Lcn/nubia/gallery3d/data/LocalImage;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    if-ne v6, v7, :cond_0

    .line 285
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 286
    :cond_0
    sget-object v7, Lcn/nubia/gallery3d/data/LocalVideo;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    if-ne v6, v7, :cond_1

    .line 287
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 291
    invoke-direct {p0, v0, p2, p1}, Lcn/nubia/gallery3d/data/LocalSource;->processMapMediaItems(Ljava/util/ArrayList;Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;Z)V

    .line 292
    invoke-direct {p0, v1, p2, v3}, Lcn/nubia/gallery3d/data/LocalSource;->processMapMediaItems(Ljava/util/ArrayList;Lcn/nubia/gallery3d/data/MediaSet$ItemConsumer;Z)V

    return-void
.end method
