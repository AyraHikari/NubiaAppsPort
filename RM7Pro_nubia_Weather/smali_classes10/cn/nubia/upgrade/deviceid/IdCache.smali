.class public Lcn/nubia/upgrade/deviceid/IdCache;
.super Ljava/lang/Object;
.source "IdCache.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IdCache"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 14
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 15
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 16
    .local v0, "sp":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 18
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 24
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-object v1

    .line 19
    .restart local v0    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static load(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;

    .prologue
    .line 51
    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    array-length v2, p2

    if-lez v2, :cond_1

    if-eqz p3, :cond_1

    array-length v2, p2

    array-length v3, p3

    if-ne v2, v3, :cond_1

    .line 53
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 54
    .local v1, "sp":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_1

    .line 55
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 56
    aget-object v2, p2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    :try_start_0
    aget-object v2, p2, v0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "i":I
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    return-void

    .line 59
    .restart local v0    # "i":I
    .restart local v1    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method static loadFromCursor(Landroid/database/Cursor;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "toClose"    # Z

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, "value":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 102
    .local v0, "ci":I
    if-ltz v0, :cond_0

    .line 104
    :try_start_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 114
    .end local v0    # "ci":I
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    .line 115
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 117
    :cond_1
    return-object v1

    .line 105
    .restart local v0    # "ci":I
    :catch_0
    move-exception v2

    goto :goto_0

    .line 110
    .end local v0    # "ci":I
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method static loadFromCursor(Landroid/database/Cursor;[Ljava/lang/String;[Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "toClose"    # Z

    .prologue
    .line 121
    const/4 v2, 0x0

    .line 122
    .local v2, "moveOk":Z
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    array-length v3, p1

    if-lez v3, :cond_1

    if-eqz p2, :cond_1

    array-length v3, p1

    array-length v4, p2

    if-ne v3, v4, :cond_1

    .line 125
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 127
    aget-object v3, p1, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    aget-object v3, p1, v1

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 129
    .local v0, "ci":I
    if-ltz v0, :cond_0

    .line 131
    :try_start_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    .end local v0    # "ci":I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "i":I
    :catch_0
    move-exception v3

    .line 143
    :cond_1
    if-eqz p3, :cond_2

    if-eqz p0, :cond_2

    .line 144
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 146
    :cond_2
    return v2

    .line 132
    .restart local v0    # "ci":I
    .restart local v1    # "i":I
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method static save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "commitNow"    # Z

    .prologue
    .line 31
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 32
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 33
    .local v0, "sp":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 35
    .local v1, "spe":Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_0

    .line 36
    invoke-interface {v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 37
    if-eqz p4, :cond_1

    .line 39
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 40
    const-string v2, "IdCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to commit pref "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v1    # "spe":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 43
    .restart local v0    # "sp":Landroid/content/SharedPreferences;
    .restart local v1    # "spe":Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method static save(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "keys"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;
    .param p4, "commitNow"    # Z

    .prologue
    .line 72
    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p2, :cond_2

    array-length v3, p2

    if-lez v3, :cond_2

    if-eqz p3, :cond_2

    array-length v3, p2

    array-length v4, p3

    if-ne v3, v4, :cond_2

    .line 74
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 75
    .local v1, "sp":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_2

    .line 76
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 77
    .local v2, "spe":Landroid/content/SharedPreferences$Editor;
    if-eqz v2, :cond_2

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_1

    .line 79
    aget-object v3, p2, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 80
    aget-object v3, p2, v0

    aget-object v4, p3, v0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_1
    if-eqz p4, :cond_3

    .line 85
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_2

    .line 86
    const-string v3, "IdCache"

    const-string v4, "Failed to commit prefs"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v0    # "i":I
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v2    # "spe":Landroid/content/SharedPreferences$Editor;
    :cond_2
    :goto_1
    return-void

    .line 89
    .restart local v0    # "i":I
    .restart local v1    # "sp":Landroid/content/SharedPreferences;
    .restart local v2    # "spe":Landroid/content/SharedPreferences$Editor;
    :cond_3
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method
