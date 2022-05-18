.class public Lcn/nubia/music/online/model/ArtistModel;
.super Lcn/nubia/music/online/model/MediaModel;
.source "ArtistModel.java"


# static fields
.field public static bInit:Z

.field private static mFormatNumSingleSong:Ljava/lang/String;

.field private static mFormatNumSongs:Ljava/lang/String;

.field private static mUnknowArtist:Ljava/lang/String;


# instance fields
.field private artistIDIndex:I

.field private artistIndex:I

.field private artistLetterIndex:I

.field private artistNumAlbumIndex:I

.field private artistNumSongIndex:I

.field private avg_120:I

.field private avg_220:I

.field private avg_330:I

.field private avg_400:I

.field private avg_640:I

.field private avg_720:I

.field private avg_80:I

.field public iAlbumCount:I

.field public iMusicCount:I

.field public strAlbumCount:Ljava/lang/String;

.field public strMusicCount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcn/nubia/music/online/model/ArtistModel;->mUnknowArtist:Ljava/lang/String;

    .line 33
    sput-object v0, Lcn/nubia/music/online/model/ArtistModel;->mFormatNumSongs:Ljava/lang/String;

    .line 34
    sput-object v0, Lcn/nubia/music/online/model/ArtistModel;->mFormatNumSingleSong:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/music/online/model/ArtistModel;->bInit:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v1}, Lcn/nubia/music/online/model/MediaModel;-><init>(Landroid/content/Context;I)V

    .line 19
    iput v0, p0, Lcn/nubia/music/online/model/ArtistModel;->artistIDIndex:I

    .line 20
    iput v0, p0, Lcn/nubia/music/online/model/ArtistModel;->artistIndex:I

    .line 21
    iput v0, p0, Lcn/nubia/music/online/model/ArtistModel;->artistLetterIndex:I

    .line 22
    iput v0, p0, Lcn/nubia/music/online/model/ArtistModel;->artistNumSongIndex:I

    .line 23
    iput v0, p0, Lcn/nubia/music/online/model/ArtistModel;->artistNumAlbumIndex:I

    .line 24
    iput v0, p0, Lcn/nubia/music/online/model/ArtistModel;->avg_80:I

    .line 25
    iput v0, p0, Lcn/nubia/music/online/model/ArtistModel;->avg_120:I

    .line 26
    iput v0, p0, Lcn/nubia/music/online/model/ArtistModel;->avg_220:I

    .line 27
    iput v0, p0, Lcn/nubia/music/online/model/ArtistModel;->avg_330:I

    .line 28
    iput v0, p0, Lcn/nubia/music/online/model/ArtistModel;->avg_400:I

    .line 29
    iput v0, p0, Lcn/nubia/music/online/model/ArtistModel;->avg_640:I

    .line 30
    iput v0, p0, Lcn/nubia/music/online/model/ArtistModel;->avg_720:I

    .line 43
    sget-boolean v0, Lcn/nubia/music/online/model/ArtistModel;->bInit:Z

    if-nez v0, :cond_0

    .line 44
    const v0, 0x7f0b0134

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/online/model/ArtistModel;->mUnknowArtist:Ljava/lang/String;

    .line 45
    const v0, 0x7f0b00b7

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/online/model/ArtistModel;->mFormatNumSongs:Ljava/lang/String;

    .line 46
    const v0, 0x7f0b011f

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/online/model/ArtistModel;->mFormatNumSingleSong:Ljava/lang/String;

    .line 47
    sput-boolean v1, Lcn/nubia/music/online/model/ArtistModel;->bInit:Z

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public createFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 114
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 152
    :goto_0
    return v0

    .line 117
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcn/nubia/music/online/model/ArtistModel;->getColumnIndex(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 118
    iget v2, p0, Lcn/nubia/music/online/model/ArtistModel;->artistIDIndex:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/music/online/model/ArtistModel;->mMediaId:J

    .line 119
    iget v2, p0, Lcn/nubia/music/online/model/ArtistModel;->artistIndex:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/music/online/model/ArtistModel;->mTitle:Ljava/lang/String;

    .line 120
    const-string v2, "<unknown>"

    iget-object v3, p0, Lcn/nubia/music/online/model/ArtistModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    sget-object v2, Lcn/nubia/music/online/model/ArtistModel;->mUnknowArtist:Ljava/lang/String;

    iput-object v2, p0, Lcn/nubia/music/online/model/ArtistModel;->mTitle:Ljava/lang/String;

    .line 123
    :cond_2
    iget v2, p0, Lcn/nubia/music/online/model/ArtistModel;->artistLetterIndex:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcn/nubia/music/online/model/ArtistModel;->nameLetter:C

    .line 124
    iget v2, p0, Lcn/nubia/music/online/model/ArtistModel;->artistNumSongIndex:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcn/nubia/music/online/model/ArtistModel;->iMusicCount:I

    .line 125
    iget v2, p0, Lcn/nubia/music/online/model/ArtistModel;->iMusicCount:I

    if-ne v2, v0, :cond_3

    .line 126
    sget-object v2, Lcn/nubia/music/online/model/ArtistModel;->mFormatNumSingleSong:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    iget v4, p0, Lcn/nubia/music/online/model/ArtistModel;->iMusicCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/music/online/model/ArtistModel;->strMusicCount:Ljava/lang/String;

    .line 130
    :goto_1
    iget-object v2, p0, Lcn/nubia/music/online/model/ArtistModel;->strMusicCount:Ljava/lang/String;

    iput-object v2, p0, Lcn/nubia/music/online/model/ArtistModel;->mSubTitle:Ljava/lang/String;

    .line 131
    iget v2, p0, Lcn/nubia/music/online/model/ArtistModel;->artistNumAlbumIndex:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcn/nubia/music/online/model/ArtistModel;->iAlbumCount:I

    .line 132
    iget v2, p0, Lcn/nubia/music/online/model/ArtistModel;->iAlbumCount:I

    if-ne v2, v0, :cond_4

    .line 133
    sget-object v2, Lcn/nubia/music/online/model/ArtistModel;->mFormatNumSingleSong:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    iget v4, p0, Lcn/nubia/music/online/model/ArtistModel;->iAlbumCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/music/online/model/ArtistModel;->strAlbumCount:Ljava/lang/String;

    .line 138
    :goto_2
    new-instance v1, Lcn/nubia/music/online/data/ImageUrlEntry;

    invoke-direct {v1}, Lcn/nubia/music/online/data/ImageUrlEntry;-><init>()V

    iput-object v1, p0, Lcn/nubia/music/online/model/ArtistModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    .line 139
    iget-object v1, p0, Lcn/nubia/music/online/model/ArtistModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget v2, p0, Lcn/nubia/music/online/model/ArtistModel;->avg_80:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_80_80:Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lcn/nubia/music/online/model/ArtistModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget v2, p0, Lcn/nubia/music/online/model/ArtistModel;->avg_120:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_120_120:Ljava/lang/String;

    .line 143
    iget-object v1, p0, Lcn/nubia/music/online/model/ArtistModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget v2, p0, Lcn/nubia/music/online/model/ArtistModel;->avg_220:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_220_220:Ljava/lang/String;

    .line 145
    iget-object v1, p0, Lcn/nubia/music/online/model/ArtistModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget v2, p0, Lcn/nubia/music/online/model/ArtistModel;->avg_330:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_330_330:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcn/nubia/music/online/model/ArtistModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget v2, p0, Lcn/nubia/music/online/model/ArtistModel;->avg_400:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_400_400:Ljava/lang/String;

    .line 148
    iget-object v1, p0, Lcn/nubia/music/online/model/ArtistModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget v2, p0, Lcn/nubia/music/online/model/ArtistModel;->avg_640:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_640_640:Ljava/lang/String;

    .line 149
    iget-object v1, p0, Lcn/nubia/music/online/model/ArtistModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget v2, p0, Lcn/nubia/music/online/model/ArtistModel;->avg_720:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_720_720:Ljava/lang/String;

    .line 151
    iput-boolean v0, p0, Lcn/nubia/music/online/model/ArtistModel;->mIsLocal:Z

    goto/16 :goto_0

    .line 128
    :cond_3
    sget-object v2, Lcn/nubia/music/online/model/ArtistModel;->mFormatNumSongs:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    iget v4, p0, Lcn/nubia/music/online/model/ArtistModel;->iMusicCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/music/online/model/ArtistModel;->strMusicCount:Ljava/lang/String;

    goto/16 :goto_1

    .line 135
    :cond_4
    sget-object v2, Lcn/nubia/music/online/model/ArtistModel;->mFormatNumSongs:Ljava/lang/String;

    new-array v3, v0, [Ljava/lang/Object;

    iget v4, p0, Lcn/nubia/music/online/model/ArtistModel;->iAlbumCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/music/online/model/ArtistModel;->strAlbumCount:Ljava/lang/String;

    goto :goto_2
.end method

.method public createFromPracelable(Landroid/content/Context;Landroid/os/Parcelable;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 77
    check-cast p2, Lcn/nubia/music/online/data/ArtistEntry;

    .line 78
    if-eqz p2, :cond_0

    .line 79
    iget-object v0, p2, Lcn/nubia/music/online/data/ArtistEntry;->mArtistName:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/music/online/model/ArtistModel;->mTitle:Ljava/lang/String;

    .line 81
    iget-object v0, p2, Lcn/nubia/music/online/data/ArtistEntry;->mArtistId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/music/online/model/ArtistModel;->mMediaId:J

    .line 82
    iget-object v0, p2, Lcn/nubia/music/online/data/ArtistEntry;->mMusicCount:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/ArtistModel;->iMusicCount:I

    .line 83
    iget-object v0, p2, Lcn/nubia/music/online/data/ArtistEntry;->mAlbumCount:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/ArtistModel;->iAlbumCount:I

    .line 85
    iget-object v0, p0, Lcn/nubia/music/online/model/ArtistModel;->mImageSize:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    iget-object v0, p2, Lcn/nubia/music/online/data/ArtistEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    if-eqz v0, :cond_1

    .line 87
    const-string v0, "artistmodel entry not null"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 88
    iget-object v0, p2, Lcn/nubia/music/online/data/ArtistEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget-object v1, p0, Lcn/nubia/music/online/model/ArtistModel;->mImageSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/music/online/data/ImageUrlEntry;->getImagerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/model/ArtistModel;->mImageUrl:Ljava/lang/String;

    .line 98
    :goto_0
    iget v0, p0, Lcn/nubia/music/online/model/ArtistModel;->iMusicCount:I

    if-ne v0, v3, :cond_3

    .line 99
    sget-object v0, Lcn/nubia/music/online/model/ArtistModel;->mFormatNumSingleSong:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    iget v2, p0, Lcn/nubia/music/online/model/ArtistModel;->iMusicCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/model/ArtistModel;->strMusicCount:Ljava/lang/String;

    .line 103
    :goto_1
    iget v0, p0, Lcn/nubia/music/online/model/ArtistModel;->iAlbumCount:I

    if-ne v0, v3, :cond_4

    .line 104
    sget-object v0, Lcn/nubia/music/online/model/ArtistModel;->mFormatNumSingleSong:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    iget v2, p0, Lcn/nubia/music/online/model/ArtistModel;->iAlbumCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/model/ArtistModel;->strAlbumCount:Ljava/lang/String;

    .line 108
    :goto_2
    iput-boolean v4, p0, Lcn/nubia/music/online/model/ArtistModel;->mIsLocal:Z

    .line 110
    :cond_0
    return v3

    .line 90
    :cond_1
    const-string v0, "artistmodel entry null"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 91
    iget-object v0, p2, Lcn/nubia/music/online/data/ArtistEntry;->mAvatarSmall:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/music/online/model/ArtistModel;->mImageUrl:Ljava/lang/String;

    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p2, Lcn/nubia/music/online/data/ArtistEntry;->mAvatarSmall:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/music/online/model/ArtistModel;->mImageUrl:Ljava/lang/String;

    .line 95
    iget-object v0, p2, Lcn/nubia/music/online/data/ArtistEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iput-object v0, p0, Lcn/nubia/music/online/model/ArtistModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    goto :goto_0

    .line 101
    :cond_3
    sget-object v0, Lcn/nubia/music/online/model/ArtistModel;->mFormatNumSongs:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    iget v2, p0, Lcn/nubia/music/online/model/ArtistModel;->iMusicCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/model/ArtistModel;->strMusicCount:Ljava/lang/String;

    goto :goto_1

    .line 106
    :cond_4
    sget-object v0, Lcn/nubia/music/online/model/ArtistModel;->mFormatNumSongs:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    iget v2, p0, Lcn/nubia/music/online/model/ArtistModel;->iAlbumCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/model/ArtistModel;->strAlbumCount:Ljava/lang/String;

    goto :goto_2
.end method

.method public getColumnIndex(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 53
    const-string v0, "artist_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/ArtistModel;->artistIDIndex:I

    .line 54
    const-string v0, "artist"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/ArtistModel;->artistIndex:I

    .line 55
    const-string v0, "artist_letter"

    .line 56
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/ArtistModel;->artistLetterIndex:I

    .line 57
    const-string v0, "num_of_songs"

    .line 58
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/ArtistModel;->artistNumSongIndex:I

    .line 59
    const-string v0, "num_of_albums"

    .line 60
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/ArtistModel;->artistNumAlbumIndex:I

    .line 62
    const-string v0, "avg_80_80"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/ArtistModel;->avg_80:I

    .line 63
    const-string v0, "avg_120_120"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/ArtistModel;->avg_120:I

    .line 64
    const-string v0, "avg_220_220"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/ArtistModel;->avg_220:I

    .line 65
    const-string v0, "avg_330_330"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/ArtistModel;->avg_330:I

    .line 67
    const-string v0, "avg_400_400"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/ArtistModel;->avg_400:I

    .line 68
    const-string v0, "avg_640_640"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/ArtistModel;->avg_640:I

    .line 69
    const-string v0, "avg_720_720"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/ArtistModel;->avg_720:I

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getColumnIndex() mFormatNumSingleSong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/music/online/model/ArtistModel;->mFormatNumSingleSong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getColumnIndex() mFormatNumSongs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/music/online/model/ArtistModel;->mFormatNumSongs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 74
    return-void
.end method
