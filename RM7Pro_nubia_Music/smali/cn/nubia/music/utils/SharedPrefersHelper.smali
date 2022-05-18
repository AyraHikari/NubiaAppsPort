.class public Lcn/nubia/music/utils/SharedPrefersHelper;
.super Ljava/lang/Object;
.source "SharedPrefersHelper.java"


# static fields
.field public static ALREADY_GET_FREE_VIP:Ljava/lang/String; = null

.field public static final DEFAULT_DOWNLOAD_DIR:Ljava/lang/String;

.field public static DOWN_LOAD_QUALITY_SETTING:Ljava/lang/String; = null

.field public static FLAG_FIRST_DOWNLOAD_SONG:Ljava/lang/String; = null

.field public static FLAG_FIRST_ENTER_PLAY_LIST:Ljava/lang/String; = null

.field public static PLAY_QUALITY_SETTING:Ljava/lang/String; = null

.field public static final PREF_DEF:I = 0x0

.field public static final PREF_MUSIC:I = 0x1

.field public static final QULITY_HIGH:I = 0x2

.field public static final QULITY_NORMAL:I = 0x1

.field public static final QULITY_S:I = 0x3

.field private static defSharedPrefers:Landroid/content/SharedPreferences;

.field private static musicSharePrefers:Landroid/content/SharedPreferences;

.field private static final sApplyMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "QULITY_Setting"

    sput-object v0, Lcn/nubia/music/utils/SharedPrefersHelper;->DOWN_LOAD_QUALITY_SETTING:Ljava/lang/String;

    .line 25
    const-string v0, "play_quality_setting"

    sput-object v0, Lcn/nubia/music/utils/SharedPrefersHelper;->PLAY_QUALITY_SETTING:Ljava/lang/String;

    .line 26
    const-string v0, "flag_first_enter_play_list"

    sput-object v0, Lcn/nubia/music/utils/SharedPrefersHelper;->FLAG_FIRST_ENTER_PLAY_LIST:Ljava/lang/String;

    .line 27
    const-string v0, "flag_first_download_song"

    sput-object v0, Lcn/nubia/music/utils/SharedPrefersHelper;->FLAG_FIRST_DOWNLOAD_SONG:Ljava/lang/String;

    .line 28
    const-string v0, "already_get_free_vip"

    sput-object v0, Lcn/nubia/music/utils/SharedPrefersHelper;->ALREADY_GET_FREE_VIP:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcn/nubia/music/utils/ConfigurationHelper;->getDefaultDownloadPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/utils/SharedPrefersHelper;->DEFAULT_DOWNLOAD_DIR:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcn/nubia/music/utils/SharedPrefersHelper;->findApplyMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/utils/SharedPrefersHelper;->sApplyMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    .prologue
    .line 201
    sget-object v0, Lcn/nubia/music/utils/SharedPrefersHelper;->sApplyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 203
    :try_start_0
    sget-object v0, Lcn/nubia/music/utils/SharedPrefersHelper;->sApplyMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 211
    :cond_0
    :goto_1
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 205
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static findApplyMethod()Ljava/lang/reflect/Method;
    .locals 3

    .prologue
    .line 192
    :try_start_0
    const-class v0, Landroid/content/SharedPreferences$Editor;

    .line 193
    const-string v1, "apply"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    .line 194
    :catch_0
    move-exception v0

    .line 197
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBoolean(ILjava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 164
    packed-switch p0, :pswitch_data_0

    .line 170
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 166
    :pswitch_0
    invoke-static {}, Lcn/nubia/music/utils/SharedPrefersHelper;->getDefSharePrefers()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 168
    :pswitch_1
    invoke-static {}, Lcn/nubia/music/utils/SharedPrefersHelper;->getMusicSharePrefers()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getDefSharePrefers()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 56
    sget-object v0, Lcn/nubia/music/utils/SharedPrefersHelper;->defSharedPrefers:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    const-string v1, "cn.nubia.music.preset"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/utils/SharedPrefersHelper;->defSharedPrefers:Landroid/content/SharedPreferences;

    .line 60
    :cond_0
    sget-object v0, Lcn/nubia/music/utils/SharedPrefersHelper;->defSharedPrefers:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static getInt(ILjava/lang/String;I)I
    .locals 1

    .prologue
    .line 116
    packed-switch p0, :pswitch_data_0

    .line 122
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 118
    :pswitch_0
    invoke-static {}, Lcn/nubia/music/utils/SharedPrefersHelper;->getDefSharePrefers()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 120
    :pswitch_1
    invoke-static {}, Lcn/nubia/music/utils/SharedPrefersHelper;->getMusicSharePrefers()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getLong(ILjava/lang/String;J)J
    .locals 2

    .prologue
    .line 138
    packed-switch p0, :pswitch_data_0

    .line 144
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    .line 140
    :pswitch_0
    invoke-static {}, Lcn/nubia/music/utils/SharedPrefersHelper;->getDefSharePrefers()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    .line 142
    :pswitch_1
    invoke-static {}, Lcn/nubia/music/utils/SharedPrefersHelper;->getMusicSharePrefers()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getMusicSharePrefers()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 64
    sget-object v0, Lcn/nubia/music/utils/SharedPrefersHelper;->musicSharePrefers:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 65
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    const-string v1, "Music"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/utils/SharedPrefersHelper;->musicSharePrefers:Landroid/content/SharedPreferences;

    .line 68
    :cond_0
    sget-object v0, Lcn/nubia/music/utils/SharedPrefersHelper;->musicSharePrefers:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    packed-switch p0, :pswitch_data_0

    .line 78
    const-string v0, ""

    :goto_0
    return-object v0

    .line 74
    :pswitch_0
    invoke-static {}, Lcn/nubia/music/utils/SharedPrefersHelper;->getDefSharePrefers()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 76
    :pswitch_1
    invoke-static {}, Lcn/nubia/music/utils/SharedPrefersHelper;->getMusicSharePrefers()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getStringSet(ILjava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    packed-switch p0, :pswitch_data_0

    .line 100
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 96
    :pswitch_0
    invoke-static {}, Lcn/nubia/music/utils/SharedPrefersHelper;->getDefSharePrefers()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 98
    :pswitch_1
    invoke-static {}, Lcn/nubia/music/utils/SharedPrefersHelper;->getMusicSharePrefers()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    const-string v1, "cn.nubia.music.preset"

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/utils/SharedPrefersHelper;->defSharedPrefers:Landroid/content/SharedPreferences;

    .line 37
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    const-string v1, "Music"

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/utils/SharedPrefersHelper;->musicSharePrefers:Landroid/content/SharedPreferences;

    .line 39
    return-void
.end method

.method public static init(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    packed-switch p0, :pswitch_data_0

    .line 53
    :goto_0
    return-void

    .line 44
    :pswitch_0
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    const-string v1, "cn.nubia.music.preset"

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/utils/SharedPrefersHelper;->defSharedPrefers:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 48
    :pswitch_1
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    const-string v1, "Music"

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/utils/SharedPrefersHelper;->musicSharePrefers:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static putBoolean(ILjava/lang/String;Z)V
    .locals 1

    .prologue
    .line 179
    packed-switch p0, :pswitch_data_0

    .line 187
    :goto_0
    return-void

    .line 181
    :pswitch_0
    invoke-static {}, Lcn/nubia/music/utils/SharedPrefersHelper;->getDefSharePrefers()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 184
    :pswitch_1
    invoke-static {}, Lcn/nubia/music/utils/SharedPrefersHelper;->getMusicSharePrefers()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static putInt(ILjava/lang/String;I)V
    .locals 1

    .prologue
    .line 127
    packed-switch p0, :pswitch_data_0

    .line 135
    :goto_0
    return-void

    .line 129
    :pswitch_0
    invoke-static {}, Lcn/nubia/music/utils/SharedPrefersHelper;->getDefSharePrefers()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 132
    :pswitch_1
    invoke-static {}, Lcn/nubia/music/utils/SharedPrefersHelper;->getMusicSharePrefers()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static putLong(ILjava/lang/String;J)V
    .locals 2

    .prologue
    .line 149
    packed-switch p0, :pswitch_data_0

    .line 157
    :goto_0
    return-void

    .line 151
    :pswitch_0
    invoke-static {}, Lcn/nubia/music/utils/SharedPrefersHelper;->getDefSharePrefers()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 154
    :pswitch_1
    invoke-static {}, Lcn/nubia/music/utils/SharedPrefersHelper;->getMusicSharePrefers()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static putString(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 83
    packed-switch p0, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 85
    :pswitch_0
    invoke-static {}, Lcn/nubia/music/utils/SharedPrefersHelper;->getDefSharePrefers()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 88
    :pswitch_1
    invoke-static {}, Lcn/nubia/music/utils/SharedPrefersHelper;->getMusicSharePrefers()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static putStringSet(ILjava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    packed-switch p0, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 107
    :pswitch_0
    invoke-static {}, Lcn/nubia/music/utils/SharedPrefersHelper;->getDefSharePrefers()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 110
    :pswitch_1
    invoke-static {}, Lcn/nubia/music/utils/SharedPrefersHelper;->getMusicSharePrefers()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
