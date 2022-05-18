.class public Lcn/nubia/music/app/db/MusicProvider;
.super Landroid/content/ContentProvider;
.source "MusicProvider.java"


# static fields
.field private static final ALBUMINFOS:I = 0x3

.field private static final ALBUMINFO_ID:I = 0x4

.field private static final ALBUMS:I = 0xd

.field private static final ALBUM_ID:I = 0xe

.field private static final ARTISTINFOS:I = 0x5

.field private static final ARTISTINFO_ID:I = 0x6

.field private static final ARTISTS:I = 0xf

.field private static final ARTIST_ID:I = 0x10

.field private static final AUDIOINFOS:I = 0x1

.field private static final AUDIOINFO_ID:I = 0x2

.field private static final BLACKWHITELIST:I = 0x20

.field private static final BLACKWHITELIST_ID:I = 0x21

.field private static final FAVORITES:I = 0x15

.field private static final FAVORITE_ID:I = 0x16

.field private static final GLOBALSEARCH:I = 0x24

.field private static final IMAGEINFOS:I = 0x7

.field private static final IMAGEINFO_ID:I = 0x8

.field private static final IMAGES:I = 0x13

.field private static final IMAGE_ID:I = 0x14

.field private static final LYRICS:I = 0x19

.field private static final LYRIC_ID:I = 0x1a

.field private static final MUSICINFOS:I = 0xb

.field private static final MUSICINFO_ID:I = 0xc

.field private static final NETAUDIOS:I = 0x11

.field private static final NETAUDIO_ID:I = 0x12

.field private static final NOWPLAYINGS:I = 0x1d

.field private static final NOWPLAYING_ID:I = 0x1e

.field private static final PLAYHISTORY:I = 0x22

.field private static final PLAYHISTORY_ID:I = 0x23

.field private static final PLAYLISTDATAS:I = 0x1b

.field private static final PLAYLISTDATA_ID:I = 0x1c

.field private static final PLAYLISTINFOS:I = 0x9

.field private static final PLAYLISTINFO_ID:I = 0xa

.field private static final PLAYLISTS:I = 0x17

.field private static final PLAYLIST_ID:I = 0x18

.field private static final SEARCHFANCY_ID:I = 0x1f

.field private static final SUGGEST_COLUMN_ICON_1:Ljava/lang/String; = "suggest_icon_1"

.field private static final SUGGEST_COLUMN_TEXT_3:Ljava/lang/String; = "suggest_column_text_3"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static mIsBulkInsertMusic:Z


# instance fields
.field private mDataHelper:Lcn/nubia/music/app/db/DataSQLiteHelper;

.field private suggestResult:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x24

    .line 80
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/music/app/db/MusicProvider;->mIsBulkInsertMusic:Z

    .line 84
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "musicInfos"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "musicInfos/#"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "albums"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "albums/#"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "artists"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "artists/#"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "favorites"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "favorites/#"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "playlists"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "playlists/#"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "playlistDatas"

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "playlistDatas/#"

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "netAudios"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "netAudios/#"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 105
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "iamges"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "iamges/#"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "lyrics"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "lyrics/#"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "nowplayings"

    const/16 v3, 0x1d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "nowplayings/#"

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 114
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "audios"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "audios/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "album_infos"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "album_infos/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "artist_infos"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "artist_infos/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 127
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "image_infos"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 128
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "image_infos/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 130
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "playlist_infos"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "playlist_infos/#"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 133
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "audio_search/*"

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "blackwhitelists"

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 135
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "blackwhitelists/#"

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "playhistory"

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 139
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "playhistory/#"

    const/16 v3, 0x23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "search_suggest_query/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 141
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubia.music.preset"

    const-string v2, "search_suggest_query/*"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 142
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 72
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_column_text_3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/nubia/music/app/db/MusicProvider;->suggestResult:[Ljava/lang/String;

    return-void
.end method

.method private getAlbumId(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 378
    const-string v0, "album"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "<unknown>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/music/app/db/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0133

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 382
    :cond_1
    const-string v1, "album_art"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 383
    const-string v1, "album_img"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 384
    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->getPinYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 385
    const-string v1, "#"

    .line 387
    if-eqz v5, :cond_2

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 389
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcn/nubia/music/utils/MusicUtils;->getFirstLetter(C)C

    move-result v1

    .line 388
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 391
    :cond_2
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 392
    const-string v6, "album"

    invoke-virtual {v8, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v6, "album_key"

    invoke-virtual {v8, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v5, "album_letter"

    invoke-virtual {v8, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v1, "album_art"

    invoke-virtual {v8, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v1, "album_img"

    invoke-virtual {v8, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    if-eqz v0, :cond_5

    .line 398
    const-string v1, "albums"

    const-string v3, "album = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 405
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_6

    .line 406
    :cond_3
    const-string v0, "albums"

    invoke-virtual {p1, v0, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 411
    :goto_0
    if-eqz v3, :cond_4

    .line 412
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 414
    :cond_4
    :goto_1
    return-wide v0

    .line 403
    :cond_5
    const-wide/16 v0, -0x1

    goto :goto_1

    .line 408
    :cond_6
    const-string v0, "album_id"

    .line 409
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 408
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method private getArtistId(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 420
    const-string v0, "artist"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "<unknown>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 422
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/music/app/db/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0134

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 424
    :goto_0
    invoke-static {v8}, Lcn/nubia/music/utils/MusicUtils;->getPinYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 425
    const-string v0, "#"

    .line 426
    if-eqz v1, :cond_1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 428
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->getFirstLetter(C)C

    move-result v0

    .line 427
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 430
    :cond_1
    const-string v3, "artist_img"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 431
    const-string v4, "artist_netid"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 434
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 435
    const-string v5, "artist"

    invoke-virtual {v9, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v5, "artist_key"

    invoke-virtual {v9, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v1, "artist_letter"

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v0, "artist_img"

    invoke-virtual {v9, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v0, "artist_netid"

    invoke-virtual {v9, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    if-eqz v8, :cond_4

    .line 442
    const-string v1, "artists"

    const-string v3, "artist = ?"

    new-array v4, v11, [Ljava/lang/String;

    aput-object v8, v4, v10

    move-object v0, p1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 450
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_5

    .line 452
    :cond_2
    const-string v0, "artists"

    invoke-virtual {p1, v0, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 462
    :goto_1
    if-eqz v3, :cond_3

    .line 463
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 465
    :cond_3
    :goto_2
    return-wide v0

    .line 448
    :cond_4
    const-wide/16 v0, -0x1

    goto :goto_2

    .line 455
    :cond_5
    const-string v0, "artists"

    const-string v1, "artist = ?"

    new-array v2, v11, [Ljava/lang/String;

    aput-object v8, v2, v10

    invoke-virtual {p1, v0, v9, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 459
    const-string v0, "artist_id"

    .line 460
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 459
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_1

    :cond_6
    move-object v8, v0

    goto/16 :goto_0
.end method

.method private insertArtist(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 469
    .line 471
    const-string v0, "artist"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 472
    if-eqz v9, :cond_0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v8

    .line 496
    :cond_1
    :goto_0
    return v0

    .line 476
    :cond_2
    if-eqz v9, :cond_3

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 477
    const-string v1, "artists"

    const-string v3, "artist = ?"

    new-array v4, v10, [Ljava/lang/String;

    aput-object v9, v4, v8

    move-object v0, p1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 483
    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 484
    const-string v0, "artists"

    const-string v1, "artist = ?"

    new-array v3, v10, [Ljava/lang/String;

    aput-object v9, v3, v8

    invoke-virtual {p1, v0, p2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 488
    const-string v0, "artist_id"

    .line 489
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 488
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    move v0, v8

    .line 492
    :goto_1
    if-eqz v2, :cond_1

    .line 493
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    move v0, v8

    goto :goto_1
.end method

.method private isStorageAviable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 842
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 843
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 850
    :cond_0
    :goto_0
    return v0

    .line 845
    :cond_1
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getSecondaryStorageMgr()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 846
    invoke-static {}, Lcn/nubia/music/app/StorageMgr;->getSecondaryStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 850
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/4 v0, 0x0

    .line 1200
    .line 1203
    :try_start_0
    iget-object v1, p0, Lcn/nubia/music/app/db/MusicProvider;->mDataHelper:Lcn/nubia/music/app/db/DataSQLiteHelper;

    invoke-virtual {v1}, Lcn/nubia/music/app/db/DataSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1204
    if-eqz v2, :cond_0

    if-nez p2, :cond_1

    .line 1236
    :cond_0
    :goto_0
    return v0

    .line 1207
    :cond_1
    sget-object v1, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 1208
    const/4 v1, 0x1

    sput-boolean v1, Lcn/nubia/music/app/db/MusicProvider;->mIsBulkInsertMusic:Z

    .line 1211
    :cond_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move v1, v0

    .line 1212
    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_4

    .line 1213
    aget-object v3, p2, v1

    invoke-virtual {p0, p1, v3}, Lcn/nubia/music/app/db/MusicProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1214
    add-int/lit8 v0, v0, 0x1

    .line 1212
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1217
    :cond_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1222
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1224
    sget-object v1, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 1225
    const/4 v1, 0x0

    sput-boolean v1, Lcn/nubia/music/app/db/MusicProvider;->mIsBulkInsertMusic:Z

    .line 1226
    invoke-virtual {p0}, Lcn/nubia/music/app/db/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://nubia.music.preset/audios"

    .line 1227
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1233
    :catch_0
    move-exception v1

    .line 1234
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0

    .line 1228
    :cond_5
    :try_start_1
    sget-object v1, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_0

    .line 1230
    invoke-virtual {p0}, Lcn/nubia/music/app/db/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://nubia.music.preset/playlist_infos"

    .line 1231
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    .prologue
    .line 146
    const/4 v1, -0x1

    .line 151
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/app/db/MusicProvider;->mDataHelper:Lcn/nubia/music/app/db/DataSQLiteHelper;

    invoke-virtual {v0}, Lcn/nubia/music/app/db/DataSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 152
    if-nez v2, :cond_1

    .line 153
    const/4 v0, 0x0

    .line 298
    :cond_0
    :goto_0
    return v0

    .line 155
    :cond_1
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 286
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not delete for this uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :catch_0
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    .line 296
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 157
    :pswitch_1
    :try_start_1
    const-string v0, "musicInfos"

    invoke-virtual {v2, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 158
    invoke-virtual {p0}, Lcn/nubia/music/app/db/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://nubia.music.preset/audios"

    .line 159
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    .line 158
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 160
    invoke-virtual {p0}, Lcn/nubia/music/app/db/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://nubia.music.preset/playlistDatas"

    .line 161
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    .line 160
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 162
    invoke-virtual {p0}, Lcn/nubia/music/app/db/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://nubia.music.preset/favorites"

    .line 163
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    .line 162
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 164
    invoke-virtual {p0}, Lcn/nubia/music/app/db/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://nubia.music.preset/playlist_infos"

    .line 165
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    .line 164
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 288
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lcn/nubia/music/app/db/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 289
    sget-object v1, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x17

    if-eq v1, v2, :cond_2

    sget-object v1, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x18

    if-eq v1, v2, :cond_2

    sget-object v1, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 290
    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_2

    sget-object v1, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 291
    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x1c

    if-ne v1, v2, :cond_0

    .line 292
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/music/app/db/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://nubia.music.preset/playlist_infos"

    .line 293
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 295
    :catch_1
    move-exception v1

    goto/16 :goto_1

    .line 168
    :pswitch_2
    :try_start_3
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "music_id  = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    if-eqz p2, :cond_3

    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    :cond_3
    const-string v3, "musicInfos"

    invoke-virtual {v2, v3, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 174
    invoke-virtual {p0}, Lcn/nubia/music/app/db/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://nubia.music.preset/audios"

    .line 175
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    .line 174
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 176
    invoke-virtual {p0}, Lcn/nubia/music/app/db/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://nubia.music.preset/playlistDatas"

    .line 177
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    .line 176
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 178
    invoke-virtual {p0}, Lcn/nubia/music/app/db/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://nubia.music.preset/favorites"

    .line 179
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    .line 178
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 180
    invoke-virtual {p0}, Lcn/nubia/music/app/db/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://nubia.music.preset/playlist_infos"

    .line 181
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    .line 180
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move v0, v1

    .line 182
    goto/16 :goto_2

    .line 184
    :pswitch_3
    const-string v0, "albums"

    invoke-virtual {v2, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 185
    goto/16 :goto_2

    .line 187
    :pswitch_4
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "album_id  = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    if-eqz p2, :cond_4

    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    :cond_4
    const-string v3, "albums"

    invoke-virtual {v2, v3, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 193
    goto/16 :goto_2

    .line 195
    :pswitch_5
    const-string v0, "artists"

    invoke-virtual {v2, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 196
    goto/16 :goto_2

    .line 198
    :pswitch_6
    const-string v0, "playhistory"

    invoke-virtual {v2, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 199
    goto/16 :goto_2

    .line 201
    :pswitch_7
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "artist_id  = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    if-eqz p2, :cond_5

    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    :cond_5
    const-string v3, "artists"

    invoke-virtual {v2, v3, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 207
    goto/16 :goto_2

    .line 220
    :pswitch_8
    const-string v0, "favorites"

    invoke-virtual {v2, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 221
    goto/16 :goto_2

    .line 223
    :pswitch_9
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id  = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    if-eqz p2, :cond_6

    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    :cond_6
    const-string v3, "favorites"

    invoke-virtual {v2, v3, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 229
    goto/16 :goto_2

    .line 231
    :pswitch_a
    const-string v0, "playlists"

    invoke-virtual {v2, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 232
    goto/16 :goto_2

    .line 234
    :pswitch_b
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playlist_id  = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    if-eqz p2, :cond_7

    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    :cond_7
    const-string v3, "playlists"

    invoke-virtual {v2, v3, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 240
    goto/16 :goto_2

    .line 242
    :pswitch_c
    const-string v0, "playlistdatas"

    invoke-virtual {v2, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 243
    goto/16 :goto_2

    .line 245
    :pswitch_d
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playlist_id  = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    if-eqz p2, :cond_8

    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    :cond_8
    const-string v3, "playlistdatas"

    invoke-virtual {v2, v3, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 251
    goto/16 :goto_2

    .line 253
    :pswitch_e
    const-string v0, "nowplayings"

    invoke-virtual {v2, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 254
    goto/16 :goto_2

    .line 256
    :pswitch_f
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id  = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    if-eqz p2, :cond_9

    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    :cond_9
    const-string v3, "nowplayings"

    invoke-virtual {v2, v3, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 262
    goto/16 :goto_2

    .line 264
    :pswitch_10
    const-string v0, "lyrics"

    invoke-virtual {v2, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 265
    goto/16 :goto_2

    .line 267
    :pswitch_11
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lyric_id  = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    if-eqz p2, :cond_a

    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    :cond_a
    const-string v3, "lyrics"

    invoke-virtual {v2, v3, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 273
    goto/16 :goto_2

    .line 275
    :pswitch_12
    const-string v0, "images"

    invoke-virtual {v2, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 276
    goto/16 :goto_2

    .line 278
    :pswitch_13
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id  = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    if-eqz p2, :cond_b

    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    :cond_b
    const-string v3, "images"

    invoke-virtual {v2, v3, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v1

    move v0, v1

    .line 284
    goto/16 :goto_2

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_10
        :pswitch_11
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    sget-object v0, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 372
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 305
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/musicInfos"

    goto :goto_0

    .line 307
    :pswitch_1
    const-string v0, "vnd.android.cursor.item/musicInfos"

    goto :goto_0

    .line 309
    :pswitch_2
    const-string v0, "vnd.android.cursor.dir/albums"

    goto :goto_0

    .line 311
    :pswitch_3
    const-string v0, "vnd.android.cursor.item/albums"

    goto :goto_0

    .line 313
    :pswitch_4
    const-string v0, "vnd.android.cursor.dir/artists"

    goto :goto_0

    .line 315
    :pswitch_5
    const-string v0, "vnd.android.cursor.item/artists"

    goto :goto_0

    .line 317
    :pswitch_6
    const-string v0, "vnd.android.cursor.dir/favorites"

    goto :goto_0

    .line 319
    :pswitch_7
    const-string v0, "vnd.android.cursor.item/favorites"

    goto :goto_0

    .line 321
    :pswitch_8
    const-string v0, "vnd.android.cursor.dir/playlists"

    goto :goto_0

    .line 323
    :pswitch_9
    const-string v0, "vnd.android.cursor.item/playlists"

    goto :goto_0

    .line 325
    :pswitch_a
    const-string v0, "vnd.android.cursor.dir/playlistDatas"

    goto :goto_0

    .line 327
    :pswitch_b
    const-string v0, "vnd.android.cursor.item/playlistDatas"

    goto :goto_0

    .line 329
    :pswitch_c
    const-string v0, "vnd.android.cursor.dir/nowplayings"

    goto :goto_0

    .line 331
    :pswitch_d
    const-string v0, "vnd.android.cursor.item/nowplayings"

    goto :goto_0

    .line 333
    :pswitch_e
    const-string v0, "vnd.android.cursor.dir/netAudios"

    goto :goto_0

    .line 335
    :pswitch_f
    const-string v0, "vnd.android.cursor.item/netAudios"

    goto :goto_0

    .line 337
    :pswitch_10
    const-string v0, "vnd.android.cursor.dir/lyrics"

    goto :goto_0

    .line 339
    :pswitch_11
    const-string v0, "vnd.android.cursor.item/lyrics"

    goto :goto_0

    .line 341
    :pswitch_12
    const-string v0, "vnd.android.cursor.dir/iamges"

    goto :goto_0

    .line 343
    :pswitch_13
    const-string v0, "vnd.android.cursor.item/iamges"

    goto :goto_0

    .line 346
    :pswitch_14
    const-string v0, "vnd.android.cursor.dir/audios"

    goto :goto_0

    .line 348
    :pswitch_15
    const-string v0, "vnd.android.cursor.item/audios"

    goto :goto_0

    .line 350
    :pswitch_16
    const-string v0, "vnd.android.cursor.dir/album_infos"

    goto :goto_0

    .line 352
    :pswitch_17
    const-string v0, "vnd.android.cursor.item/album_infos"

    goto :goto_0

    .line 354
    :pswitch_18
    const-string v0, "vnd.android.cursor.dir/artist_infos"

    goto :goto_0

    .line 356
    :pswitch_19
    const-string v0, "vnd.android.cursor.item/artist_infos"

    goto :goto_0

    .line 362
    :pswitch_1a
    const-string v0, "vnd.android.cursor.dir/image_infos"

    goto :goto_0

    .line 364
    :pswitch_1b
    const-string v0, "vnd.android.cursor.item/image_infos"

    goto :goto_0

    .line 366
    :pswitch_1c
    const-string v0, "vnd.android.cursor.item/audio_search"

    goto :goto_0

    .line 368
    :pswitch_1d
    const-string v0, "vnd.android.cursor.dir/playlist_infos"

    goto :goto_0

    .line 370
    :pswitch_1e
    const-string v0, "vnd.android.cursor.item/playlist_infos"

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1d
        :pswitch_1e
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_e
        :pswitch_f
        :pswitch_12
        :pswitch_13
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_10
        :pswitch_11
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_1c
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 12

    .prologue
    .line 501
    .line 505
    const-wide/16 v6, -0x1

    .line 506
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/app/db/MusicProvider;->mDataHelper:Lcn/nubia/music/app/db/DataSQLiteHelper;

    invoke-virtual {v0}, Lcn/nubia/music/app/db/DataSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 507
    if-eqz v0, :cond_0

    if-nez p2, :cond_2

    .line 508
    :cond_0
    const/4 v0, 0x0

    .line 832
    :cond_1
    :goto_0
    return-object v0

    .line 513
    :cond_2
    const/4 v3, 0x0

    .line 517
    sget-object v1, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 797
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not insert for this uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    :catch_0
    move-exception v0

    .line 830
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 832
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 519
    :pswitch_1
    :try_start_1
    const-string v1, "type"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 521
    const-string v1, "title"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 522
    invoke-static {v1}, Lcn/nubia/music/utils/MusicUtils;->getPinYin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 523
    const-string v1, "#"

    .line 524
    if-eqz v2, :cond_4

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 525
    const/4 v1, 0x0

    .line 526
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcn/nubia/music/utils/MusicUtils;->getFirstLetter(C)C

    move-result v1

    .line 525
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 529
    :cond_4
    const-string v3, "title_key"

    invoke-virtual {p2, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v2, "title_letter"

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    if-nez v9, :cond_7

    .line 532
    const-string v4, "musicInfos"

    .line 533
    const-string v3, "data"

    .line 534
    const-string v2, "_id"

    .line 535
    const-string v1, "data"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    move-object v8, v2

    move-object v1, v4

    .line 544
    :goto_1
    if-eqz v5, :cond_9

    .line 545
    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 551
    if-eqz v4, :cond_5

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_d

    .line 552
    :cond_5
    if-eqz v4, :cond_6

    .line 553
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 555
    :cond_6
    invoke-direct {p0, v0, p2}, Lcn/nubia/music/app/db/MusicProvider;->getAlbumId(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 556
    const-wide/16 v6, -0x1

    cmp-long v5, v2, v6

    if-nez v5, :cond_a

    .line 557
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 536
    :cond_7
    const/4 v1, 0x1

    if-ne v9, v1, :cond_8

    .line 537
    const-string v4, "musicInfos"

    .line 538
    const-string v3, "song_id"

    .line 539
    const-string v2, "_id"

    .line 540
    const-string v1, "song_id"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    move-object v8, v2

    move-object v1, v4

    goto :goto_1

    .line 542
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 549
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 559
    :cond_a
    invoke-direct {p0, v0, p2}, Lcn/nubia/music/app/db/MusicProvider;->getArtistId(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 560
    const-wide/16 v8, -0x1

    cmp-long v5, v8, v6

    if-nez v5, :cond_b

    .line 561
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 564
    :cond_b
    const-string v5, "album"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 565
    const-string v5, "album_art"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 566
    const-string v5, "album_img"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 567
    const-string v5, "artist_img"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 568
    const-string v5, "artist"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 571
    const-string v5, "artist_netid"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 574
    const-string v5, "album_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 575
    const-string v2, "artist_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 577
    const-string v2, "insert_tag"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 578
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 594
    :goto_2
    if-eqz v4, :cond_c

    .line 595
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 597
    :cond_c
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_f

    .line 598
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 599
    invoke-virtual {p0}, Lcn/nubia/music/app/db/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 600
    sget-object v1, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    sget-boolean v1, Lcn/nubia/music/app/db/MusicProvider;->mIsBulkInsertMusic:Z

    if-nez v1, :cond_1

    .line 601
    invoke-virtual {p0}, Lcn/nubia/music/app/db/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://nubia.music.preset/audios"

    .line 602
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 580
    :cond_d
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    .line 581
    if-nez v9, :cond_e

    .line 582
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 584
    const-string v6, "album"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 585
    const-string v6, "album_art"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 586
    const-string v6, "album_img"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 587
    const-string v6, "artist_img"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 588
    const-string v6, "artist"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 590
    const-string v6, "insert_tag"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 591
    const/4 v6, 0x0

    invoke-virtual {v0, v1, p2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_e
    move-wide v0, v2

    goto/16 :goto_2

    .line 606
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 610
    :pswitch_2
    const/4 v8, 0x0

    .line 611
    const-string v1, "folder_name"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folder_name = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 616
    const-string v1, "folder_path"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 619
    const-string v1, "folder_is_selected"

    .line 620
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 624
    const-string v1, "whitelists"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "folder_path"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "folder_is_selected"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 628
    if-eqz v4, :cond_10

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_12

    .line 629
    :cond_10
    const-string v1, "insert BLACKWHITELIST,actual insert"

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 630
    const-string v1, "whitelists"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 669
    :goto_3
    if-eqz v4, :cond_11

    .line 670
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 674
    :cond_11
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_26

    .line 675
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 639
    :cond_12
    const/4 v1, 0x1

    .line 641
    :cond_13
    const-string v2, "_id"

    .line 642
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 641
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    .line 643
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 644
    const-string v6, "folder_path"

    .line 645
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 644
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 648
    const-string v7, "folder_is_selected"

    .line 649
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 648
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 651
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_14

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    .line 652
    :cond_14
    const-string v1, "insert BLACKWHITELIST,actual update -->update"

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 653
    const-string v1, "whitelists"

    const/4 v6, 0x0

    invoke-virtual {v0, v1, p2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 655
    const/4 v1, 0x0

    .line 663
    :goto_4
    if-eqz v1, :cond_27

    .line 664
    const-string v1, "insert BLACKWHITELIST,actual update -->insert"

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 665
    const-string v1, "whitelists"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_3

    .line 657
    :cond_15
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 658
    const/4 v1, 0x0

    .line 659
    goto :goto_4

    .line 661
    :cond_16
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_13

    goto :goto_4

    .line 680
    :pswitch_3
    const-string v4, "albums"

    .line 681
    const-string v3, "album"

    .line 682
    const-string v2, "album_id"

    .line 683
    const-string v1, "album"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    move-object v8, v2

    move-object v1, v4

    .line 800
    :goto_5
    if-eqz v5, :cond_23

    .line 801
    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 808
    if-eqz v2, :cond_17

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_24

    .line 809
    :cond_17
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 813
    :goto_6
    if-eqz v2, :cond_18

    .line 814
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 816
    :cond_18
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    .line 817
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 818
    invoke-virtual {p0}, Lcn/nubia/music/app/db/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 819
    sget-object v1, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_19

    .line 820
    invoke-virtual {p0}, Lcn/nubia/music/app/db/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://nubia.music.preset/audios"

    .line 821
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 823
    :cond_19
    sget-object v1, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x17

    if-eq v1, v2, :cond_1a

    sget-object v1, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_1

    .line 824
    :cond_1a
    invoke-virtual {p0}, Lcn/nubia/music/app/db/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://nubia.music.preset/playlist_infos"

    .line 825
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 686
    :pswitch_4
    const-string v4, "artists"

    .line 687
    const-string v3, "artist"

    .line 688
    const-string v2, "artist_id"

    .line 689
    const-string v1, "artist"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 690
    invoke-direct {p0, v0, p2}, Lcn/nubia/music/app/db/MusicProvider;->insertArtist(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result v5

    .line 691
    if-lez v5, :cond_25

    .line 692
    invoke-static {p1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 699
    :pswitch_5
    const-string v4, "favorites"

    .line 700
    const-string v2, "_id"

    .line 701
    const-string v1, "audio_id"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 702
    const-string v3, "audio_id"

    move-object v5, v1

    move-object v8, v2

    move-object v1, v4

    .line 703
    goto/16 :goto_5

    .line 705
    :pswitch_6
    const-string v4, "playlists"

    .line 706
    const-string v3, "playlist_name"

    .line 707
    const-string v2, "playlist_id"

    .line 708
    const-string v1, "playlist_name"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    move-object v8, v2

    move-object v1, v4

    .line 709
    goto/16 :goto_5

    .line 711
    :pswitch_7
    const-string v1, "playlistdatas"

    .line 712
    const-string v2, "playlist_id"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 713
    const-string v3, "audio_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 715
    if-gez v2, :cond_1b

    .line 716
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 718
    :cond_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 719
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playlist_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 720
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND audio_id = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    const/4 v2, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 725
    if-eqz v2, :cond_1c

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 726
    :cond_1c
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 731
    :goto_7
    if-eqz v2, :cond_1d

    .line 732
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 734
    :cond_1d
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1f

    .line 735
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 728
    :cond_1e
    const-string v0, "_id"

    .line 729
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 728
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_7

    .line 738
    :cond_1f
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 740
    :pswitch_8
    const-string v4, "nowplayings"

    .line 741
    const-string v2, "_id"

    .line 742
    const-string v1, "audio_id"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    move-object v8, v2

    move-object v1, v4

    .line 744
    goto/16 :goto_5

    .line 746
    :pswitch_9
    const-string v4, "playhistory"

    .line 747
    const-string v2, "_id"

    .line 748
    const-string v1, "history_audio_id"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    move-object v8, v2

    move-object v1, v4

    .line 749
    goto/16 :goto_5

    .line 757
    :pswitch_a
    const-string v4, "lyrics"

    .line 758
    const-string v3, "lyric_name"

    .line 759
    const-string v2, "lyric_id"

    .line 760
    const-string v1, "lyric_name"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    move-object v8, v2

    move-object v1, v4

    .line 761
    goto/16 :goto_5

    .line 763
    :pswitch_b
    const-string v4, "images"

    .line 764
    const-string v1, "album"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 765
    const-string v2, "artist"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 766
    const-string v3, "image_url"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 767
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 769
    const-string v3, "album"

    .line 779
    :goto_8
    const-string v2, "_id"

    .line 780
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    move-object v8, v2

    move-object v1, v4

    .line 784
    goto/16 :goto_5

    .line 770
    :cond_20
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 772
    const-string v3, "artist"

    goto :goto_8

    .line 773
    :cond_21
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 775
    const-string v3, "image_url"

    goto :goto_8

    .line 777
    :cond_22
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 806
    :cond_23
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 811
    :cond_24
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    int-to-long v0, v0

    goto/16 :goto_6

    :cond_25
    move-object v5, v1

    move-object v8, v2

    move-object v1, v4

    goto/16 :goto_5

    :cond_26
    move-object v0, v8

    goto/16 :goto_0

    :cond_27
    move-wide v0, v2

    goto/16 :goto_3

    .line 517
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_9
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 837
    invoke-virtual {p0}, Lcn/nubia/music/app/db/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/app/db/DataSQLiteHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/music/app/db/DataSQLiteHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/app/db/MusicProvider;->mDataHelper:Lcn/nubia/music/app/db/DataSQLiteHelper;

    .line 838
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15

    .prologue
    .line 857
    invoke-direct {p0}, Lcn/nubia/music/app/db/MusicProvider;->isStorageAviable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 858
    const/4 v2, 0x0

    .line 1133
    :cond_0
    :goto_0
    return-object v2

    .line 860
    :cond_1
    const/4 v10, 0x0

    .line 865
    :try_start_0
    iget-object v2, p0, Lcn/nubia/music/app/db/MusicProvider;->mDataHelper:Lcn/nubia/music/app/db/DataSQLiteHelper;

    invoke-virtual {v2}, Lcn/nubia/music/app/db/DataSQLiteHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 867
    if-nez v2, :cond_2

    .line 868
    const/4 v2, 0x0

    goto :goto_0

    .line 870
    :cond_2
    sget-object v3, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1123
    :pswitch_0
    const/4 v10, 0x0

    move-object v2, v10

    .line 1127
    :goto_1
    if-eqz v2, :cond_0

    .line 1128
    :try_start_1
    invoke-virtual {p0}, Lcn/nubia/music/app/db/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v2, v3, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1130
    :catch_0
    move-exception v3

    .line 1131
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 872
    :pswitch_1
    :try_start_2
    const-string v3, "audios"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v2, v10

    .line 874
    goto :goto_1

    .line 876
    :pswitch_2
    const-string v3, "playhistory"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v2, v10

    .line 878
    goto :goto_1

    .line 880
    :pswitch_3
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 881
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 882
    if-eqz p3, :cond_3

    const-string v3, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 883
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 885
    :cond_3
    const-string v3, "audios"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v2, v10

    .line 887
    goto/16 :goto_1

    .line 889
    :pswitch_4
    const-string v3, "album_infos"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v2, v10

    .line 891
    goto/16 :goto_1

    .line 893
    :pswitch_5
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 894
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "album_id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 895
    if-eqz p3, :cond_4

    const-string v3, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 896
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 898
    :cond_4
    const-string v3, "album_infos"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v2, v10

    .line 900
    goto/16 :goto_1

    .line 902
    :pswitch_6
    const-string v3, "artist_infos"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v2, v10

    .line 904
    goto/16 :goto_1

    .line 906
    :pswitch_7
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 907
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "artist_id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 908
    if-eqz p3, :cond_5

    const-string v3, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 909
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 911
    :cond_5
    const-string v3, "artist_infos"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v2, v10

    .line 913
    goto/16 :goto_1

    .line 916
    :pswitch_8
    const-string v3, "image_infos"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v2, v10

    .line 918
    goto/16 :goto_1

    .line 920
    :pswitch_9
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 921
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 922
    if-eqz p3, :cond_6

    const-string v3, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 923
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 925
    :cond_6
    const-string v3, "image_infos"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v2, v10

    .line 927
    goto/16 :goto_1

    .line 929
    :pswitch_a
    const-string v3, "playlist_infos"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v2, v10

    .line 931
    goto/16 :goto_1

    .line 933
    :pswitch_b
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 934
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playlist_id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 935
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 936
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 938
    :cond_7
    const-string v3, "playlist_infos"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v2, v10

    .line 940
    goto/16 :goto_1

    .line 943
    :pswitch_c
    const-string v3, "playlists"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v2, v10

    .line 945
    goto/16 :goto_1

    .line 947
    :pswitch_d
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 948
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playlist_id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 949
    if-eqz p3, :cond_8

    const-string v3, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 950
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 952
    :cond_8
    const-string v3, "playlists"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v2, v10

    .line 954
    goto/16 :goto_1

    .line 956
    :pswitch_e
    const-string v3, "QueryFavoriteDetail"

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 957
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 958
    const-string v4, "SELECT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "favorites"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    .line 959
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS favorite_table_id,"

    .line 960
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "favorites"

    .line 961
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    .line 962
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "audio_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    .line 963
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "audios"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".* FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "favorites"

    .line 964
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INNER JOIN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "audios"

    .line 965
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ON "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "favorites"

    .line 966
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "audio_id"

    .line 967
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "audios"

    .line 968
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    .line 969
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    .line 970
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "audios"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "title != \'\'"

    .line 971
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ORDER BY favorite_table_id DESC"

    .line 972
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    const-string v4, "zpy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FAVORITES sql:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v2, v10

    .line 975
    goto/16 :goto_1

    .line 976
    :cond_9
    const-string v3, "favorites"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v2, v10

    .line 979
    goto/16 :goto_1

    .line 981
    :pswitch_f
    const-string v3, "playlistdatas"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v2, v10

    .line 983
    goto/16 :goto_1

    .line 985
    :pswitch_10
    const-string v3, "nowplayings"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v2, v10

    .line 987
    goto/16 :goto_1

    .line 989
    :pswitch_11
    const-string v3, "lyrics"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v2, v10

    .line 991
    goto/16 :goto_1

    .line 993
    :pswitch_12
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 994
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lyric_id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 995
    if-eqz p3, :cond_a

    const-string v3, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 996
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 998
    :cond_a
    const-string v3, "lyrics"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v2, v10

    .line 1000
    goto/16 :goto_1

    .line 1002
    :pswitch_13
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 1003
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1004
    if-eqz p3, :cond_b

    const-string v3, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1005
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1007
    :cond_b
    const-string v3, "favorites"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v2, v10

    .line 1009
    goto/16 :goto_1

    .line 1011
    :pswitch_14
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 1012
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playlist_id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1013
    if-eqz p3, :cond_c

    const-string v3, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1014
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1016
    :cond_c
    const-string v3, "playlistdatas"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v2, v10

    .line 1018
    goto/16 :goto_1

    .line 1020
    :pswitch_15
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 1021
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1022
    if-eqz p3, :cond_d

    const-string v3, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1023
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1025
    :cond_d
    const-string v3, "nowplayings"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v2, v10

    .line 1027
    goto/16 :goto_1

    .line 1029
    :pswitch_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1031
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 1032
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1033
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "title LIKE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " OR title_key LIKE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " OR album LIKE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " OR album_key LIKE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " OR artist LIKE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " OR artist_key LIKE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    const-string v3, " AND type = 0"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    const-string v3, "audios"

    .line 1047
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v9, p5

    .line 1046
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v2, v10

    .line 1048
    goto/16 :goto_1

    .line 1052
    :pswitch_17
    const-string v3, "whitelists"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v2, v10

    .line 1054
    goto/16 :goto_1

    .line 1056
    :pswitch_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1057
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query enter GLOBALSEARCH searchContent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1059
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 1060
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1061
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(title LIKE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " OR title_key LIKE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " OR album LIKE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " OR album_key LIKE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " OR artist LIKE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " OR artist_key LIKE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    const-string v3, " AND type = 0"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fancysearch:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1075
    const-string v3, "audios"

    .line 1076
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v9, p5

    .line 1075
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .line 1077
    :try_start_3
    new-instance v10, Landroid/database/MatrixCursor;

    iget-object v2, p0, Lcn/nubia/music/app/db/MusicProvider;->suggestResult:[Ljava/lang/String;

    invoke-direct {v10, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1078
    :cond_e
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1079
    const-string v2, "title"

    .line 1080
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1079
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1081
    const-string v2, "album"

    .line 1082
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1081
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1083
    const-string v2, "artist"

    .line 1084
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1083
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1085
    const-string v2, "album_art"

    .line 1086
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1085
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1087
    const-string v2, "avg_80_80"

    .line 1088
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1087
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1089
    const-string v2, "image_url_80_80"

    .line 1090
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1089
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1091
    const-string v9, "data"

    .line 1092
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1091
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1093
    const-string v11, "_id"

    .line 1094
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1093
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1096
    if-nez v8, :cond_10

    .line 1097
    if-nez v4, :cond_f

    .line 1105
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "query enter GLOBALSEARCH :image"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1106
    if-eqz v11, :cond_e

    if-eqz v9, :cond_e

    .line 1109
    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v8, v12

    const/4 v2, 0x1

    aput-object v5, v8, v2

    const/4 v2, 0x2

    aput-object v6, v8, v2

    const/4 v2, 0x3

    aput-object v7, v8, v2

    const/4 v2, 0x4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "GlobalResearch@"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "@"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v2, 0x5

    aput-object v11, v8, v2

    invoke-virtual {v10, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "query enter GLOBALSEARCH :title"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " album:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " artist:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " image1:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " id:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1130
    :catch_1
    move-exception v2

    move-object v14, v2

    move-object v2, v3

    move-object v3, v14

    goto/16 :goto_2

    :cond_f
    move-object v2, v4

    .line 1100
    goto/16 :goto_4

    .line 1103
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file://"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    goto/16 :goto_4

    :cond_11
    move-object v2, v10

    .line 1120
    goto/16 :goto_1

    .line 1130
    :catch_2
    move-exception v2

    move-object v3, v2

    move-object v2, v10

    goto/16 :goto_2

    :cond_12
    move-object v2, v10

    goto/16 :goto_1

    .line 870
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_13
        :pswitch_c
        :pswitch_d
        :pswitch_11
        :pswitch_12
        :pswitch_f
        :pswitch_14
        :pswitch_10
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_17
        :pswitch_2
        :pswitch_0
        :pswitch_18
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1138
    .line 1143
    :try_start_0
    iget-object v1, p0, Lcn/nubia/music/app/db/MusicProvider;->mDataHelper:Lcn/nubia/music/app/db/DataSQLiteHelper;

    invoke-virtual {v1}, Lcn/nubia/music/app/db/DataSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1145
    if-nez v2, :cond_1

    .line 1195
    :cond_0
    :goto_0
    return v0

    .line 1148
    :cond_1
    sget-object v1, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1185
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not update for this uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    :catch_0
    move-exception v1

    .line 1193
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1150
    :sswitch_0
    :try_start_1
    const-string v1, "playlists"

    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1187
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/music/app/db/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1188
    sget-object v1, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x17

    if-eq v1, v2, :cond_2

    sget-object v1, Lcn/nubia/music/app/db/MusicProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_0

    .line 1189
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/music/app/db/MusicProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://nubia.music.preset/playlist_infos"

    .line 1190
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 1154
    :sswitch_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 1155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playlist_id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1156
    if-eqz p3, :cond_3

    const-string v3, ""

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1159
    :cond_3
    const-string v3, "playlists"

    invoke-virtual {v2, v3, p2, v1, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 1163
    :sswitch_2
    const-string v1, "musicInfos"

    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 1167
    :sswitch_3
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 1168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1169
    if-eqz p3, :cond_4

    const-string v3, ""

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1172
    :cond_4
    const-string v3, "playlists"

    invoke-virtual {v2, v3, p2, v1, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    .line 1177
    :sswitch_4
    const-string v1, "whitelists"

    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    .line 1181
    :sswitch_5
    const-string v1, "playhistory"

    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto/16 :goto_1

    .line 1148
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_2
        0xc -> :sswitch_3
        0x17 -> :sswitch_0
        0x18 -> :sswitch_1
        0x20 -> :sswitch_4
        0x21 -> :sswitch_4
        0x22 -> :sswitch_5
    .end sparse-switch
.end method
