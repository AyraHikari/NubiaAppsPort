.class public abstract Lcom/android/preference/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;II)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/preference/b;->a:Landroid/content/SharedPreferences;

    .line 22
    iput p2, p0, Lcom/android/preference/b;->b:I

    .line 23
    iput p3, p0, Lcom/android/preference/b;->c:I

    .line 24
    invoke-direct {p0}, Lcom/android/preference/b;->c()V

    return-void
.end method

.method private c()V
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/android/preference/b;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    iget v1, p0, Lcom/android/preference/b;->c:I

    const-string v2, "pref_global_version_key"

    .line 69
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 71
    iget-object v3, p0, Lcom/android/preference/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgradeGlobalPreference, oldVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; newVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ComboPreferenceHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v0, :cond_1

    return-void

    .line 76
    :cond_1
    iget-object v2, p0, Lcom/android/preference/b;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/preference/b;->a(Landroid/content/SharedPreferences;II)V

    return-void
.end method


# virtual methods
.method final a()Landroid/content/SharedPreferences;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/android/preference/b;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method protected abstract a(Landroid/content/SharedPreferences;II)V
.end method

.method protected abstract a(Ljava/lang/String;)Z
.end method

.method final b()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/android/preference/b;->b:I

    return v0
.end method

.method protected abstract b(Landroid/content/SharedPreferences;II)V
.end method

.method final b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_global_version_key"

    .line 36
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/preference/b;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
