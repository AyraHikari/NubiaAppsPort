.class public Lcn/nubia/touping/Utils/SharedPreferenceUtil;
.super Ljava/lang/Object;
.source "SharedPreferenceUtil.java"


# static fields
.field public static final DEFAULT_AUTO_QUALITY_MODE:Z = true

.field public static final DEFAULT_BITRATE_QUALITY_MODE:I = 0xa00000

.field private static final DEFAULT_BOOLEAN_VALUE:Z = false

.field private static final DEFAULT_INT_VALUE:I = -0x1

.field public static final DEFAULT_SHOW_FLOATING_WINDOW:Z = true

.field private static final DEFAULT_STRING_VALUE:Ljava/lang/String;

.field public static final DEFAULT_USB_PRIVATE_MODE:Z = true

.field public static final DEFAULT_WIRED_PRIVATE_MODE:Z = true

.field public static final DEFAULT_WIRED_SHOW_FPS:Z = true

.field public static final DEFAULT_WIRED_SOUND_OUTPUT:Z = true

.field public static final DEFAULT_WIRED_SOUND_OUTPUT_NEVER_ASK:Z = false

.field public static final DEFAULT_WIRELESS_PRIVATE_MODE:Z = true

.field private static final NAME:Ljava/lang/String; = "SCREEN_PROJECTION"

.field private static final TAG:Ljava/lang/String; = "SharedPreferenceUtil"

.field private static sSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->DEFAULT_STRING_VALUE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static getSharedPrefenrencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->sSharedPreferences:Landroid/content/SharedPreferences;

    .line 62
    sget-object v0, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->sSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSharedPrefenrencesIntByKey(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->sSharedPreferences:Landroid/content/SharedPreferences;

    .line 52
    sget-object v0, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->sSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSharedPrefenrencesIntByKey(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->sSharedPreferences:Landroid/content/SharedPreferences;

    .line 57
    sget-object v0, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->sSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSharedPrefenrencesStringByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->sSharedPreferences:Landroid/content/SharedPreferences;

    .line 72
    sget-object v0, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->sSharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->DEFAULT_STRING_VALUE:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const-class v1, Lcn/nubia/touping/Utils/SharedPreferenceUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->sSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 30
    const-string v0, "SCREEN_PROJECTION"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->sSharedPreferences:Landroid/content/SharedPreferences;

    .line 32
    :cond_0
    sget-object v0, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->sSharedPreferences:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->sSharedPreferences:Landroid/content/SharedPreferences;

    .line 67
    sget-object v0, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->sSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static saveSharedPrefenrencesKeyValue(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 36
    invoke-static {p0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->sSharedPreferences:Landroid/content/SharedPreferences;

    .line 37
    sget-object v0, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->sSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 38
    return-void
.end method

.method public static saveSharedPrefenrencesKeyValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->sSharedPreferences:Landroid/content/SharedPreferences;

    .line 42
    sget-object v0, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->sSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 43
    return-void
.end method

.method public static saveSharedPrefenrencesKeyValue(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 46
    invoke-static {p0}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->sSharedPreferences:Landroid/content/SharedPreferences;

    .line 47
    sget-object v0, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->sSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 48
    return-void
.end method
