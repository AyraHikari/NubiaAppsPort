.class public Lu/aly/v;
.super Ljava/lang/Object;
.source "IdTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/v$a;
    }
.end annotation


# static fields
.field public static a:Lu/aly/v;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Ljava/io/File;

.field private d:Lu/aly/bc;

.field private e:J

.field private f:J

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lu/aly/r;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lu/aly/v$a;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "umeng_it.cache"

    iput-object v0, p0, Lu/aly/v;->b:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lu/aly/v;->d:Lu/aly/bc;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lu/aly/v;->g:Ljava/util/Set;

    .line 40
    iput-object v1, p0, Lu/aly/v;->h:Lu/aly/v$a;

    .line 45
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "umeng_it.cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lu/aly/v;->c:Ljava/io/File;

    .line 46
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lu/aly/v;->f:J

    .line 47
    new-instance v0, Lu/aly/v$a;

    invoke-direct {v0, p1}, Lu/aly/v$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/v;->h:Lu/aly/v$a;

    .line 48
    iget-object v0, p0, Lu/aly/v;->h:Lu/aly/v$a;

    invoke-virtual {v0}, Lu/aly/v$a;->b()V

    .line 49
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu/aly/v;
    .locals 3

    .prologue
    .line 52
    const-class v1, Lu/aly/v;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lu/aly/v;->a:Lu/aly/v;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lu/aly/v;

    invoke-direct {v0, p0}, Lu/aly/v;-><init>(Landroid/content/Context;)V

    sput-object v0, Lu/aly/v;->a:Lu/aly/v;

    .line 55
    sget-object v0, Lu/aly/v;->a:Lu/aly/v;

    new-instance v2, Lu/aly/w;

    invoke-direct {v2, p0}, Lu/aly/w;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lu/aly/v;->a(Lu/aly/r;)Z

    .line 56
    sget-object v0, Lu/aly/v;->a:Lu/aly/v;

    new-instance v2, Lu/aly/s;

    invoke-direct {v2, p0}, Lu/aly/s;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lu/aly/v;->a(Lu/aly/r;)Z

    .line 57
    sget-object v0, Lu/aly/v;->a:Lu/aly/v;

    new-instance v2, Lu/aly/ab;

    invoke-direct {v2, p0}, Lu/aly/ab;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lu/aly/v;->a(Lu/aly/r;)Z

    .line 58
    sget-object v0, Lu/aly/v;->a:Lu/aly/v;

    new-instance v2, Lu/aly/aa;

    invoke-direct {v2, p0}, Lu/aly/aa;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lu/aly/v;->a(Lu/aly/r;)Z

    .line 59
    sget-object v0, Lu/aly/v;->a:Lu/aly/v;

    new-instance v2, Lu/aly/u;

    invoke-direct {v2, p0}, Lu/aly/u;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lu/aly/v;->a(Lu/aly/r;)Z

    .line 60
    sget-object v0, Lu/aly/v;->a:Lu/aly/v;

    new-instance v2, Lu/aly/y;

    invoke-direct {v2, p0}, Lu/aly/y;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lu/aly/v;->a(Lu/aly/r;)Z

    .line 61
    sget-object v0, Lu/aly/v;->a:Lu/aly/v;

    new-instance v2, Lu/aly/z;

    invoke-direct {v2}, Lu/aly/z;-><init>()V

    invoke-virtual {v0, v2}, Lu/aly/v;->a(Lu/aly/r;)Z

    .line 62
    sget-object v0, Lu/aly/v;->a:Lu/aly/v;

    new-instance v2, Lu/aly/ac;

    invoke-direct {v2, p0}, Lu/aly/ac;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lu/aly/v;->a(Lu/aly/r;)Z

    .line 64
    sget-object v0, Lu/aly/v;->a:Lu/aly/v;

    invoke-virtual {v0}, Lu/aly/v;->e()V

    .line 67
    :cond_0
    sget-object v0, Lu/aly/v;->a:Lu/aly/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lu/aly/bc;)V
    .locals 2

    .prologue
    .line 220
    if-eqz p1, :cond_0

    .line 223
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :try_start_1
    new-instance v0, Lu/aly/by;

    invoke-direct {v0}, Lu/aly/by;-><init>()V

    invoke-virtual {v0, p1}, Lu/aly/by;->a(Lu/aly/bp;)[B

    move-result-object v0

    .line 225
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    if-eqz v0, :cond_0

    .line 228
    :try_start_2
    iget-object v1, p0, Lu/aly/v;->c:Ljava/io/File;

    invoke-static {v1, v0}, Lu/aly/bk;->a(Ljava/io/File;[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 225
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private g()V
    .locals 7

    .prologue
    .line 118
    new-instance v1, Lu/aly/bc;

    invoke-direct {v1}, Lu/aly/bc;-><init>()V

    .line 119
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 120
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 122
    iget-object v0, p0, Lu/aly/v;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/r;

    .line 123
    invoke-virtual {v0}, Lu/aly/r;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 126
    invoke-virtual {v0}, Lu/aly/r;->d()Lu/aly/bb;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 127
    invoke-virtual {v0}, Lu/aly/r;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lu/aly/r;->d()Lu/aly/bb;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_1
    invoke-virtual {v0}, Lu/aly/r;->e()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lu/aly/r;->e()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 131
    invoke-virtual {v0}, Lu/aly/r;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {v1, v3}, Lu/aly/bc;->a(Ljava/util/List;)Lu/aly/bc;

    .line 136
    invoke-virtual {v1, v2}, Lu/aly/bc;->a(Ljava/util/Map;)Lu/aly/bc;

    .line 138
    monitor-enter p0

    .line 140
    :try_start_0
    iput-object v1, p0, Lu/aly/v;->d:Lu/aly/bc;

    .line 141
    monitor-exit p0

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private h()Lu/aly/bc;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 199
    iget-object v1, p0, Lu/aly/v;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    :goto_0
    return-object v0

    .line 203
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v1, p0, Lu/aly/v;->c:Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :try_start_1
    invoke-static {v2}, Lu/aly/bk;->b(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 206
    new-instance v1, Lu/aly/bc;

    invoke-direct {v1}, Lu/aly/bc;-><init>()V

    .line 207
    new-instance v4, Lu/aly/bs;

    invoke-direct {v4}, Lu/aly/bs;-><init>()V

    invoke-virtual {v4, v1, v3}, Lu/aly/bs;->a(Lu/aly/bp;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 213
    invoke-static {v2}, Lu/aly/bk;->c(Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_0

    .line 210
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 211
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 213
    invoke-static {v2}, Lu/aly/bk;->c(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    invoke-static {v2}, Lu/aly/bk;->c(Ljava/io/InputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 210
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 86
    iget-wide v0, p0, Lu/aly/v;->e:J

    sub-long v0, v2, v0

    iget-wide v4, p0, Lu/aly/v;->f:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_4

    .line 87
    const/4 v0, 0x0

    .line 89
    iget-object v1, p0, Lu/aly/v;->g:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/r;

    .line 90
    invoke-virtual {v0}, Lu/aly/r;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 94
    invoke-virtual {v0}, Lu/aly/r;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 95
    const/4 v1, 0x1

    .line 97
    invoke-virtual {v0}, Lu/aly/r;->c()Z

    move-result v5

    if-nez v5, :cond_1

    .line 98
    iget-object v5, p0, Lu/aly/v;->h:Lu/aly/v$a;

    invoke-virtual {v0}, Lu/aly/r;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lu/aly/v$a;->b(Ljava/lang/String;)V

    :cond_1
    move v0, v1

    move v1, v0

    .line 101
    goto :goto_0

    .line 103
    :cond_2
    if-eqz v1, :cond_3

    .line 104
    invoke-direct {p0}, Lu/aly/v;->g()V

    .line 105
    iget-object v0, p0, Lu/aly/v;->h:Lu/aly/v$a;

    invoke-virtual {v0}, Lu/aly/v$a;->a()V

    .line 106
    invoke-virtual {p0}, Lu/aly/v;->f()V

    .line 109
    :cond_3
    iput-wide v2, p0, Lu/aly/v;->e:J

    .line 111
    :cond_4
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 81
    iput-wide p1, p0, Lu/aly/v;->f:J

    .line 82
    return-void
.end method

.method public a(Lu/aly/r;)Z
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lu/aly/v;->h:Lu/aly/v$a;

    invoke-virtual {p1}, Lu/aly/r;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/v$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lu/aly/v;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 77
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lu/aly/bc;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lu/aly/v;->d:Lu/aly/bc;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 149
    .line 150
    iget-object v0, p0, Lu/aly/v;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/r;

    .line 151
    invoke-virtual {v0}, Lu/aly/r;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    invoke-virtual {v0}, Lu/aly/r;->e()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lu/aly/r;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 155
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lu/aly/r;->a(Ljava/util/List;)V

    .line 156
    const/4 v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    .line 158
    goto :goto_0

    .line 160
    :cond_1
    if-eqz v1, :cond_2

    .line 161
    iget-object v0, p0, Lu/aly/v;->d:Lu/aly/bc;

    invoke-virtual {v0, v2}, Lu/aly/bc;->b(Z)V

    .line 162
    invoke-virtual {p0}, Lu/aly/v;->f()V

    .line 164
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public e()V
    .locals 4

    .prologue
    .line 167
    invoke-direct {p0}, Lu/aly/v;->h()Lu/aly/bc;

    move-result-object v0

    .line 169
    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 172
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lu/aly/v;->g:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    monitor-enter p0

    .line 175
    :try_start_0
    iput-object v0, p0, Lu/aly/v;->d:Lu/aly/bc;

    .line 177
    iget-object v0, p0, Lu/aly/v;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/r;

    .line 178
    iget-object v3, p0, Lu/aly/v;->d:Lu/aly/bc;

    invoke-virtual {v0, v3}, Lu/aly/r;->a(Lu/aly/bc;)V

    .line 180
    invoke-virtual {v0}, Lu/aly/r;->c()Z

    move-result v3

    if-nez v3, :cond_1

    .line 181
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 185
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/r;

    .line 186
    iget-object v2, p0, Lu/aly/v;->g:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 188
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    invoke-direct {p0}, Lu/aly/v;->g()V

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lu/aly/v;->d:Lu/aly/bc;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lu/aly/v;->d:Lu/aly/bc;

    invoke-direct {p0, v0}, Lu/aly/v;->a(Lu/aly/bc;)V

    .line 196
    :cond_0
    return-void
.end method
