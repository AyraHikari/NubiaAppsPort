.class public Lcn/nubia/camera/aj/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/media/MediaPlayer;

.field private static b:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 1

    .line 49
    sget-object v0, Lcn/nubia/camera/aj/a/f;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 51
    sget-object v0, Lcn/nubia/camera/aj/a/f;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 52
    sput-object v0, Lcn/nubia/camera/aj/a/f;->a:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public static a(Lcn/nubia/camera/ad/a;Landroid/content/res/Resources;)V
    .locals 6

    .line 25
    :try_start_0
    invoke-static {p0}, Lcn/nubia/camera/aj/a/f;->a(Lcn/nubia/camera/ad/a;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 26
    new-instance p0, Landroid/media/MediaPlayer;

    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object p0, Lcn/nubia/camera/aj/a/f;->a:Landroid/media/MediaPlayer;

    const p0, 0x7f0e0065

    .line 28
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    .line 29
    sget-object v0, Lcn/nubia/camera/aj/a/f;->a:Landroid/media/MediaPlayer;

    .line 30
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 31
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 32
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 29
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 33
    sget-object p0, Lcn/nubia/camera/aj/a/f;->a:Landroid/media/MediaPlayer;

    const/4 p1, 0x1

    .line 34
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 35
    sget-object p0, Lcn/nubia/camera/aj/a/f;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 36
    sget-object p0, Lcn/nubia/camera/aj/a/f;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepare()V

    .line 37
    sget-object p0, Lcn/nubia/camera/aj/a/f;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "playFastSound fail "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiShootUtil"

    invoke-static {p1, p0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    sget-object p0, Lcn/nubia/camera/aj/a/f;->a:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_0

    .line 42
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V

    const/4 p0, 0x0

    .line 43
    sput-object p0, Lcn/nubia/camera/aj/a/f;->a:Landroid/media/MediaPlayer;

    :cond_0
    :goto_0
    return-void
.end method

.method private static a(Lcn/nubia/camera/ad/a;)Z
    .locals 1

    .line 79
    invoke-virtual {p0}, Lcn/nubia/camera/ad/a;->B()Lcom/android/preference/PreferenceGroup;

    move-result-object p0

    const-string v0, "pref_camera_shutter_sound_key"

    invoke-virtual {p0, v0}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/preference/ListPreference;->k()Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    .line 78
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
