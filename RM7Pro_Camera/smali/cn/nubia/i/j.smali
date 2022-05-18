.class Lcn/nubia/i/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/i/j$a;
    }
.end annotation


# static fields
.field private static a:Lcn/nubia/i/j;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Lcn/nubia/i/l;

.field private d:I

.field private e:Z

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/i/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/i/j;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcn/nubia/i/j;->d:I

    .line 24
    iput-boolean v0, p0, Lcn/nubia/i/j;->e:Z

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/i/j;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized a()Lcn/nubia/i/j;
    .locals 2

    const-class v0, Lcn/nubia/i/j;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcn/nubia/i/j;->a:Lcn/nubia/i/j;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcn/nubia/i/j;

    invoke-direct {v1}, Lcn/nubia/i/j;-><init>()V

    sput-object v1, Lcn/nubia/i/j;->a:Lcn/nubia/i/j;

    .line 34
    :cond_0
    sget-object v1, Lcn/nubia/i/j;->a:Lcn/nubia/i/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcn/nubia/i/j;)Lcn/nubia/i/l;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/i/j;->c:Lcn/nubia/i/l;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/i/j;)Landroid/os/Handler;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/i/j;->b:Landroid/os/Handler;

    return-object p0
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/i/i;",
            ">;)V"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcn/nubia/i/j;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcn/nubia/i/j;->b:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/i/j$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/i/j$1;-><init>(Lcn/nubia/i/j;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic c(Lcn/nubia/i/j;)Ljava/util/ArrayList;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/i/j;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcn/nubia/i/j;->c:Lcn/nubia/i/l;

    if-eqz v0, :cond_0

    const-string v0, "LocalPrismaDatabase"

    const-string v1, "[PrismaLeak] database close"

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcn/nubia/i/j;->c:Lcn/nubia/i/l;

    invoke-virtual {v0}, Lcn/nubia/i/l;->close()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcn/nubia/i/j;->c:Lcn/nubia/i/l;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/ContentValues;Lcn/nubia/i/i;)V
    .locals 4

    .line 189
    iget-object v0, p0, Lcn/nubia/i/j;->c:Lcn/nubia/i/l;

    invoke-virtual {v0}, Lcn/nubia/i/l;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/nubia/i/l;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcn/nubia/i/i;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    sget-object v2, Lcn/nubia/i/l;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateValue result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalPrismaDatabase"

    invoke-static {v0, p1}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lcn/nubia/i/j;->f:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 195
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 196
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcn/nubia/i/j;->b(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/ContentValues;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/i/i;",
            ">;)V"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcn/nubia/i/j;->c:Lcn/nubia/i/l;

    invoke-virtual {v0}, Lcn/nubia/i/l;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 203
    sget-object v1, Lcn/nubia/i/l;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 204
    invoke-virtual {p3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcn/nubia/i/j;->b(Ljava/util/ArrayList;)V

    .line 205
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateValue result: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LocalPrismaDatabase"

    invoke-static {p2, p1}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 38
    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/i/j;->e:Z

    .line 39
    iget-object v0, p0, Lcn/nubia/i/j;->c:Lcn/nubia/i/l;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcn/nubia/i/l;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcn/nubia/i/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/i/j;->c:Lcn/nubia/i/l;

    :cond_0
    const-string p1, "LocalPrismaDatabase"

    const-string v0, "[PrismaLeak] database open"

    .line 42
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcn/nubia/i/b;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 226
    iget-object v0, p0, Lcn/nubia/i/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcn/nubia/i/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/i/i;)V
    .locals 4

    .line 139
    iget-object v0, p0, Lcn/nubia/i/j;->c:Lcn/nubia/i/l;

    invoke-virtual {v0}, Lcn/nubia/i/l;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 140
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 141
    sget-object v2, Lcn/nubia/i/l;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/nubia/i/i;->i()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    sget-object v2, Lcn/nubia/i/l;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/nubia/i/i;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object v2, Lcn/nubia/i/l;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/nubia/i/i;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget-object v2, Lcn/nubia/i/l;->k:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/nubia/i/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sget-object v2, Lcn/nubia/i/l;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/nubia/i/i;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-object v2, Lcn/nubia/i/l;->m:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/nubia/i/i;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    sget-object v2, Lcn/nubia/i/l;->l:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/nubia/i/i;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    sget-object v2, Lcn/nubia/i/l;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/nubia/i/i;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-object v2, Lcn/nubia/i/l;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/nubia/i/i;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object v2, Lcn/nubia/i/l;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iconUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/nubia/i/i;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "; addPhotoFileter result: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalPrismaDatabase"

    invoke-static {v0, p1}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcn/nubia/i/a;)V
    .locals 1

    .line 64
    new-instance v0, Lcn/nubia/i/j$a;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/i/j$a;-><init>(Lcn/nubia/i/j;Ljava/lang/String;Lcn/nubia/i/a;)V

    invoke-virtual {v0}, Lcn/nubia/i/j$a;->start()V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/i/i;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 155
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 158
    :cond_0
    iget-object v0, p0, Lcn/nubia/i/j;->c:Lcn/nubia/i/l;

    invoke-virtual {v0}, Lcn/nubia/i/l;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 160
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcn/nubia/i/l;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/i/i;

    invoke-virtual {v4}, Lcn/nubia/i/i;->i()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    const-string v3, " OR "

    .line 163
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    :cond_2
    sget-object v2, Lcn/nubia/i/l;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 168
    iget-object v2, p0, Lcn/nubia/i/j;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 169
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcn/nubia/i/j;->b(Ljava/util/ArrayList;)V

    .line 171
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete result: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalPrismaDatabase"

    invoke-static {v0, p1}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    .line 46
    :try_start_0
    iget v0, p0, Lcn/nubia/i/j;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/i/j;->e:Z

    if-nez v0, :cond_1

    .line 48
    invoke-direct {p0}, Lcn/nubia/i/j;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcn/nubia/i/b;)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcn/nubia/i/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcn/nubia/i/i;)V
    .locals 5

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/nubia/i/l;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/i/i;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcn/nubia/i/j;->c:Lcn/nubia/i/l;

    invoke-virtual {v1}, Lcn/nubia/i/l;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 177
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 178
    sget-object v3, Lcn/nubia/i/l;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/nubia/i/i;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    sget-object v3, Lcn/nubia/i/l;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/nubia/i/i;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object v3, Lcn/nubia/i/l;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/nubia/i/i;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v3, Lcn/nubia/i/l;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/nubia/i/i;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object v3, Lcn/nubia/i/l;->m:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/nubia/i/i;->g()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    sget-object v3, Lcn/nubia/i/l;->k:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/nubia/i/i;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-object p1, Lcn/nubia/i/l;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    .line 185
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update result: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalPrismaDatabase"

    invoke-static {v0, p1}, Lcn/nubia/i/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 53
    :try_start_0
    iget v0, p0, Lcn/nubia/i/j;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/i/j;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 2

    monitor-enter p0

    .line 57
    :try_start_0
    iget v0, p0, Lcn/nubia/i/j;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/nubia/i/j;->d:I

    .line 58
    iget-boolean v1, p0, Lcn/nubia/i/j;->e:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcn/nubia/i/j;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
