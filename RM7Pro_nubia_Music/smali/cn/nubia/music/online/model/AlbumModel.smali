.class public Lcn/nubia/music/online/model/AlbumModel;
.super Lcn/nubia/music/online/model/MediaModel;
.source "AlbumModel.java"


# static fields
.field private static bInit:Z


# instance fields
.field private ArtistIndex:I

.field private albumArtIndex:I

.field private albumIDIndex:I

.field private albumImg120Index:I

.field private albumImg220Index:I

.field private albumImg330Index:I

.field private albumImg400Index:I

.field private albumImg640Index:I

.field private albumImg720Index:I

.field private albumImg80Index:I

.field public albumImgIndex:I

.field private albumIndex:I

.field private albumLetterIndex:I

.field public albumSongsIndex:I

.field public mAlbumDescription:Ljava/lang/String;

.field public mArtistId:Ljava/lang/String;

.field public mArtistName:Ljava/lang/String;

.field public mMusicModelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/music/online/model/MusicModel;",
            ">;"
        }
    .end annotation
.end field

.field public numMusic:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/music/online/model/AlbumModel;->bInit:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcn/nubia/music/online/model/MediaModel;-><init>(Landroid/content/Context;I)V

    .line 27
    iput v1, p0, Lcn/nubia/music/online/model/AlbumModel;->albumIDIndex:I

    .line 28
    iput v1, p0, Lcn/nubia/music/online/model/AlbumModel;->albumIndex:I

    .line 29
    iput v1, p0, Lcn/nubia/music/online/model/AlbumModel;->albumLetterIndex:I

    .line 30
    iput v1, p0, Lcn/nubia/music/online/model/AlbumModel;->albumArtIndex:I

    .line 31
    iput v1, p0, Lcn/nubia/music/online/model/AlbumModel;->ArtistIndex:I

    .line 32
    iput v1, p0, Lcn/nubia/music/online/model/AlbumModel;->albumSongsIndex:I

    .line 34
    iput v1, p0, Lcn/nubia/music/online/model/AlbumModel;->albumImg80Index:I

    .line 35
    iput v1, p0, Lcn/nubia/music/online/model/AlbumModel;->albumImg120Index:I

    .line 36
    iput v1, p0, Lcn/nubia/music/online/model/AlbumModel;->albumImg220Index:I

    .line 37
    iput v1, p0, Lcn/nubia/music/online/model/AlbumModel;->albumImg330Index:I

    .line 38
    iput v1, p0, Lcn/nubia/music/online/model/AlbumModel;->albumImg400Index:I

    .line 39
    iput v1, p0, Lcn/nubia/music/online/model/AlbumModel;->albumImg640Index:I

    .line 40
    iput v1, p0, Lcn/nubia/music/online/model/AlbumModel;->albumImg720Index:I

    .line 41
    iput v1, p0, Lcn/nubia/music/online/model/AlbumModel;->albumImgIndex:I

    .line 68
    sget-boolean v0, Lcn/nubia/music/online/model/AlbumModel;->bInit:Z

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/music/online/model/AlbumModel;->bInit:Z

    .line 72
    :cond_0
    return-void
.end method

.method private convertTime(J)Ljava/lang/String;
    .locals 5

    .prologue
    const v3, 0x7f0b0012

    .line 75
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {v3}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 77
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 79
    return-object v0
.end method


# virtual methods
.method public createFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 116
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 137
    :goto_0
    return v0

    .line 119
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcn/nubia/music/online/model/AlbumModel;->getColumnIndex(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 120
    iget v2, p0, Lcn/nubia/music/online/model/AlbumModel;->albumIDIndex:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/music/online/model/AlbumModel;->mMediaId:J

    .line 121
    iget v2, p0, Lcn/nubia/music/online/model/AlbumModel;->albumIndex:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/music/online/model/AlbumModel;->mTitle:Ljava/lang/String;

    .line 122
    iget v2, p0, Lcn/nubia/music/online/model/AlbumModel;->albumLetterIndex:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcn/nubia/music/online/model/AlbumModel;->nameLetter:C

    .line 123
    iget v1, p0, Lcn/nubia/music/online/model/AlbumModel;->ArtistIndex:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/music/online/model/AlbumModel;->mSubTitle:Ljava/lang/String;

    iput-object v1, p0, Lcn/nubia/music/online/model/AlbumModel;->mArtistName:Ljava/lang/String;

    .line 124
    iget v1, p0, Lcn/nubia/music/online/model/AlbumModel;->albumSongsIndex:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/music/online/model/AlbumModel;->numMusic:I

    .line 126
    iget v1, p0, Lcn/nubia/music/online/model/AlbumModel;->albumArtIndex:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/music/online/model/AlbumModel;->mImageUrl:Ljava/lang/String;

    .line 127
    new-instance v1, Lcn/nubia/music/online/data/ImageUrlEntry;

    invoke-direct {v1}, Lcn/nubia/music/online/data/ImageUrlEntry;-><init>()V

    iput-object v1, p0, Lcn/nubia/music/online/model/AlbumModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    .line 128
    iget-object v1, p0, Lcn/nubia/music/online/model/AlbumModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget v2, p0, Lcn/nubia/music/online/model/AlbumModel;->albumImg80Index:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_80_80:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcn/nubia/music/online/model/AlbumModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget v2, p0, Lcn/nubia/music/online/model/AlbumModel;->albumImg120Index:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_120_120:Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lcn/nubia/music/online/model/AlbumModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget v2, p0, Lcn/nubia/music/online/model/AlbumModel;->albumImg220Index:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_220_220:Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lcn/nubia/music/online/model/AlbumModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget v2, p0, Lcn/nubia/music/online/model/AlbumModel;->albumImg330Index:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_330_330:Ljava/lang/String;

    .line 132
    iget-object v1, p0, Lcn/nubia/music/online/model/AlbumModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget v2, p0, Lcn/nubia/music/online/model/AlbumModel;->albumImg400Index:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_400_400:Ljava/lang/String;

    .line 133
    iget-object v1, p0, Lcn/nubia/music/online/model/AlbumModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget v2, p0, Lcn/nubia/music/online/model/AlbumModel;->albumImg640Index:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_640_640:Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcn/nubia/music/online/model/AlbumModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget v2, p0, Lcn/nubia/music/online/model/AlbumModel;->albumImg720Index:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_720_720:Ljava/lang/String;

    .line 136
    iput-boolean v0, p0, Lcn/nubia/music/online/model/AlbumModel;->mIsLocal:Z

    goto/16 :goto_0
.end method

.method public createFromPracelable(Landroid/content/Context;Landroid/os/Parcelable;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 83
    check-cast p2, Lcn/nubia/music/online/data/AlbumEntry;

    .line 84
    iput-object p2, p0, Lcn/nubia/music/online/model/AlbumModel;->entryObj:Ljava/lang/Object;

    .line 85
    if-eqz p2, :cond_3

    .line 86
    iget-object v0, p2, Lcn/nubia/music/online/data/AlbumEntry;->mAlbumName:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/music/online/model/AlbumModel;->mTitle:Ljava/lang/String;

    .line 87
    iget-object v0, p2, Lcn/nubia/music/online/data/AlbumEntry;->mPicBig:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/music/online/model/AlbumModel;->mImageUrl:Ljava/lang/String;

    .line 90
    iget-object v0, p2, Lcn/nubia/music/online/data/AlbumEntry;->mAlbumId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/music/online/model/AlbumModel;->mMediaId:J

    .line 91
    iget-object v0, p2, Lcn/nubia/music/online/data/AlbumEntry;->mArtistId:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/music/online/model/AlbumModel;->mArtistId:Ljava/lang/String;

    .line 92
    iget-object v0, p2, Lcn/nubia/music/online/data/AlbumEntry;->mArtistName:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/music/online/model/AlbumModel;->mArtistName:Ljava/lang/String;

    .line 93
    iget-object v0, p2, Lcn/nubia/music/online/data/AlbumEntry;->mAlbumDescription:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/music/online/model/AlbumModel;->mAlbumDescription:Ljava/lang/String;

    .line 94
    iget-object v0, p2, Lcn/nubia/music/online/data/AlbumEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iput-object v0, p0, Lcn/nubia/music/online/model/AlbumModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/online/model/AlbumModel;->mMusicModelList:Ljava/util/ArrayList;

    .line 96
    iget-wide v0, p2, Lcn/nubia/music/online/data/AlbumEntry;->mPublishTime:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    invoke-direct {p0, v0, v1}, Lcn/nubia/music/online/model/AlbumModel;->convertTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/model/AlbumModel;->mSubTitle:Ljava/lang/String;

    .line 97
    iget-object v0, p2, Lcn/nubia/music/online/data/AlbumEntry;->mMusicList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p2, Lcn/nubia/music/online/data/AlbumEntry;->mMusicList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/AlbumModel;->numMusic:I

    move v1, v2

    .line 99
    :goto_0
    iget v0, p0, Lcn/nubia/music/online/model/AlbumModel;->numMusic:I

    if-ge v1, v0, :cond_2

    .line 100
    new-instance v3, Lcn/nubia/music/online/model/MusicModel;

    invoke-direct {v3, p1}, Lcn/nubia/music/online/model/MusicModel;-><init>(Landroid/content/Context;)V

    .line 101
    iget-object v0, p2, Lcn/nubia/music/online/data/AlbumEntry;->mMusicList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/data/MusicEntry;

    .line 102
    if-eqz v0, :cond_0

    invoke-virtual {v3, p1, v0}, Lcn/nubia/music/online/model/MusicModel;->createFromPracelable(Landroid/content/Context;Landroid/os/Parcelable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcn/nubia/music/online/model/AlbumModel;->mMusicModelList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 107
    :cond_1
    iput v2, p0, Lcn/nubia/music/online/model/AlbumModel;->numMusic:I

    .line 109
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/online/model/AlbumModel;->mMusicModelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/AlbumModel;->numMusic:I

    .line 110
    iput-boolean v2, p0, Lcn/nubia/music/online/model/AlbumModel;->mIsLocal:Z

    .line 112
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public getColumnIndex(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 49
    const-string v0, "album_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/AlbumModel;->albumIDIndex:I

    .line 50
    const-string v0, "album"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/AlbumModel;->albumIndex:I

    .line 51
    const-string v0, "album_letter"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/AlbumModel;->albumLetterIndex:I

    .line 52
    const-string v0, "album_art"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/AlbumModel;->albumArtIndex:I

    .line 53
    const-string v0, "num_of_songs"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/AlbumModel;->albumSongsIndex:I

    .line 54
    const-string v0, "artist"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/AlbumModel;->ArtistIndex:I

    .line 55
    const-string v0, "image_url"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/AlbumModel;->albumImgIndex:I

    .line 56
    const-string v0, "image_url_80_80"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/AlbumModel;->albumImg80Index:I

    .line 57
    const-string v0, "image_url_120_120"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/AlbumModel;->albumImg120Index:I

    .line 58
    const-string v0, "image_url_220_220"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/AlbumModel;->albumImg220Index:I

    .line 59
    const-string v0, "image_url_330_330"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/AlbumModel;->albumImg330Index:I

    .line 60
    const-string v0, "image_url_400_400"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/AlbumModel;->albumImg400Index:I

    .line 61
    const-string v0, "image_url_640_640"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/AlbumModel;->albumImg640Index:I

    .line 62
    const-string v0, "image_url_720_720"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/AlbumModel;->albumImg720Index:I

    .line 64
    return-void
.end method
