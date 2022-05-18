.class public Lcom/hpplay/sdk/source/common/store/Preference;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Preference"

.field private static mPreference:Lcom/hpplay/sdk/source/common/store/Preference;


# instance fields
.field private mPref:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/common/store/Preference;->mPref:Landroid/content/SharedPreferences;

    .line 25
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hpplay/sdk/source/common/store/Preference;
    .locals 2

    .prologue
    .line 28
    const-class v1, Lcom/hpplay/sdk/source/common/store/Preference;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hpplay/sdk/source/common/store/Preference;->mPreference:Lcom/hpplay/sdk/source/common/store/Preference;

    if-nez v0, :cond_0

    .line 29
    invoke-static {}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/common/store/Preference;->initPreference(Landroid/content/Context;)Lcom/hpplay/sdk/source/common/store/Preference;

    .line 31
    :cond_0
    sget-object v0, Lcom/hpplay/sdk/source/common/store/Preference;->mPreference:Lcom/hpplay/sdk/source/common/store/Preference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static initPreference(Landroid/content/Context;)Lcom/hpplay/sdk/source/common/store/Preference;
    .locals 2

    .prologue
    .line 35
    const-string v0, "Preference"

    const-string v1, "Preference initPreference"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/hpplay/sdk/source/common/store/Preference;->mPreference:Lcom/hpplay/sdk/source/common/store/Preference;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/hpplay/sdk/source/common/store/Preference;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/common/store/Preference;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/hpplay/sdk/source/common/store/Preference;->mPreference:Lcom/hpplay/sdk/source/common/store/Preference;

    .line 39
    :cond_0
    sget-object v0, Lcom/hpplay/sdk/source/common/store/Preference;->mPreference:Lcom/hpplay/sdk/source/common/store/Preference;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;F)F
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Preference;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Preference;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Preference;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hpplay/sdk/source/common/store/Preference;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Preference;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Preference;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;F)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Preference;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 76
    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Preference;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Preference;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Preference;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 84
    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/hpplay/sdk/source/common/store/Preference;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 68
    return-void
.end method
