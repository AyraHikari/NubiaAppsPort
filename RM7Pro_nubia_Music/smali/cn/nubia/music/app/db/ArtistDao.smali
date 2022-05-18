.class public Lcn/nubia/music/app/db/ArtistDao;
.super Ljava/lang/Object;
.source "ArtistDao.java"


# static fields
.field private static final columns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "artist_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "artist_letter"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "num_of_songs"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "avg_80_80"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "avg_120_120"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "avg_220_220"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "avg_330_330"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "avg_400_400"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "avg_640_640"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "avg_720_720"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "num_of_albums"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/music/app/db/ArtistDao;->columns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllArtist(Landroid/content/Context;)Ljava/util/List;
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

    .line 35
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 38
    const-string v0, "content://nubia.music.preset/artist_infos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcn/nubia/music/app/db/ArtistDao;->columns:[Ljava/lang/String;

    const-string v5, "artist_letter"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 40
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    const/16 v0, 0x20

    .line 45
    :goto_0
    const-string v1, "artist_letter"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 46
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 47
    const/16 v3, 0x61

    if-lt v1, v3, :cond_0

    const/16 v3, 0x7a

    if-le v1, v3, :cond_1

    :cond_0
    const/16 v3, 0x41

    if-lt v1, v3, :cond_2

    const/16 v3, 0x5a

    if-gt v1, v3, :cond_2

    .line 48
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 50
    :cond_2
    new-instance v3, Lcn/nubia/music/online/model/ArtistModel;

    invoke-direct {v3, p0}, Lcn/nubia/music/online/model/ArtistModel;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {v3, p0, v2}, Lcn/nubia/music/online/model/MediaModel;->createFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Z

    .line 52
    if-eq v0, v1, :cond_5

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v3, Lcn/nubia/music/online/model/MediaModel;->hasLetterGroup:Z

    .line 54
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 59
    :cond_3
    if-eqz v2, :cond_4

    .line 60
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_4
    invoke-static {v7}, Lcn/nubia/music/app/db/ArtistDao;->moveHexKeyToEnd(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 66
    return-object v0

    :cond_5
    move v0, v6

    .line 52
    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public static getArtistById(Landroid/content/Context;Ljava/lang/String;)Lcn/nubia/music/online/model/ArtistModel;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "artist_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/artist_infos"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcn/nubia/music/app/db/ArtistDao;->columns:[Ljava/lang/String;

    .line 98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 97
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    new-instance v4, Lcn/nubia/music/online/model/ArtistModel;

    invoke-direct {v4, p0}, Lcn/nubia/music/online/model/ArtistModel;-><init>(Landroid/content/Context;)V

    .line 102
    invoke-virtual {v4, p0, v0}, Lcn/nubia/music/online/model/ArtistModel;->createFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Z

    .line 103
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_0
    return-object v4
.end method

.method public static getSongListOfArtist(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
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
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    const-string v1, "title != \'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND artist_id="

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 112
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND type=0"

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
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

    .line 71
    .line 73
    const/4 v0, 0x0

    move v1, v0

    move v2, v3

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 74
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 75
    iget-boolean v4, v0, Lcn/nubia/music/online/model/MediaModel;->hasLetterGroup:Z

    if-eqz v4, :cond_0

    iget-char v4, v0, Lcn/nubia/music/online/model/MediaModel;->nameLetter:C

    if-ne v4, v5, :cond_0

    move v2, v1

    .line 78
    :cond_0
    iget-boolean v4, v0, Lcn/nubia/music/online/model/MediaModel;->hasLetterGroup:Z

    if-eqz v4, :cond_1

    iget-char v0, v0, Lcn/nubia/music/online/model/MediaModel;->nameLetter:C

    if-eq v0, v5, :cond_1

    move v3, v1

    move v1, v2

    .line 83
    :goto_1
    if-ltz v1, :cond_3

    if-le v3, v1, :cond_3

    move v0, v1

    .line 84
    :goto_2
    if-ge v0, v3, :cond_2

    .line 85
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 73
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 87
    :cond_2
    add-int/lit8 v0, v3, -0x1

    :goto_3
    if-lt v0, v1, :cond_3

    .line 88
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 87
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 91
    :cond_3
    return-object p0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public static searchArtist(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
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
    .line 119
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(artist like \'%"

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

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nubia.music.preset/artist_infos"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcn/nubia/music/app/db/ArtistDao;->columns:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "artist_letter"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    :cond_0
    new-instance v1, Lcn/nubia/music/online/model/ArtistModel;

    invoke-direct {v1, p0}, Lcn/nubia/music/online/model/ArtistModel;-><init>(Landroid/content/Context;)V

    .line 127
    invoke-virtual {v1, p0, v0}, Lcn/nubia/music/online/model/ArtistModel;->createFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Z

    .line 128
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 133
    :cond_1
    return-object v6
.end method
