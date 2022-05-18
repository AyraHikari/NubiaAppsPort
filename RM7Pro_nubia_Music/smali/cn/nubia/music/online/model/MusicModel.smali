.class public Lcn/nubia/music/online/model/MusicModel;
.super Lcn/nubia/music/online/model/MediaModel;
.source "MusicModel.java"


# static fields
.field public static bInit:Z

.field private static mUnknowArtist:Ljava/lang/String;

.field public static sCachePath:Ljava/lang/String;


# instance fields
.field private index_album:I

.field private index_album_art:I

.field private index_album_id:I

.field private index_artist:I

.field private index_artist_id:I

.field private index_available:I

.field private index_data:I

.field private index_duration:I

.field private index_id:I

.field private index_image120:I

.field private index_image220:I

.field private index_image330:I

.field private index_image400:I

.field private index_image640:I

.field private index_image720:I

.field private index_image80:I

.field private index_music_id:I

.field private index_song_id:I

.field private index_title:I

.field public index_title_key:I

.field private index_title_letter:I

.field private index_type:I

.field public mAlbum:Ljava/lang/String;

.field public mAlbumArtImage:Ljava/lang/String;

.field public mArtist:Ljava/lang/String;

.field public mAudioType:I

.field public mAvaliable:Z

.field public mData:Ljava/lang/String;

.field public mDownloadStatus:I

.field public mIsDownload:Z

.field public mMusicDurating:Ljava/lang/String;

.field public mSongId:Ljava/lang/String;

.field public mSongPath:Ljava/lang/String;

.field public mSongStatus:I

.field public mUpgradeRole:Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/music/online/model/MusicModel;->mUnknowArtist:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/music/online/model/MusicModel;->bInit:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcn/nubia/music/online/model/MediaModel;-><init>(Landroid/content/Context;I)V

    .line 24
    iput v1, p0, Lcn/nubia/music/online/model/MusicModel;->index_id:I

    .line 25
    iput v1, p0, Lcn/nubia/music/online/model/MusicModel;->index_music_id:I

    .line 26
    iput v1, p0, Lcn/nubia/music/online/model/MusicModel;->index_title:I

    .line 27
    iput v1, p0, Lcn/nubia/music/online/model/MusicModel;->index_data:I

    .line 28
    iput v1, p0, Lcn/nubia/music/online/model/MusicModel;->index_album:I

    .line 29
    iput v1, p0, Lcn/nubia/music/online/model/MusicModel;->index_album_id:I

    .line 30
    iput v1, p0, Lcn/nubia/music/online/model/MusicModel;->index_artist:I

    .line 31
    iput v1, p0, Lcn/nubia/music/online/model/MusicModel;->index_artist_id:I

    .line 32
    iput v1, p0, Lcn/nubia/music/online/model/MusicModel;->index_duration:I

    .line 33
    iput v1, p0, Lcn/nubia/music/online/model/MusicModel;->index_type:I

    .line 34
    iput v1, p0, Lcn/nubia/music/online/model/MusicModel;->index_title_key:I

    .line 35
    iput v1, p0, Lcn/nubia/music/online/model/MusicModel;->index_title_letter:I

    .line 36
    iput v1, p0, Lcn/nubia/music/online/model/MusicModel;->index_song_id:I

    .line 38
    iput v1, p0, Lcn/nubia/music/online/model/MusicModel;->index_image80:I

    .line 39
    iput v1, p0, Lcn/nubia/music/online/model/MusicModel;->index_image120:I

    .line 40
    iput v1, p0, Lcn/nubia/music/online/model/MusicModel;->index_image220:I

    .line 41
    iput v1, p0, Lcn/nubia/music/online/model/MusicModel;->index_image330:I

    .line 42
    iput v1, p0, Lcn/nubia/music/online/model/MusicModel;->index_image400:I

    .line 43
    iput v1, p0, Lcn/nubia/music/online/model/MusicModel;->index_image640:I

    .line 44
    iput v1, p0, Lcn/nubia/music/online/model/MusicModel;->index_image720:I

    .line 45
    iput v1, p0, Lcn/nubia/music/online/model/MusicModel;->index_album_art:I

    .line 47
    iput v1, p0, Lcn/nubia/music/online/model/MusicModel;->index_available:I

    .line 75
    sget-object v0, Lcn/nubia/music/online/model/MusicModel;->sCachePath:Ljava/lang/String;

    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p1}, Lcn/nubia/music/app/download/PathManager;->getInstance(Landroid/content/Context;)Lcn/nubia/music/app/download/PathManager;

    move-result-object v0

    sget-object v1, Lcn/nubia/music/app/download/PathManager$PathTag;->SONGS:Lcn/nubia/music/app/download/PathManager$PathTag;

    invoke-virtual {v0, v1}, Lcn/nubia/music/app/download/PathManager;->getCachePath(Lcn/nubia/music/app/download/PathManager$PathTag;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/online/model/MusicModel;->sCachePath:Ljava/lang/String;

    .line 78
    :cond_0
    sget-boolean v0, Lcn/nubia/music/online/model/MusicModel;->bInit:Z

    if-nez v0, :cond_1

    .line 79
    const v0, 0x7f0b0134

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/online/model/MusicModel;->mUnknowArtist:Ljava/lang/String;

    .line 80
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/music/online/model/MusicModel;->bInit:Z

    .line 82
    :cond_1
    return-void
.end method


# virtual methods
.method public createFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 143
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v1, v0

    .line 216
    :cond_1
    :goto_0
    return v1

    .line 147
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcn/nubia/music/online/model/MusicModel;->getColumnIndex(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 148
    new-instance v3, Lcn/nubia/music/online/data/MusicEntry;

    invoke-direct {v3}, Lcn/nubia/music/online/data/MusicEntry;-><init>()V

    .line 149
    iget v2, p0, Lcn/nubia/music/online/model/MusicModel;->index_music_id:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcn/nubia/music/online/data/MusicEntry;->mSongId:Ljava/lang/String;

    .line 150
    iget v2, p0, Lcn/nubia/music/online/model/MusicModel;->index_title:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcn/nubia/music/online/data/MusicEntry;->mSongName:Ljava/lang/String;

    .line 151
    iget v2, p0, Lcn/nubia/music/online/model/MusicModel;->index_album_id:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcn/nubia/music/online/data/MusicEntry;->mAlbumId:Ljava/lang/String;

    .line 152
    iget v2, p0, Lcn/nubia/music/online/model/MusicModel;->index_album:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcn/nubia/music/online/data/MusicEntry;->mAlbumName:Ljava/lang/String;

    .line 153
    iget v2, p0, Lcn/nubia/music/online/model/MusicModel;->index_artist_id:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcn/nubia/music/online/data/MusicEntry;->mArtistId:Ljava/lang/String;

    .line 154
    iget v2, p0, Lcn/nubia/music/online/model/MusicModel;->index_artist:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcn/nubia/music/online/data/MusicEntry;->mArtistName:Ljava/lang/String;

    .line 155
    iget v2, p0, Lcn/nubia/music/online/model/MusicModel;->index_song_id:I

    if-ltz v2, :cond_3

    .line 156
    iget v2, p0, Lcn/nubia/music/online/model/MusicModel;->index_song_id:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/music/online/model/MusicModel;->mSongId:Ljava/lang/String;

    .line 160
    :cond_3
    :try_start_0
    new-instance v2, Lcn/nubia/music/online/data/ImageUrlEntry;

    invoke-direct {v2}, Lcn/nubia/music/online/data/ImageUrlEntry;-><init>()V

    iput-object v2, p0, Lcn/nubia/music/online/model/MusicModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    .line 161
    iget-object v2, p0, Lcn/nubia/music/online/model/MusicModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget v4, p0, Lcn/nubia/music/online/model/MusicModel;->index_image80:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_80_80:Ljava/lang/String;

    .line 162
    iget-object v2, p0, Lcn/nubia/music/online/model/MusicModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget v4, p0, Lcn/nubia/music/online/model/MusicModel;->index_image120:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_120_120:Ljava/lang/String;

    .line 163
    iget-object v2, p0, Lcn/nubia/music/online/model/MusicModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget v4, p0, Lcn/nubia/music/online/model/MusicModel;->index_image220:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_220_220:Ljava/lang/String;

    .line 164
    iget-object v2, p0, Lcn/nubia/music/online/model/MusicModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget v4, p0, Lcn/nubia/music/online/model/MusicModel;->index_image330:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_330_330:Ljava/lang/String;

    .line 165
    iget-object v2, p0, Lcn/nubia/music/online/model/MusicModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget v4, p0, Lcn/nubia/music/online/model/MusicModel;->index_image400:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_400_400:Ljava/lang/String;

    .line 166
    iget-object v2, p0, Lcn/nubia/music/online/model/MusicModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget v4, p0, Lcn/nubia/music/online/model/MusicModel;->index_image640:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_640_640:Ljava/lang/String;

    .line 167
    iget-object v2, p0, Lcn/nubia/music/online/model/MusicModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iget v4, p0, Lcn/nubia/music/online/model/MusicModel;->index_image720:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_720_720:Ljava/lang/String;

    .line 168
    iget v2, p0, Lcn/nubia/music/online/model/MusicModel;->index_album_art:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/music/online/model/MusicModel;->mImageUrl:Ljava/lang/String;

    .line 169
    iget v2, p0, Lcn/nubia/music/online/model/MusicModel;->index_album_art:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/music/online/model/MusicModel;->mAlbumArtImage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_1
    iput-object v6, v3, Lcn/nubia/music/online/data/MusicEntry;->mFileLink:Ljava/lang/String;

    .line 175
    iput-object v6, v3, Lcn/nubia/music/online/data/MusicEntry;->mLrcLink:Ljava/lang/String;

    .line 176
    iput-object v6, v3, Lcn/nubia/music/online/data/MusicEntry;->mShowLink:Ljava/lang/String;

    .line 178
    :try_start_1
    iget v2, p0, Lcn/nubia/music/online/model/MusicModel;->index_duration:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcn/nubia/music/online/data/MusicEntry;->mDuration:Ljava/lang/String;

    .line 179
    iget v2, p0, Lcn/nubia/music/online/model/MusicModel;->index_title_letter:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcn/nubia/music/online/model/MusicModel;->nameLetter:C
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 184
    :goto_2
    iget-object v2, v3, Lcn/nubia/music/online/data/MusicEntry;->mSongName:Ljava/lang/String;

    iput-object v2, p0, Lcn/nubia/music/online/model/MusicModel;->mTitle:Ljava/lang/String;

    .line 185
    iget-object v2, v3, Lcn/nubia/music/online/data/MusicEntry;->mArtistName:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v3, Lcn/nubia/music/online/data/MusicEntry;->mArtistName:Ljava/lang/String;

    const-string v4, "<unknown>"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 186
    :cond_4
    sget-object v2, Lcn/nubia/music/online/model/MusicModel;->mUnknowArtist:Ljava/lang/String;

    iput-object v2, p0, Lcn/nubia/music/online/model/MusicModel;->mSubTitle:Ljava/lang/String;

    .line 190
    :goto_3
    iget-object v2, v3, Lcn/nubia/music/online/data/MusicEntry;->mDuration:Ljava/lang/String;

    iput-object v2, p0, Lcn/nubia/music/online/model/MusicModel;->mMusicDurating:Ljava/lang/String;

    .line 191
    iget v2, p0, Lcn/nubia/music/online/model/MusicModel;->index_id:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/music/online/model/MusicModel;->mMediaId:J

    .line 192
    iget v2, p0, Lcn/nubia/music/online/model/MusicModel;->index_data:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/music/online/model/MusicModel;->mData:Ljava/lang/String;

    .line 193
    iput-boolean v0, p0, Lcn/nubia/music/online/model/MusicModel;->mIsDownload:Z

    .line 194
    iget-object v2, p0, Lcn/nubia/music/online/model/MusicModel;->mData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 195
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcn/nubia/music/online/model/MusicModel;->mData:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    sget-object v3, Lcn/nubia/music/online/model/MusicModel;->sCachePath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 198
    invoke-static {p1}, Lcn/nubia/music/app/download/PathManager;->getInstance(Landroid/content/Context;)Lcn/nubia/music/app/download/PathManager;

    move-result-object v3

    sget-object v4, Lcn/nubia/music/app/download/PathManager$PathTag;->SONGS:Lcn/nubia/music/app/download/PathManager$PathTag;

    invoke-virtual {v3, v4}, Lcn/nubia/music/app/download/PathManager;->getCachePath(Lcn/nubia/music/app/download/PathManager$PathTag;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcn/nubia/music/online/model/MusicModel;->sCachePath:Ljava/lang/String;

    .line 202
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcn/nubia/music/online/model/MusicModel;->sCachePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 203
    iput-boolean v1, p0, Lcn/nubia/music/online/model/MusicModel;->mIsDownload:Z

    .line 206
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFromCursor() mIsDownload="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcn/nubia/music/online/model/MusicModel;->mIsDownload:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 208
    iget-object v2, p0, Lcn/nubia/music/online/model/MusicModel;->mSubTitle:Ljava/lang/String;

    iput-object v2, p0, Lcn/nubia/music/online/model/MusicModel;->mArtist:Ljava/lang/String;

    .line 209
    iget v2, p0, Lcn/nubia/music/online/model/MusicModel;->index_album:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/music/online/model/MusicModel;->mAlbum:Ljava/lang/String;

    .line 210
    iget v2, p0, Lcn/nubia/music/online/model/MusicModel;->index_type:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcn/nubia/music/online/model/MusicModel;->mAudioType:I

    .line 211
    iput-boolean v1, p0, Lcn/nubia/music/online/model/MusicModel;->mIsLocal:Z

    .line 213
    iget v2, p0, Lcn/nubia/music/online/model/MusicModel;->index_available:I

    if-lez v2, :cond_1

    .line 214
    iget v2, p0, Lcn/nubia/music/online/model/MusicModel;->index_available:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    :cond_7
    iput-boolean v0, p0, Lcn/nubia/music/online/model/MusicModel;->mAvaliable:Z

    goto/16 :goto_0

    .line 170
    :catch_0
    move-exception v2

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 188
    :cond_8
    iget-object v2, v3, Lcn/nubia/music/online/data/MusicEntry;->mArtistName:Ljava/lang/String;

    iput-object v2, p0, Lcn/nubia/music/online/model/MusicModel;->mSubTitle:Ljava/lang/String;

    goto/16 :goto_3

    .line 180
    :catch_1
    move-exception v2

    goto/16 :goto_2
.end method

.method public createFromPracelable(Landroid/content/Context;Landroid/os/Parcelable;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    :try_start_0
    check-cast p2, Lcn/nubia/music/online/data/MusicEntry;

    .line 116
    iput-object p2, p0, Lcn/nubia/music/online/model/MusicModel;->entryObj:Ljava/lang/Object;

    .line 117
    if-eqz p2, :cond_0

    .line 118
    iget-object v2, p2, Lcn/nubia/music/online/data/MusicEntry;->mSongName:Ljava/lang/String;

    iput-object v2, p0, Lcn/nubia/music/online/model/MusicModel;->mTitle:Ljava/lang/String;

    .line 119
    iget-object v2, p2, Lcn/nubia/music/online/data/MusicEntry;->mImageUrl:Ljava/lang/String;

    iput-object v2, p0, Lcn/nubia/music/online/model/MusicModel;->mImageUrl:Ljava/lang/String;

    .line 120
    iget-object v2, p2, Lcn/nubia/music/online/data/MusicEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    iput-object v2, p0, Lcn/nubia/music/online/model/MusicModel;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    .line 121
    iget-object v2, p2, Lcn/nubia/music/online/data/MusicEntry;->mSongId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/music/online/model/MusicModel;->mMediaId:J

    .line 122
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/nubia/music/online/model/MusicModel;->mIsLocal:Z

    .line 123
    iget-object v2, p2, Lcn/nubia/music/online/data/MusicEntry;->mArtistName:Ljava/lang/String;

    iput-object v2, p0, Lcn/nubia/music/online/model/MusicModel;->mSubTitle:Ljava/lang/String;

    .line 124
    iget-object v2, p2, Lcn/nubia/music/online/data/MusicEntry;->mArtistName:Ljava/lang/String;

    iput-object v2, p0, Lcn/nubia/music/online/model/MusicModel;->mArtist:Ljava/lang/String;

    .line 125
    iget-object v2, p2, Lcn/nubia/music/online/data/MusicEntry;->mAlbumName:Ljava/lang/String;

    iput-object v2, p0, Lcn/nubia/music/online/model/MusicModel;->mAlbum:Ljava/lang/String;

    .line 126
    iget-object v2, p2, Lcn/nubia/music/online/data/MusicEntry;->mSongId:Ljava/lang/String;

    iput-object v2, p0, Lcn/nubia/music/online/model/MusicModel;->mSongId:Ljava/lang/String;

    .line 127
    const/4 v2, 0x1

    iput v2, p0, Lcn/nubia/music/online/model/MusicModel;->mAudioType:I

    .line 130
    sget-object v2, Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;->OTHER:Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    iput-object v2, p0, Lcn/nubia/music/online/model/MusicModel;->mUpgradeRole:Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    .line 131
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/nubia/music/online/model/MusicModel;->mAvaliable:Z

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFromPracelable, mUpgradeRole:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/music/online/model/MusicModel;->mUpgradeRole:Lcn/nubia/music/online/entities/OperationListEntry$UpgradeRole;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ; mAvaliable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcn/nubia/music/online/model/MusicModel;->mAvaliable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    :goto_0
    return v0

    .line 135
    :catch_0
    move-exception v0

    .line 136
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

    move v0, v1

    .line 137
    goto :goto_0
.end method

.method public getColumnIndex(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 86
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/MusicModel;->index_id:I

    .line 87
    const-string v0, "music_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/MusicModel;->index_music_id:I

    .line 88
    const-string v0, "title"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/MusicModel;->index_title:I

    .line 89
    const-string v0, "data"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/MusicModel;->index_data:I

    .line 90
    const-string v0, "album"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/MusicModel;->index_album:I

    .line 91
    const-string v0, "album_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/MusicModel;->index_album_id:I

    .line 92
    const-string v0, "artist"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/MusicModel;->index_artist:I

    .line 93
    const-string v0, "artist_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/MusicModel;->index_artist_id:I

    .line 94
    const-string v0, "duration"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/MusicModel;->index_duration:I

    .line 95
    const-string v0, "type"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/MusicModel;->index_type:I

    .line 96
    const-string v0, "title_key"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/MusicModel;->index_title_key:I

    .line 97
    const-string v0, "title_letter"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/MusicModel;->index_title_letter:I

    .line 99
    const-string v0, "album_art"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/MusicModel;->index_album_art:I

    .line 100
    const-string v0, "image_url_80_80"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/MusicModel;->index_image80:I

    .line 101
    const-string v0, "image_url_120_120"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/MusicModel;->index_image120:I

    .line 102
    const-string v0, "image_url_220_220"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/MusicModel;->index_image220:I

    .line 103
    const-string v0, "image_url_330_330"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/MusicModel;->index_image330:I

    .line 104
    const-string v0, "image_url_400_400"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/MusicModel;->index_image400:I

    .line 105
    const-string v0, "image_url_640_640"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/MusicModel;->index_image640:I

    .line 106
    const-string v0, "image_url_720_720"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/MusicModel;->index_image720:I

    .line 107
    const-string v0, "song_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/MusicModel;->index_song_id:I

    .line 109
    const-string v0, "available_flag"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/model/MusicModel;->index_available:I

    .line 111
    return-void
.end method
