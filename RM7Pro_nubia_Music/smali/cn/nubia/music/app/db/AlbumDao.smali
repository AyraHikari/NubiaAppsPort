.class public Lcn/nubia/music/app/db/AlbumDao;
.super Ljava/lang/Object;
.source "AlbumDao.java"


# static fields
.field private static final columns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album_letter"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "num_of_songs"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "image_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "image_url_80_80"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "image_url_120_120"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "image_url_220_220"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "image_url_330_330"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "image_url_400_400"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "image_url_640_640"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "image_url_720_720"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "album_art"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/music/app/db/AlbumDao;->columns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAlbumToPlaylist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[J)Z
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 161
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 162
    const-string v4, "playlist_name"

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v4, "playlist_type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    const-string v4, "playlist_media_id"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v4, "content://nubia.music.preset/playlists"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_1

    .line 168
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 169
    array-length v0, p3

    new-array v6, v0, [Landroid/content/ContentValues;

    move v0, v1

    .line 171
    :goto_0
    array-length v7, p3

    if-ge v0, v7, :cond_0

    .line 172
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 173
    const-string v8, "playlist_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 174
    const-string v8, "audio_id"

    aget-wide v10, p3, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 175
    aput-object v7, v6, v0

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_0
    const-string v0, "content://nubia.music.preset/playlistDatas"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 179
    if-lez v0, :cond_1

    move v1, v2

    .line 183
    :cond_1
    return v1
.end method

.method public static deleteAlbumFromPlaylist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 195
    const-string v0, "content://nubia.music.preset/playlists"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playlist_media_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 199
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAlbumById(Landroid/content/Context;Ljava/lang/String;)Lcn/nubia/music/online/model/AlbumModel;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/album_infos"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcn/nubia/music/app/db/AlbumDao;->columns:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    new-instance v4, Lcn/nubia/music/online/model/AlbumModel;

    invoke-direct {v4, p0}, Lcn/nubia/music/online/model/AlbumModel;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {v4, p0, v0}, Lcn/nubia/music/online/model/AlbumModel;->createFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Z

    .line 112
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 115
    :cond_0
    return-object v4
.end method

.method public static getAllAlbum(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 39
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 41
    const-string v0, "content://nubia.music.preset/album_infos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcn/nubia/music/app/db/AlbumDao;->columns:[Ljava/lang/String;

    const-string v5, "album_letter"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 43
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    const/16 v0, 0x20

    .line 48
    :goto_0
    const-string v1, "album_letter"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 49
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 50
    const/16 v3, 0x61

    if-lt v1, v3, :cond_0

    const/16 v3, 0x7a

    if-le v1, v3, :cond_1

    :cond_0
    const/16 v3, 0x41

    if-lt v1, v3, :cond_2

    const/16 v3, 0x5a

    if-gt v1, v3, :cond_2

    .line 51
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 53
    :cond_2
    new-instance v3, Lcn/nubia/music/online/model/AlbumModel;

    invoke-direct {v3, p0}, Lcn/nubia/music/online/model/AlbumModel;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-virtual {v3, p0, v2}, Lcn/nubia/music/online/model/MediaModel;->createFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Z

    .line 55
    if-eq v0, v1, :cond_5

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v3, Lcn/nubia/music/online/model/MediaModel;->hasLetterGroup:Z

    .line 57
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 62
    :cond_3
    if-eqz v2, :cond_4

    .line 63
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 67
    :cond_4
    invoke-static {v7}, Lcn/nubia/music/app/db/AlbumDao;->moveHexKeyToEnd(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 69
    return-object v0

    :cond_5
    move v0, v6

    .line 55
    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public static getSongListOfAlbum(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    const-string v1, "title != \'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND album_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, " AND type=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "title_letter"

    invoke-static {p0, v0, v1}, Lcn/nubia/music/app/db/MusicDao;->getMusicList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static moveHexKeyToEnd(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v5, 0x23

    const/4 v3, -0x1

    .line 74
    .line 76
    const/4 v0, 0x0

    move v1, v0

    move v2, v3

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 77
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 78
    iget-boolean v4, v0, Lcn/nubia/music/online/model/MediaModel;->hasLetterGroup:Z

    if-eqz v4, :cond_0

    iget-char v4, v0, Lcn/nubia/music/online/model/MediaModel;->nameLetter:C

    if-ne v4, v5, :cond_0

    move v2, v1

    .line 81
    :cond_0
    iget-boolean v4, v0, Lcn/nubia/music/online/model/MediaModel;->hasLetterGroup:Z

    if-eqz v4, :cond_1

    iget-char v0, v0, Lcn/nubia/music/online/model/MediaModel;->nameLetter:C

    if-eq v0, v5, :cond_1

    move v3, v1

    move v1, v2

    .line 86
    :goto_1
    if-ltz v1, :cond_3

    if-le v3, v1, :cond_3

    move v0, v1

    .line 87
    :goto_2
    if-ge v0, v3, :cond_2

    .line 88
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 76
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 90
    :cond_2
    add-int/lit8 v0, v3, -0x1

    :goto_3
    if-lt v0, v1, :cond_3

    .line 91
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 90
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 94
    :cond_3
    return-object p0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public static queryAlbumIsInPlaylist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 139
    const-string v0, "content://nubia.music.preset/playlists"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playlist_media_id = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 143
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 144
    :goto_0
    if-eqz v1, :cond_0

    .line 145
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_0
    return v0

    .line 143
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static searchAlbum(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(album like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/album_infos"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcn/nubia/music/app/db/AlbumDao;->columns:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "album_letter"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    :cond_0
    new-instance v1, Lcn/nubia/music/online/model/AlbumModel;

    invoke-direct {v1, p0}, Lcn/nubia/music/online/model/AlbumModel;-><init>(Landroid/content/Context;)V

    .line 212
    invoke-virtual {v1, p0, v0}, Lcn/nubia/music/online/model/AlbumModel;->createFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Z

    .line 213
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 218
    :cond_1
    return-object v6
.end method
