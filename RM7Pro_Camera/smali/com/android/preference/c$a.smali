.class Lcom/android/preference/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/preference/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/preference/c;

.field private b:Landroid/content/SharedPreferences$Editor;

.field private c:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/android/preference/c;)V
    .locals 1

    .line 137
    iput-object p1, p0, Lcom/android/preference/c$a;->a:Lcom/android/preference/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-static {p1}, Lcom/android/preference/c;->a(Lcom/android/preference/c;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/preference/c$a;->b:Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-static {p1}, Lcom/android/preference/c;->b(Lcom/android/preference/c;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/preference/c$a;->c:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/preference/c$a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 152
    iget-object v0, p0, Lcom/android/preference/c$a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/preference/c$a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 159
    iget-object v0, p0, Lcom/android/preference/c$a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public commit()Z
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/preference/c$a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 145
    iget-object v1, p0, Lcom/android/preference/c$a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/android/preference/c$a;->a:Lcom/android/preference/c;

    invoke-static {v0, p1}, Lcom/android/preference/c;->a(Lcom/android/preference/c;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/preference/c$a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/preference/c$a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_0
    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/android/preference/c$a;->a:Lcom/android/preference/c;

    invoke-static {v0, p1}, Lcom/android/preference/c;->a(Lcom/android/preference/c;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/preference/c$a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/preference/c$a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    :goto_0
    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/preference/c$a;->a:Lcom/android/preference/c;

    invoke-static {v0, p1}, Lcom/android/preference/c;->a(Lcom/android/preference/c;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/preference/c$a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/preference/c$a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_0
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/android/preference/c$a;->a:Lcom/android/preference/c;

    invoke-static {v0, p1}, Lcom/android/preference/c;->a(Lcom/android/preference/c;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/preference/c$a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/preference/c$a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :goto_0
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/preference/c$a;->a:Lcom/android/preference/c;

    invoke-static {v0, p1}, Lcom/android/preference/c;->a(Lcom/android/preference/c;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/preference/c$a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/preference/c$a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 223
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/preference/c$a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    iget-object v0, p0, Lcom/android/preference/c$a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method
