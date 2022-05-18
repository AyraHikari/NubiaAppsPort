.class public Lcom/android/preference/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/preference/c$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/content/SharedPreferences;

.field private c:Ljava/lang/String;

.field private final d:Lcom/android/preference/b;


# direct methods
.method public constructor <init>(Lcom/android/preference/b;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/android/preference/c;->a:Landroid/content/SharedPreferences;

    .line 22
    iput-object v0, p0, Lcom/android/preference/c;->b:Landroid/content/SharedPreferences;

    .line 23
    iput-object v0, p0, Lcom/android/preference/c;->c:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/android/preference/b;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/preference/c;->b:Landroid/content/SharedPreferences;

    .line 28
    iput-object p1, p0, Lcom/android/preference/c;->d:Lcom/android/preference/b;

    return-void
.end method

.method static synthetic a(Lcom/android/preference/c;)Landroid/content/SharedPreferences;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/android/preference/c;->b:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private a()V
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/android/preference/c;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/preference/c;->d:Lcom/android/preference/b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0}, Lcom/android/preference/b;->b()I

    move-result v0

    .line 46
    iget-object v1, p0, Lcom/android/preference/c;->a:Landroid/content/SharedPreferences;

    const-string v2, "pref_local_version_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upgradeLocalPreferences, oldVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; newVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ComboPreferences"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v3, p0, Lcom/android/preference/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-ne v0, v1, :cond_1

    return-void

    .line 52
    :cond_1
    iget-object v2, p0, Lcom/android/preference/c;->d:Lcom/android/preference/b;

    iget-object v3, p0, Lcom/android/preference/c;->a:Landroid/content/SharedPreferences;

    invoke-virtual {v2, v3, v1, v0}, Lcom/android/preference/b;->b(Landroid/content/SharedPreferences;II)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/android/preference/c;Ljava/lang/String;)Z
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/android/preference/c;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/android/preference/c;->d:Lcom/android/preference/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/preference/b;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic b(Lcom/android/preference/c;)Landroid/content/SharedPreferences;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/android/preference/c;->a:Landroid/content/SharedPreferences;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 32
    iget-object v0, p0, Lcom/android/preference/c;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    iput-object p2, p0, Lcom/android/preference/c;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/preference/c;->a:Landroid/content/SharedPreferences;

    .line 38
    invoke-direct {p0}, Lcom/android/preference/c;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/android/preference/c;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/preference/c;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 231
    new-instance v0, Lcom/android/preference/c$a;

    invoke-direct {v0, p0}, Lcom/android/preference/c$a;-><init>(Lcom/android/preference/c;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 109
    invoke-direct {p0, p1}, Lcom/android/preference/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/preference/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/preference/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 110
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/preference/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    .line 98
    invoke-direct {p0, p1}, Lcom/android/preference/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/preference/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/preference/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1

    .line 99
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/preference/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 76
    invoke-direct {p0, p1}, Lcom/android/preference/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/preference/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/preference/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 77
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/preference/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    .line 87
    invoke-direct {p0, p1}, Lcom/android/preference/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/preference/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/preference/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1

    .line 88
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/preference/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 65
    invoke-direct {p0, p1}, Lcom/android/preference/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/preference/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/preference/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 66
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/preference/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0

    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0

    return-void
.end method
