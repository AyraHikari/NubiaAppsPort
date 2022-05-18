.class public Lcn/nubia/music/app/db/MusicDao;
.super Ljava/lang/Object;
.source "MusicDao.java"


# static fields
.field public static final columns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "music_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "song_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "image_url_120_120"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "image_url_220_220"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "image_url_330_330"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "image_url_400_400"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "image_url_640_640"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "image_url_720_720"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "image_url_80_80"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "image_url"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "album_art"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "title_key"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "title_letter"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "available_flag"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/music/app/db/MusicDao;->columns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllMusic(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 8
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
    const/4 v6, 0x0

    .line 40
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 43
    const-string v5, "title_letter"

    .line 48
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    const-string v0, "title != \'\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v0, " AND type=0"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v0, "content://nubia.music.preset/audios"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcn/nubia/music/app/db/MusicDao;->columns:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 53
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    const/16 v0, 0x20

    .line 58
    :goto_1
    const-string v1, "title_letter"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 59
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 60
    const/16 v3, 0x61

    if-lt v1, v3, :cond_0

    const/16 v3, 0x7a

    if-le v1, v3, :cond_1

    :cond_0
    const/16 v3, 0x41

    if-lt v1, v3, :cond_2

    const/16 v3, 0x5a

    if-gt v1, v3, :cond_2

    .line 61
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 63
    :cond_2
    new-instance v3, Lcn/nubia/music/online/model/MusicModel;

    invoke-direct {v3, p0}, Lcn/nubia/music/online/model/MusicModel;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {v3, p0, v2}, Lcn/nubia/music/online/model/MediaModel;->createFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Z

    .line 65
    if-eq v0, v1, :cond_6

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, v3, Lcn/nubia/music/online/model/MediaModel;->hasLetterGroup:Z

    .line 67
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 72
    :cond_3
    if-eqz v2, :cond_4

    .line 73
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 77
    :cond_4
    invoke-static {v7}, Lcn/nubia/music/app/db/MusicDao;->moveHexKeyToEnd(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 79
    return-object v0

    :cond_5
    move-object v5, p1

    .line 45
    goto :goto_0

    :cond_6
    move v0, v6

    .line 65
    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method public static getMusicList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/audios"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcn/nubia/music/app/db/MusicDao;->columns:[Ljava/lang/String;

    const/4 v4, 0x0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    :cond_0
    new-instance v2, Lcn/nubia/music/online/model/MusicModel;

    invoke-direct {v2, p0}, Lcn/nubia/music/online/model/MusicModel;-><init>(Landroid/content/Context;)V

    .line 113
    invoke-virtual {v2, p0, v0}, Lcn/nubia/music/online/model/MusicModel;->createFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Z

    .line 114
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_1
    return-object v1
.end method

.method public static getMusicModelById(Landroid/content/Context;Ljava/lang/String;)Lcn/nubia/music/online/model/MusicModel;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/audios"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcn/nubia/music/app/db/MusicDao;->columns:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    new-instance v4, Lcn/nubia/music/online/model/MusicModel;

    invoke-direct {v4, p0}, Lcn/nubia/music/online/model/MusicModel;-><init>(Landroid/content/Context;)V

    .line 131
    invoke-virtual {v4, p0, v0}, Lcn/nubia/music/online/model/MusicModel;->createFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Z

    .line 132
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 135
    :cond_0
    return-object v4
.end method

.method public static isLike(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    const-string v0, "audio_id"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/favorites"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 163
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static like(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    .prologue
    .line 170
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 171
    const-string v1, "audio_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://nubia.music.preset/favorites"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 173
    const/4 v0, 0x0

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

    .line 84
    .line 86
    const/4 v0, 0x0

    move v1, v0

    move v2, v3

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 87
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 88
    iget-boolean v4, v0, Lcn/nubia/music/online/model/MediaModel;->hasLetterGroup:Z

    if-eqz v4, :cond_0

    iget-char v4, v0, Lcn/nubia/music/online/model/MediaModel;->nameLetter:C

    if-ne v4, v5, :cond_0

    move v2, v1

    .line 91
    :cond_0
    iget-boolean v4, v0, Lcn/nubia/music/online/model/MediaModel;->hasLetterGroup:Z

    if-eqz v4, :cond_1

    iget-char v0, v0, Lcn/nubia/music/online/model/MediaModel;->nameLetter:C

    if-eq v0, v5, :cond_1

    move v3, v1

    move v1, v2

    .line 96
    :goto_1
    if-ltz v1, :cond_3

    if-le v3, v1, :cond_3

    move v0, v1

    .line 97
    :goto_2
    if-ge v0, v3, :cond_2

    .line 98
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 86
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 100
    :cond_2
    add-int/lit8 v0, v3, -0x1

    :goto_3
    if-lt v0, v1, :cond_3

    .line 101
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 100
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 104
    :cond_3
    return-object p0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public static searchMusic(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
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
    .line 139
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    const-string v0, "type = 0 and "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(title like \'%"

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

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/audios"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcn/nubia/music/app/db/MusicDao;->columns:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "title_letter"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    :cond_0
    new-instance v1, Lcn/nubia/music/online/model/MusicModel;

    invoke-direct {v1, p0}, Lcn/nubia/music/online/model/MusicModel;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {v1, p0, v0}, Lcn/nubia/music/online/model/MusicModel;->createFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Z

    .line 149
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_1
    return-object v6
.end method

.method public static unLike(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    const-string v1, "audio_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://nubia.music.preset/favorites"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 180
    return-object v3
.end method
