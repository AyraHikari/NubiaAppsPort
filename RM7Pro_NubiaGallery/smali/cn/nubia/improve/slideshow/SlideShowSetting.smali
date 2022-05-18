.class public Lcn/nubia/improve/slideshow/SlideShowSetting;
.super Ljava/lang/Object;
.source "SlideShowSetting.java"


# static fields
.field public static final EFFECT_NAME:Ljava/lang/String; = "slideshow_setting_effect"

.field public static final MOTIONCONTROL:Ljava/lang/String; = "slideshow_setting_motioncontrol"

.field public static final MUSIC_NAME:Ljava/lang/String; = "slideshow_setting_music_name"

.field private static final MUSIC_NAME_ACTIVE:Ljava/lang/String; = "slideshow_setting_music_active"

.field public static final MUSIC_URL:Ljava/lang/String; = "slideshow_setting_music_url"

.field private static final PLAY_REPAT:Ljava/lang/String; = "slideshow_setting_play_repat"

.field public static final RESGETMUSIC:I = 0x65

.field public static final RESSETEFFECT:I = 0x64

.field public static final SLIDESHOW_DURATION:I = 0xbb8

.field public static final TRANSITION_DURATION:I = 0x3e8


# instance fields
.field private cr:Landroid/content/ContentResolver;

.field private isPlayRepeat:Z

.field private mContenxt:Landroid/content/Context;

.field private mEffectName:Ljava/lang/String;

.field private mMotionControl:Z

.field private mPlayMusicActive:Z

.field private mPlayMusicName:Ljava/lang/String;

.field private mPlayMusicUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->cr:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->isPlayRepeat:Z

    .line 45
    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mContenxt:Landroid/content/Context;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->cr:Landroid/content/ContentResolver;

    .line 47
    invoke-direct {p0}, Lcn/nubia/improve/slideshow/SlideShowSetting;->loadValue()V

    return-void
.end method

.method private loadValue()V
    .locals 6

    .line 194
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mContenxt:Landroid/content/Context;

    .line 195
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "slideshow_setting_effect"

    const-string v2, "FadeOut"

    .line 198
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mEffectName:Ljava/lang/String;

    const-string v1, "slideshow_setting_music_name"

    const-string v2, ""

    .line 199
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mPlayMusicName:Ljava/lang/String;

    .line 200
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mContenxt:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f100223

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mPlayMusicName:Ljava/lang/String;

    goto :goto_0

    .line 203
    :cond_0
    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mPlayMusicName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x12

    if-le v1, v4, :cond_1

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mPlayMusicName:Ljava/lang/String;

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "..."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mPlayMusicName:Ljava/lang/String;

    :cond_1
    :goto_0
    const-string v1, "slideshow_setting_music_url"

    .line 207
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mPlayMusicUri:Landroid/net/Uri;

    const/4 v1, 0x1

    const-string v2, "slideshow_setting_motioncontrol"

    .line 208
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mMotionControl:Z

    const-string v1, "slideshow_setting_music_active"

    .line 209
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mPlayMusicActive:Z

    const-string v1, "slideshow_setting_play_repat"

    .line 210
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->isPlayRepeat:Z

    return-void
.end method

.method private uriToFilePath(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p2, :cond_2

    const-string v0, "content://media/external"

    .line 174
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 177
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v1, "_data"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 180
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p2, p1

    :cond_0
    if-eqz v0, :cond_2

    .line 186
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 188
    :cond_1
    throw p1

    :catch_0
    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-object p2
.end method

.method private uriToFilePath2(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    .line 119
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v1, "_data"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 122
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p2, p1

    :cond_0
    if-eqz v0, :cond_2

    .line 128
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_1
    throw p1

    :catch_0
    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-object p2
.end method


# virtual methods
.method public Save()V
    .locals 4

    .line 151
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mContenxt:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 152
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mEffectName:Ljava/lang/String;

    const-string v2, "slideshow_setting_effect"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 154
    iget-boolean v1, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mPlayMusicActive:Z

    const-string v2, "slideshow_setting_music_active"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 155
    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mPlayMusicName:Ljava/lang/String;

    const-string v2, "slideshow_setting_music_name"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 157
    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mPlayMusicUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mContenxt:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isInternationalPoject(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mPlayMusicUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 161
    :cond_0
    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mContenxt:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mPlayMusicUri:Landroid/net/Uri;

    const-string v3, "_data"

    invoke-static {v1, v2, v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->getAbslotePath(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "slideshow_setting_music_url"

    .line 166
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    iget-boolean v1, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mMotionControl:Z

    const-string v2, "slideshow_setting_motioncontrol"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 168
    iget-boolean v1, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->isPlayRepeat:Z

    const-string v2, "slideshow_setting_play_repat"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public getCr()Landroid/content/ContentResolver;
    .locals 1

    .line 51
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->cr:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getEffectName()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mEffectName:Ljava/lang/String;

    return-object v0
.end method

.method public getMotionControl()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mMotionControl:Z

    return v0
.end method

.method public getPlayMusicActive()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mPlayMusicActive:Z

    return v0
.end method

.method public getPlayMusicFilePath()Ljava/lang/String;
    .locals 2

    .line 108
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mPlayMusicUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 109
    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcn/nubia/improve/slideshow/SlideShowSetting;->uriToFilePath2(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPlayMusicName()Ljava/lang/String;
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcn/nubia/improve/slideshow/SlideShowSetting;->getPlayMusicUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mPlayMusicName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mPlayMusicName:Ljava/lang/String;

    return-object v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mContenxt:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10020f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayMusicUrl()Landroid/net/Uri;
    .locals 2

    .line 96
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mPlayMusicUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://media/external/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mPlayMusicUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/improve/slideshow/SlideShowSetting;->uriToFilePath(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mPlayMusicUri:Landroid/net/Uri;

    .line 103
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mPlayMusicUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isPlayRepeat()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->isPlayRepeat:Z

    return v0
.end method

.method public setEffectName(Ljava/lang/String;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mEffectName:Ljava/lang/String;

    if-eq v0, p1, :cond_0

    .line 55
    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mEffectName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setMotionControl(Z)V
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mMotionControl:Z

    if-eq v0, p1, :cond_0

    .line 73
    iput-boolean p1, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mMotionControl:Z

    :cond_0
    return-void
.end method

.method public setPlayMusicActive(Z)V
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mPlayMusicActive:Z

    if-eq v0, p1, :cond_0

    .line 79
    iput-boolean p1, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mPlayMusicActive:Z

    :cond_0
    return-void
.end method

.method public setPlayMusicName(Ljava/lang/String;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mPlayMusicName:Ljava/lang/String;

    if-eq v0, p1, :cond_0

    .line 61
    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mPlayMusicName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setPlayMusicUrl(Landroid/net/Uri;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mPlayMusicUri:Landroid/net/Uri;

    if-eq v0, p1, :cond_0

    .line 67
    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->mPlayMusicUri:Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method public setPlayRepeat(Z)V
    .locals 0

    .line 147
    iput-boolean p1, p0, Lcn/nubia/improve/slideshow/SlideShowSetting;->isPlayRepeat:Z

    return-void
.end method
