.class public final Lcn/nubia/music/app/db/MusicDBConfig$DownloadItemColumns;
.super Ljava/lang/Object;
.source "MusicDBConfig.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/app/db/MusicDBConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadItemColumns"
.end annotation


# static fields
.field public static final ADDED_TIME:Ljava/lang/String; = "added_time"

.field public static final ALBUM:Ljava/lang/String; = "album"

.field public static final ARTIST:Ljava/lang/String; = "artist"

.field public static final BITRATE:Ljava/lang/String; = "bitrate"

.field public static final CURRENT_BYTES:Ljava/lang/String; = "current_bytes"

.field public static final FILE_NAME:Ljava/lang/String; = "file_name"

.field public static final LAST_MOD:Ljava/lang/String; = "last_mod"

.field public static final LYRIC_URL:Ljava/lang/String; = "lyric_url"

.field public static final MEDIA_SCANNED:Ljava/lang/String; = "scanned"

.field public static final POSTFIX:Ljava/lang/String; = "postfix"

.field public static final SAVE_NAME:Ljava/lang/String; = "save_name"

.field public static final SAVE_PATH:Ljava/lang/String; = "save_path"

.field public static final SINGER_IMG:Ljava/lang/String; = "singer_img"

.field public static final SONG_ID:Ljava/lang/String; = "song_id"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final TOTAL_BYTES:Ljava/lang/String; = "total_bytes"

.field public static final TRACK_TITLE:Ljava/lang/String; = "track_title"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final URL_DIGEST:Ljava/lang/String; = "url_md"

.field public static final USER_ACTION:Ljava/lang/String; = "control"

.field public static final VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final VISIBILITY_HIDDEN:I = 0x2

.field public static final VISIBILITY_VISIBLE_NOTIFY_COMPLETED:I = 0x1

.field public static final _DATA:Ljava/lang/String; = "_data"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 38
    const-string v0, "content://nubiaMp3/download"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
