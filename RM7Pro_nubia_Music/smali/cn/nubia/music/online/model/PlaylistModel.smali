.class public Lcn/nubia/music/online/model/PlaylistModel;
.super Lcn/nubia/music/online/model/MediaModel;
.source "PlaylistModel.java"


# static fields
.field public static final TYPE_LOCAL_PLAYLIST:I = 0x1

.field public static final TYPE_NET_ALBUM:I = 0x3

.field public static final TYPE_NET_ARTIST:I = 0x5

.field public static final TYPE_NET_HOTSONG:I = 0x6

.field public static final TYPE_NET_PLAYLIST:I = 0x2

.field public static final TYPE_NET_TOPLIST:I = 0x4


# instance fields
.field public mNetId:J

.field public mPlayListType:I

.field public numMusic:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/music/online/model/MediaModel;-><init>(Landroid/content/Context;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/online/model/MediaModel;-><init>(Landroid/content/Context;I)V

    .line 28
    const/16 v0, 0xa

    if-ne p2, v0, :cond_1

    .line 29
    const v0, 0x7f0b007a

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/model/PlaylistModel;->mTitle:Ljava/lang/String;

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    const/16 v0, 0xb

    if-ne p2, v0, :cond_2

    .line 31
    const v0, 0x7f0b0077

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/model/PlaylistModel;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 32
    :cond_2
    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    .line 33
    const v0, 0x7f0b00d4

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/model/PlaylistModel;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public createFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 59
    if-eqz p2, :cond_1

    .line 61
    const-string v2, "playlist_name"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 62
    const-string v3, "playlist_id"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 63
    const-string v4, "playlist_num_songs"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 64
    const-string v5, "playlist_type"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 65
    const-string v6, "playlist_image_url"

    .line 66
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 67
    const-string v7, "playlist_media_id"

    .line 68
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 70
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/music/online/model/PlaylistModel;->mTitle:Ljava/lang/String;

    .line 71
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    long-to-int v2, v8

    iput v2, p0, Lcn/nubia/music/online/model/PlaylistModel;->mPlayListType:I

    .line 72
    iget v2, p0, Lcn/nubia/music/online/model/PlaylistModel;->mPlayListType:I

    if-ne v2, v0, :cond_0

    .line 73
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/music/online/model/PlaylistModel;->mMediaId:J

    .line 74
    iput-boolean v0, p0, Lcn/nubia/music/online/model/PlaylistModel;->mIsLocal:Z

    .line 80
    :goto_0
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/music/online/model/PlaylistModel;->mImageUrl:Ljava/lang/String;

    .line 81
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcn/nubia/music/online/model/PlaylistModel;->numMusic:I

    .line 82
    const v2, 0x7f0b0122

    invoke-static {v2}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    iget v4, p0, Lcn/nubia/music/online/model/PlaylistModel;->numMusic:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/music/online/model/PlaylistModel;->mSubTitle:Ljava/lang/String;

    .line 85
    :goto_1
    return v0

    .line 76
    :cond_0
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/music/online/model/PlaylistModel;->mMediaId:J

    .line 77
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/music/online/model/PlaylistModel;->mNetId:J

    .line 78
    iput-boolean v1, p0, Lcn/nubia/music/online/model/PlaylistModel;->mIsLocal:Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 85
    goto :goto_1
.end method

.method public createFromPracelable(Landroid/content/Context;Landroid/os/Parcelable;)Z
    .locals 2

    .prologue
    .line 42
    check-cast p2, Lcn/nubia/music/online/data/PlaylistEntry;

    .line 43
    if-eqz p2, :cond_0

    .line 44
    iget-object v0, p2, Lcn/nubia/music/online/data/PlaylistEntry;->mPlaylistName:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/music/online/model/PlaylistModel;->mTitle:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcn/nubia/music/online/model/PlaylistModel;->mImageSize:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    iget-object v0, p2, Lcn/nubia/music/online/data/PlaylistEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v1, p0, Lcn/nubia/music/online/model/PlaylistModel;->mImageSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/music/online/data/ImageUrlEntry;->getImagerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/model/PlaylistModel;->mImageUrl:Ljava/lang/String;

    .line 52
    :goto_0
    iget-object v0, p2, Lcn/nubia/music/online/data/PlaylistEntry;->mPlaylistId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/music/online/model/PlaylistModel;->mMediaId:J

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/online/model/PlaylistModel;->mIsLocal:Z

    .line 55
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 48
    :cond_1
    iget-object v0, p2, Lcn/nubia/music/online/data/PlaylistEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iput-object v0, p0, Lcn/nubia/music/online/model/PlaylistModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    .line 49
    iget-object v0, p2, Lcn/nubia/music/online/data/PlaylistEntry;->mImageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/music/online/model/PlaylistModel;->mImageUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public putImageUrlFromCursor(Landroid/database/Cursor;I)V
    .locals 2

    .prologue
    .line 90
    if-eqz p1, :cond_0

    .line 92
    if-nez p2, :cond_1

    .line 93
    const-string v0, "image_url_220_220"

    .line 94
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 99
    :goto_0
    new-instance v1, Lcn/nubia/music/online/data/ImageUrlEntry;

    invoke-direct {v1}, Lcn/nubia/music/online/data/ImageUrlEntry;-><init>()V

    iput-object v1, p0, Lcn/nubia/music/online/model/PlaylistModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    .line 100
    iget-object v1, p0, Lcn/nubia/music/online/model/PlaylistModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_220_220:Ljava/lang/String;

    .line 102
    :cond_0
    return-void

    .line 97
    :cond_1
    const-string v0, "album_art"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
