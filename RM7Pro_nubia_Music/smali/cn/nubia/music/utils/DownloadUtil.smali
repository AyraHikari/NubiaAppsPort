.class public Lcn/nubia/music/utils/DownloadUtil;
.super Ljava/lang/Object;
.source "DownloadUtil.java"


# static fields
.field public static final DEFAULT_BITRATE:Ljava/lang/String; = "128"

.field public static final DOWNLOAD_PREFERENCES:Ljava/lang/String; = "DM_INFO"

.field public static DOWNLOAD_TYPE_RINGTON:I = 0x0

.field public static DOWNLOAD_TYPE_SONG:I = 0x0

.field public static final HIGH_BITRATE:Ljava/lang/String; = "192"

.field public static final LOW_BITRATE:Ljava/lang/String; = "64"

.field public static final MAX_DOWNLOAD_THREAD:I = 0x3

.field public static STATE_DOWNLOAD:I = 0x0

.field public static STATE_IDLE:I = 0x0

.field public static final S_BITRATE:Ljava/lang/String; = "320"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 27
    sput v0, Lcn/nubia/music/utils/DownloadUtil;->STATE_IDLE:I

    .line 28
    sput v1, Lcn/nubia/music/utils/DownloadUtil;->STATE_DOWNLOAD:I

    .line 31
    sput v0, Lcn/nubia/music/utils/DownloadUtil;->DOWNLOAD_TYPE_SONG:I

    .line 32
    sput v1, Lcn/nubia/music/utils/DownloadUtil;->DOWNLOAD_TYPE_RINGTON:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IshasDownloading(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 107
    if-nez p0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v6

    .line 111
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "nubiaMp3DB.db"

    const/4 v3, 0x2

    invoke-static {v0, v1, v3}, Lcn/nubia/music/app/db/MusicDBHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcn/nubia/music/app/db/MusicDBHelper;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    const-string v1, "status NOT IN ( "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, "\'200\',"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, "\'201\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, " )"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-static {}, Lcn/nubia/music/app/db/MusicDBConfig$DownloadItemColumns;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    .line 128
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    .line 127
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/music/app/db/MusicDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_3

    .line 130
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    const/4 v0, 0x1

    .line 133
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_2
    move v6, v0

    .line 135
    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_2
.end method

.method public static commonHint(I)I
    .locals 1

    .prologue
    .line 158
    const/4 v0, -0x1

    .line 159
    sparse-switch p0, :sswitch_data_0

    .line 202
    :goto_0
    return v0

    .line 161
    :sswitch_0
    const v0, 0x7f0b018d

    .line 162
    goto :goto_0

    .line 164
    :sswitch_1
    const v0, 0x7f0b0052

    .line 165
    goto :goto_0

    .line 167
    :sswitch_2
    const v0, 0x7f0b0053

    .line 168
    goto :goto_0

    .line 170
    :sswitch_3
    const v0, 0x7f0b0054

    .line 171
    goto :goto_0

    .line 173
    :sswitch_4
    const v0, 0x7f0b0056

    .line 174
    goto :goto_0

    .line 176
    :sswitch_5
    const v0, 0x7f0b0055

    .line 177
    goto :goto_0

    .line 183
    :sswitch_6
    const v0, 0x7f0b0057

    .line 184
    goto :goto_0

    .line 187
    :sswitch_7
    const v0, 0x7f0b005a

    .line 188
    goto :goto_0

    .line 190
    :sswitch_8
    const v0, 0x7f0b0058

    .line 191
    goto :goto_0

    .line 193
    :sswitch_9
    const v0, 0x7f0b0059

    .line 194
    goto :goto_0

    .line 196
    :sswitch_a
    const v0, 0x7f0b018c

    .line 197
    goto :goto_0

    .line 159
    nop

    :sswitch_data_0
    .sparse-switch
        0xc0 -> :sswitch_a
        0xc8 -> :sswitch_8
        0xc9 -> :sswitch_0
        0xd2 -> :sswitch_4
        0x192 -> :sswitch_6
        0x1eb -> :sswitch_9
        0x1ec -> :sswitch_1
        0x1ef -> :sswitch_2
        0x1f0 -> :sswitch_3
        0x1f2 -> :sswitch_5
        0x1f4 -> :sswitch_7
        0x258 -> :sswitch_7
    .end sparse-switch
.end method

.method public static deleteAudio(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteAudio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    const-string v1, "nubiaMp3DB.db"

    const/4 v3, 0x2

    invoke-static {v0, v1, v3}, Lcn/nubia/music/app/db/MusicDBHelper;->getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcn/nubia/music/app/db/MusicDBHelper;

    move-result-object v0

    .line 142
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    const-string v4, "\'\'"

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selection: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcn/nubia/music/app/db/MusicDBConfig$DownloadItemColumns;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    .line 147
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    .line 146
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/music/app/db/MusicDBHelper;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    invoke-static {}, Lcn/nubia/music/app/db/MusicDBConfig$DownloadItemColumns;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Lcn/nubia/music/app/db/MusicDBHelper;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 152
    :cond_0
    if-eqz v1, :cond_1

    .line 153
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 155
    :cond_1
    return-void
.end method

.method public static getDownloadQuality(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 36
    const-string v0, "64"

    .line 54
    :goto_0
    return-object v0

    .line 38
    :cond_0
    sget-object v0, Lcn/nubia/music/utils/SharedPrefersHelper;->DOWN_LOAD_QUALITY_SETTING:Ljava/lang/String;

    invoke-static {v0}, Lcn/nubia/music/utils/SettingQualityUtils;->getSettingQualityByType(Ljava/lang/String;)I

    move-result v0

    .line 40
    const-string v1, "64"

    .line 41
    packed-switch v0, :pswitch_data_0

    .line 52
    const-string v0, "64"

    goto :goto_0

    .line 43
    :pswitch_0
    const-string v0, "64"

    goto :goto_0

    .line 46
    :pswitch_1
    const-string v0, "192"

    goto :goto_0

    .line 49
    :pswitch_2
    const-string v0, "320"

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 67
    if-nez p0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static registerObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 3

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 97
    invoke-static {}, Lcn/nubia/music/app/db/MusicDBConfig$DownloadItemColumns;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    .line 96
    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 98
    return-void
.end method

.method public static unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 104
    return-void
.end method

.method public static updateMediaData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 58
    const-string v0, "DownloadUtil---updateMediaData()"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 63
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 64
    return-void
.end method
