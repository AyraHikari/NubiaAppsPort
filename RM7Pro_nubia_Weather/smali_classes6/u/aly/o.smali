.class public Lu/aly/o;
.super Ljava/lang/Object;
.source "UMCCStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/o$a;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lu/aly/o;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 35
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lu/aly/o$1;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lu/aly/o;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lu/aly/o;
    .locals 1

    .prologue
    .line 38
    sput-object p0, Lu/aly/o;->a:Landroid/content/Context;

    .line 39
    invoke-static {}, Lu/aly/o$a;->a()Lu/aly/o;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lu/aly/av$e;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 105
    .line 107
    :try_start_0
    sget-object v0, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lu/aly/a;->b(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 112
    sget-object v1, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/b;->c()V

    .line 114
    :goto_0
    return-object v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    :try_start_1
    const-string v0, "upload agg date error"

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    sget-object v0, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/b;->c()V

    .line 114
    const/4 v0, 0x0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    sget-object v1, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/b;->c()V

    throw v0
.end method

.method public a(Lu/aly/f;)V
    .locals 4

    .prologue
    .line 56
    .line 58
    :try_start_0
    sget-object v0, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lu/aly/a;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lu/aly/q;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 61
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    const-string v0, "faild"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lu/aly/f;->a(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    sget-object v0, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/b;->c()V

    .line 77
    :goto_0
    return-void

    .line 65
    :cond_0
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    invoke-static {v0, p1}, Lu/aly/a;->a(Landroid/database/sqlite/SQLiteDatabase;Lu/aly/f;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :goto_1
    sget-object v0, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/b;->c()V

    goto :goto_0

    .line 68
    :cond_1
    :try_start_2
    invoke-static {v0, p1}, Lu/aly/a;->b(Landroid/database/sqlite/SQLiteDatabase;Lu/aly/f;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    const/4 v0, 0x0

    :try_start_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lu/aly/f;->a(Ljava/lang/Object;Z)V

    .line 72
    const-string v0, "load agg data error"

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    sget-object v0, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/b;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/b;->c()V

    throw v0
.end method

.method public a(Lu/aly/f;Ljava/lang/String;JJ)V
    .locals 7

    .prologue
    .line 159
    .line 161
    :try_start_0
    sget-object v0, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/b;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    .line 162
    invoke-static/range {v0 .. v5}, Lu/aly/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JJ)V

    .line 163
    const-string v0, "success"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lu/aly/f;->a(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    sget-object v0, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/b;->c()V

    .line 169
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    :try_start_1
    const-string v0, "package size to big or envelopeOverflowPackageCount exception"

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    sget-object v0, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/b;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/b;->c()V

    throw v0
.end method

.method public a(Lu/aly/f;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/aly/f;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .line 174
    :try_start_0
    sget-object v0, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/b;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 175
    invoke-static {p1, v0, p2}, Lu/aly/a;->a(Lu/aly/f;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    sget-object v0, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/b;->c()V

    .line 182
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    :try_start_1
    const-string v0, "saveToLimitCKTable exception"

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    sget-object v0, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/b;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/b;->c()V

    throw v0
.end method

.method public a(Lu/aly/f;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/aly/f;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lu/aly/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .line 88
    :try_start_0
    sget-object v0, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/b;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 89
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, Lu/aly/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)Z

    .line 90
    const-string v0, "success"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lu/aly/f;->a(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    sget-object v0, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/b;->c()V

    .line 96
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    :try_start_1
    const-string v0, "save agg data error"

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    sget-object v0, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/b;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/b;->c()V

    throw v0
.end method

.method public a(Lu/aly/f;Z)V
    .locals 2

    .prologue
    .line 143
    .line 145
    :try_start_0
    sget-object v0, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/b;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 146
    invoke-static {v0, p2, p1}, Lu/aly/a;->a(Landroid/database/sqlite/SQLiteDatabase;ZLu/aly/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    sget-object v0, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/b;->c()V

    .line 152
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    :try_start_1
    const-string v0, "notifyUploadSuccess error"

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    sget-object v0, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/b;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/b;->c()V

    throw v0
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    .line 211
    :try_start_0
    sget-object v0, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 212
    invoke-static {v0}, Lu/aly/a;->c(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 216
    sget-object v1, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/b;->c()V

    .line 218
    :goto_0
    return-object v0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    :try_start_1
    const-string v0, "loadCKToMemory exception"

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    sget-object v0, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/b;->c()V

    .line 218
    const/4 v0, 0x0

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v0

    sget-object v1, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/b;->c()V

    throw v0
.end method

.method public b(Lu/aly/f;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/aly/f;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lu/aly/av$f;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 124
    .line 126
    :try_start_0
    sget-object v0, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 127
    invoke-static {p1, v0}, Lu/aly/a;->a(Lu/aly/f;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 131
    sget-object v1, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/b;->c()V

    .line 133
    :goto_0
    return-object v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    sget-object v0, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/b;->c()V

    .line 133
    const/4 v0, 0x0

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    sget-object v1, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/b;->c()V

    throw v0
.end method

.method public b(Lu/aly/f;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/aly/f;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .line 194
    :try_start_0
    sget-object v0, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/b;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 195
    invoke-static {v0, p2, p1}, Lu/aly/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;Lu/aly/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    sget-object v0, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/b;->c()V

    .line 201
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    :try_start_1
    const-string v0, "arrgetated system buffer exception"

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    sget-object v0, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/b;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/b;->c()V

    throw v0
.end method

.method public c(Lu/aly/f;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/aly/f;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lu/aly/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .line 224
    :try_start_0
    sget-object v0, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/b;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 225
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lu/aly/a;->a(Lu/aly/f;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    sget-object v0, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/b;->c()V

    .line 232
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    :try_start_1
    const-string v0, "cacheToData error"

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    sget-object v0, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/b;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lu/aly/o;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/b;->a(Landroid/content/Context;)Lu/aly/b;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/b;->c()V

    throw v0
.end method
