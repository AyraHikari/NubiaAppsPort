.class public Lcn/nubia/video/editor/SaveVideoFileUtils;
.super Ljava/lang/Object;
.source "SaveVideoFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/editor/SaveVideoFileUtils$ContentResolverQueryCallback;
    }
.end annotation


# static fields
.field private static final OUTPUT_PATH:Ljava/lang/String; = "DCIM/Camera/Video"

.field private static final WALLPAPER_OUTPUT_PATH:Ljava/lang/String; = "Pictures/Histories"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDstMp4FileInfo(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;Z)Lcn/nubia/video/editor/SaveVideoFileInfo;
    .locals 3

    .line 53
    new-instance v0, Lcn/nubia/video/editor/SaveVideoFileInfo;

    invoke-direct {v0}, Lcn/nubia/video/editor/SaveVideoFileInfo;-><init>()V

    .line 56
    invoke-static {p1, p2}, Lcn/nubia/video/editor/SaveVideoFileUtils;->getSaveDirectory(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    .line 57
    iget-object p1, v0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    if-eqz p1, :cond_1

    iget-object p1, v0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, v0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mFolderName:Ljava/lang/String;

    goto :goto_3

    .line 58
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "file:///storage"

    .line 59
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "DCIM/Camera/Video"

    if-eqz v1, :cond_3

    const-string v1, "/storage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 68
    :cond_2
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p2

    invoke-direct {p1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, v0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    .line 61
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p2

    invoke-direct {p1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, v0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    goto :goto_2

    .line 64
    :cond_4
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string p3, "/"

    invoke-virtual {p1, p3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    .line 65
    new-instance p3, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p3, v0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    .line 71
    :goto_2
    iget-object p1, v0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, v0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 72
    :cond_5
    iget-object p1, v0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mFolderName:Ljava/lang/String;

    .line 76
    :goto_3
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-direct {p1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/sql/Date;

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-direct {p0, p2, p3}, Ljava/sql/Date;-><init>(J)V

    .line 76
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mFileName:Ljava/lang/String;

    .line 79
    new-instance p0, Ljava/io/File;

    iget-object p1, v0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, v0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ".mp4"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p0, v0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mFile:Ljava/io/File;

    return-object v0
.end method

.method private static getSaveDirectory(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const-string v1, "_data"

    .line 115
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/nubia/video/editor/SaveVideoFileUtils$1;

    invoke-direct {v2, v0}, Lcn/nubia/video/editor/SaveVideoFileUtils$1;-><init>([Ljava/io/File;)V

    invoke-static {p0, p1, v1, v2}, Lcn/nubia/video/editor/SaveVideoFileUtils;->querySource(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Lcn/nubia/video/editor/SaveVideoFileUtils$ContentResolverQueryCallback;)V

    const/4 p0, 0x0

    .line 123
    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getSaveMp4FileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/video/editor/SaveVideoFileInfo;
    .locals 3

    .line 215
    new-instance p2, Lcn/nubia/video/editor/SaveVideoFileInfo;

    invoke-direct {p2}, Lcn/nubia/video/editor/SaveVideoFileInfo;-><init>()V

    if-eqz p1, :cond_0

    .line 217
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p2, Lcn/nubia/video/editor/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    goto :goto_0

    .line 219
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "DCIM/Camera/Video"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p2, Lcn/nubia/video/editor/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    .line 223
    :goto_0
    iget-object p1, p2, Lcn/nubia/video/editor/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 224
    iget-object p1, p2, Lcn/nubia/video/editor/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcn/nubia/video/editor/SaveVideoFileInfo;->mFolderName:Ljava/lang/String;

    .line 225
    iget-object p1, p2, Lcn/nubia/video/editor/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 227
    :cond_1
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-direct {p1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/sql/Date;

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/sql/Date;-><init>(J)V

    .line 227
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcn/nubia/video/editor/SaveVideoFileInfo;->mFileName:Ljava/lang/String;

    .line 229
    new-instance p0, Ljava/io/File;

    iget-object p1, p2, Lcn/nubia/video/editor/SaveVideoFileInfo;->mDirectory:Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcn/nubia/video/editor/SaveVideoFileInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p0, p2, Lcn/nubia/video/editor/SaveVideoFileInfo;->mFile:Ljava/io/File;

    return-object p2
.end method

.method public static insertContent(Lcn/nubia/video/editor/SaveVideoFileInfo;Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 7

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 133
    div-long v2, v0, v2

    .line 134
    new-instance v4, Landroid/content/ContentValues;

    const/16 v5, 0xd

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 135
    iget-object v5, p0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mFileName:Ljava/lang/String;

    const-string v6, "title"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v5, p0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_display_name"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mime_type"

    const-string v6, "video/mp4"

    .line 137
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "datetaken"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 139
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v5, "date_modified"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 140
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "date_added"

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 141
    iget-object v0, p0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "_data"

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "_size"

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 143
    iget-object p0, p0, Lcn/nubia/video/editor/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/video/editor/SaveVideoFileUtils;->retriveVideoDurationMs(Ljava/lang/String;)I

    move-result p0

    .line 144
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "duration"

    invoke-virtual {v4, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "latitude"

    const-string v0, "longitude"

    const-string v2, "resolution"

    .line 146
    filled-new-array {v1, p0, v0, v2}, [Ljava/lang/String;

    move-result-object p0

    .line 154
    new-instance v0, Lcn/nubia/video/editor/SaveVideoFileUtils$2;

    invoke-direct {v0, v4}, Lcn/nubia/video/editor/SaveVideoFileUtils$2;-><init>(Landroid/content/ContentValues;)V

    invoke-static {p1, p2, p0, v0}, Lcn/nubia/video/editor/SaveVideoFileUtils;->querySource(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Lcn/nubia/video/editor/SaveVideoFileUtils$ContentResolverQueryCallback;)V

    .line 176
    sget-object p0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p0, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static overWriteFile(Ljava/lang/String;Lcn/nubia/video/editor/SaveVideoFileInfo;Landroid/content/ContentResolver;)I
    .locals 1

    .line 101
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 105
    new-instance p0, Ljava/io/File;

    iget-object p1, p1, Lcn/nubia/video/editor/SaveVideoFileInfo;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 107
    invoke-static {v0, p2}, Lcn/nubia/video/editor/SaveVideoFileUtils;->updateContent(Ljava/io/File;Landroid/content/ContentResolver;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static querySource(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Lcn/nubia/video/editor/SaveVideoFileUtils$ContentResolverQueryCallback;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 87
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 88
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 89
    invoke-interface {p3, v6}, Lcn/nubia/video/editor/SaveVideoFileUtils$ContentResolverQueryCallback;->onCursorResult(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v6, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz v6, :cond_1

    .line 95
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_1
    throw p0

    :catch_0
    if-eqz v6, :cond_2

    .line 95
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method

.method public static retriveVideoDurationMs(Ljava/lang/String;)I
    .locals 1

    .line 198
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 199
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p0, 0x9

    .line 200
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 203
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 205
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return p0
.end method

.method private static updateContent(Ljava/io/File;Landroid/content/ContentResolver;)I
    .locals 5

    .line 180
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 181
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_size"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 182
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/video/editor/SaveVideoFileUtils;->retriveVideoDurationMs(Ljava/lang/String;)I

    move-result v1

    .line 183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 185
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "datetaken"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v3, 0x3e8

    .line 186
    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "date_added"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_data=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 191
    sget-object v2, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->URI_FILES_EXTERNAL:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, p0, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 192
    sget-object p0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p0, v0, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static writeSlomoVideoFlag(Ljava/io/File;Lcn/nubia/video/editor/VideoTrimInfo;)V
    .locals 8

    .line 236
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rws"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x18

    cmp-long p0, v1, v3

    const v1, -0x55c1aa48

    if-lez p0, :cond_4

    .line 238
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 239
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p0

    if-eq p0, v1, :cond_3

    const v2, -0x55c1aa49

    if-ne p0, v2, :cond_0

    goto :goto_1

    .line 244
    :cond_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    const-wide/16 v5, 0xc

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 245
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p0

    if-eq p0, v1, :cond_2

    if-ne p0, v2, :cond_1

    goto :goto_0

    .line 249
    :cond_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_2

    .line 247
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    sub-long/2addr v2, v5

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_2

    .line 241
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p0

    .line 242
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    int-to-long v4, p0

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 255
    :cond_4
    :goto_2
    iget-wide v2, p1, Lcn/nubia/video/editor/VideoTrimInfo;->startClip:J

    iget-wide v4, p1, Lcn/nubia/video/editor/VideoTrimInfo;->startSpeedChange:J

    cmp-long p0, v2, v4

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-gez p0, :cond_8

    .line 256
    iget-wide v4, p1, Lcn/nubia/video/editor/VideoTrimInfo;->startSpeedChange:J

    iget-wide v6, p1, Lcn/nubia/video/editor/VideoTrimInfo;->startClip:J

    sub-long/2addr v4, v6

    long-to-int p0, v4

    .line 257
    iget-wide v4, p1, Lcn/nubia/video/editor/VideoTrimInfo;->endClip:J

    iget-wide v6, p1, Lcn/nubia/video/editor/VideoTrimInfo;->startSpeedChange:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_5

    move v3, v2

    goto :goto_3

    :cond_5
    move v2, p0

    .line 260
    :goto_3
    iget-wide v4, p1, Lcn/nubia/video/editor/VideoTrimInfo;->endClip:J

    iget-wide v6, p1, Lcn/nubia/video/editor/VideoTrimInfo;->startSpeedChange:J

    cmp-long p0, v4, v6

    if-ltz p0, :cond_6

    iget-wide v4, p1, Lcn/nubia/video/editor/VideoTrimInfo;->endClip:J

    iget-wide v6, p1, Lcn/nubia/video/editor/VideoTrimInfo;->endSpeedChange:J

    cmp-long p0, v4, v6

    if-gez p0, :cond_6

    .line 262
    iget-wide v2, p1, Lcn/nubia/video/editor/VideoTrimInfo;->startSpeedChange:J

    iget-wide v4, p1, Lcn/nubia/video/editor/VideoTrimInfo;->startClip:J

    sub-long/2addr v2, v4

    long-to-int p0, v2

    .line 263
    iget-wide v2, p1, Lcn/nubia/video/editor/VideoTrimInfo;->endClip:J

    iget-wide v4, p1, Lcn/nubia/video/editor/VideoTrimInfo;->startClip:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    move v3, v2

    move v2, p0

    .line 265
    :cond_6
    iget-wide v4, p1, Lcn/nubia/video/editor/VideoTrimInfo;->endClip:J

    iget-wide v6, p1, Lcn/nubia/video/editor/VideoTrimInfo;->endSpeedChange:J

    cmp-long p0, v4, v6

    if-ltz p0, :cond_7

    .line 266
    iget-wide v2, p1, Lcn/nubia/video/editor/VideoTrimInfo;->startSpeedChange:J

    iget-wide v4, p1, Lcn/nubia/video/editor/VideoTrimInfo;->startClip:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    .line 267
    iget-wide v3, p1, Lcn/nubia/video/editor/VideoTrimInfo;->endSpeedChange:J

    iget-wide v5, p1, Lcn/nubia/video/editor/VideoTrimInfo;->startClip:J

    goto :goto_5

    :cond_7
    move p0, v3

    goto :goto_6

    .line 269
    :cond_8
    iget-wide v4, p1, Lcn/nubia/video/editor/VideoTrimInfo;->startClip:J

    iget-wide v6, p1, Lcn/nubia/video/editor/VideoTrimInfo;->startSpeedChange:J

    cmp-long p0, v4, v6

    if-ltz p0, :cond_b

    iget-wide v4, p1, Lcn/nubia/video/editor/VideoTrimInfo;->startClip:J

    iget-wide v6, p1, Lcn/nubia/video/editor/VideoTrimInfo;->endSpeedChange:J

    cmp-long p0, v4, v6

    if-gez p0, :cond_b

    .line 271
    iget-wide v4, p1, Lcn/nubia/video/editor/VideoTrimInfo;->endClip:J

    iget-wide v6, p1, Lcn/nubia/video/editor/VideoTrimInfo;->endSpeedChange:J

    cmp-long p0, v4, v6

    if-gez p0, :cond_9

    .line 273
    iget-wide v3, p1, Lcn/nubia/video/editor/VideoTrimInfo;->endClip:J

    iget-wide v5, p1, Lcn/nubia/video/editor/VideoTrimInfo;->startClip:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    move p0, v3

    move v3, v2

    goto :goto_4

    :cond_9
    move p0, v3

    .line 275
    :goto_4
    iget-wide v4, p1, Lcn/nubia/video/editor/VideoTrimInfo;->endClip:J

    iget-wide v6, p1, Lcn/nubia/video/editor/VideoTrimInfo;->endSpeedChange:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_a

    .line 277
    iget-wide v3, p1, Lcn/nubia/video/editor/VideoTrimInfo;->endSpeedChange:J

    iget-wide v5, p1, Lcn/nubia/video/editor/VideoTrimInfo;->startClip:J

    :goto_5
    sub-long/2addr v3, v5

    long-to-int p0, v3

    goto :goto_6

    :cond_a
    move v2, v3

    goto :goto_6

    .line 279
    :cond_b
    iget-wide v4, p1, Lcn/nubia/video/editor/VideoTrimInfo;->startClip:J

    iget-wide v6, p1, Lcn/nubia/video/editor/VideoTrimInfo;->endSpeedChange:J

    cmp-long p0, v4, v6

    if-ltz p0, :cond_c

    move p0, v2

    goto :goto_6

    :cond_c
    move p0, v3

    move v2, p0

    .line 286
    :goto_6
    iget p1, p1, Lcn/nubia/video/editor/VideoTrimInfo;->recordTime:I

    int-to-long v3, p1

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 288
    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 290
    invoke-virtual {v0, p0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 292
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/16 p0, 0x18

    .line 294
    invoke-virtual {v0, p0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 295
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception p0

    .line 297
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_7
    return-void
.end method
