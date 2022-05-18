.class public Lcn/nubia/calendar/util/SharedPrefUtil;
.super Ljava/lang/Object;
.source "SharedPrefUtil.java"


# static fields
.field public static final KEY_SKIP_SETUP:Ljava/lang/String; = "preferences_skip_setup"

.field public static final SHARED_PREFS_NAME:Ljava/lang/String; = "cn.nubia.calendar.preset_preferences"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/util/SharedPrefUtil;->mContext:Landroid/content/Context;

    .line 15
    iput-object p1, p0, Lcn/nubia/calendar/util/SharedPrefUtil;->mContext:Landroid/content/Context;

    .line 16
    return-void
.end method

.method private getUtilsSharedPreference()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 19
    sget-object v0, Lcn/nubia/calendar/util/Utils;->prefs0:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcn/nubia/calendar/util/Utils;->prefs0:Landroid/content/SharedPreferences;

    .line 21
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/util/SharedPrefUtil;->mContext:Landroid/content/Context;

    const-string v1, "cn.nubia.calendar.preset_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getSharedPreference(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Lcn/nubia/calendar/util/SharedPrefUtil;->getUtilsSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 41
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Lcn/nubia/calendar/util/SharedPrefUtil;->getUtilsSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 36
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSharedPreference(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 45
    invoke-direct {p0}, Lcn/nubia/calendar/util/SharedPrefUtil;->getUtilsSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 46
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getSharedPreference(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # [Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/nubia/calendar/util/SharedPrefUtil;->getUtilsSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 26
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const/4 v3, 0x0

    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 27
    .local v1, "ss":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 28
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 29
    .local v2, "strings":[Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 31
    .end local v2    # "strings":[Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_0
    move-object v3, p2

    goto :goto_0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 81
    invoke-direct {p0}, Lcn/nubia/calendar/util/SharedPrefUtil;->getUtilsSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 82
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 83
    return-void
.end method

.method public setSharedPreference(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 73
    invoke-direct {p0}, Lcn/nubia/calendar/util/SharedPrefUtil;->getUtilsSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 74
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77
    return-void
.end method

.method public setSharedPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/nubia/calendar/util/SharedPrefUtil;->getUtilsSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 53
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 54
    return-void
.end method

.method public setSharedPreference(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 66
    invoke-direct {p0}, Lcn/nubia/calendar/util/SharedPrefUtil;->getUtilsSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 67
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 68
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 70
    return-void
.end method

.method public setSharedPreference(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Lcn/nubia/calendar/util/SharedPrefUtil;->getUtilsSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 58
    .local v1, "prefs":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 59
    .local v2, "set":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_0

    .line 60
    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 63
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 87
    invoke-direct {p0}, Lcn/nubia/calendar/util/SharedPrefUtil;->getUtilsSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 89
    return-void
.end method
