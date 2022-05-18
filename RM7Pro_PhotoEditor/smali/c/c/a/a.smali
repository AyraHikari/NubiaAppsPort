.class public Lc/c/a/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/a$d;,
        Lc/c/a/a$c;,
        Lc/c/a/a$b;
    }
.end annotation


# static fields
.field private static h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lc/c/a/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;

.field private b:Lc/c/a/a$b;

.field private c:Z

.field private d:Z

.field private e:Ljava/util/concurrent/locks/Lock;

.field private volatile f:Z

.field private final g:Lc/c/a/a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc/c/a/a;->h:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lc/c/a/a$b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/c/a/a;->c:Z

    iput-boolean v0, p0, Lc/c/a/a;->d:Z

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lc/c/a/a;->e:Ljava/util/concurrent/locks/Lock;

    iput-boolean v0, p0, Lc/c/a/a;->f:Z

    new-instance v0, Lc/c/a/a$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc/c/a/a$d;-><init>(Lc/c/a/a;Lc/c/a/a$a;)V

    iput-object v0, p0, Lc/c/a/a;->g:Lc/c/a/a$d;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lc/c/a/a;->c(Lc/c/a/a$b;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p1, p0, Lc/c/a/a;->b:Lc/c/a/a$b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "daoConfig may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()V
    .locals 1

    iget-boolean v0, p0, Lc/c/a/a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/c/a/a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/c/a/a;->f:Z

    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;ILc/c/a/a$c;)Lc/c/a/a;
    .locals 1

    new-instance v0, Lc/c/a/a$b;

    invoke-direct {v0, p0}, Lc/c/a/a$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lc/c/a/a$b;->f(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lc/c/a/a$b;->h(I)V

    invoke-virtual {v0, p3}, Lc/c/a/a$b;->g(Lc/c/a/a$c;)V

    invoke-static {v0}, Lc/c/a/a;->p(Lc/c/a/a$b;)Lc/c/a/a;

    move-result-object p0

    return-object p0
.end method

.method private c(Lc/c/a/a$b;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    invoke-virtual {p1}, Lc/c/a/a$b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lc/c/a/a$b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lc/c/a/a$b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lc/c/a/a$b;->c()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    :cond_2
    :goto_0
    return-object v2
.end method

.method private e(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lc/c/a/a;->c:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lc/c/a/h/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    iget-boolean v0, p0, Lc/c/a/a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_0
    iget-boolean v0, p0, Lc/c/a/a;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/c/a/a;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/c/a/a;->f:Z

    :cond_1
    return-void
.end method

.method private static declared-synchronized p(Lc/c/a/a$b;)Lc/c/a/a;
    .locals 5

    const-class v0, Lc/c/a/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/c/a/a;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Lc/c/a/a$b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/a;

    if-nez v1, :cond_0

    new-instance v1, Lc/c/a/a;

    invoke-direct {v1, p0}, Lc/c/a/a;-><init>(Lc/c/a/a$b;)V

    sget-object v2, Lc/c/a/a;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Lc/c/a/a$b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p0, v1, Lc/c/a/a;->b:Lc/c/a/a$b;

    :goto_0
    iget-object v2, v1, Lc/c/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    invoke-virtual {p0}, Lc/c/a/a$b;->e()I

    move-result v4

    if-eq v3, v4, :cond_3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lc/c/a/a$b;->d()Lc/c/a/a$c;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, v1, v3, v4}, Lc/c/a/a$c;->a(Lc/c/a/a;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lc/c/a/a;->g()V
    :try_end_1
    .catch Lc/c/a/e/b; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lc/c/a/h/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private q(Ljava/lang/String;)J
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT seq FROM sqlite_sequence WHERE name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/a;->k(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {p1}, Lc/c/a/h/b;->a(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    new-instance v1, Lc/c/a/e/b;

    invoke-direct {v1, v0}, Lc/c/a/e/b;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1}, Lc/c/a/h/b;->a(Landroid/database/Cursor;)V

    throw v0

    :cond_1
    :goto_0
    return-wide v0
.end method

.method private s(Ljava/lang/Object;)Z
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lc/c/a/d/d/h;->a(Lc/c/a/a;Ljava/lang/Class;)Lc/c/a/d/d/h;

    move-result-object v0

    iget-object v1, v0, Lc/c/a/d/d/h;->c:Lc/c/a/d/d/f;

    invoke-virtual {v1}, Lc/c/a/d/d/f;->l()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-static {p0, p1}, Lc/c/a/d/c/h;->d(Lc/c/a/a;Ljava/lang/Object;)Lc/c/a/d/c/g;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc/c/a/a;->i(Lc/c/a/d/c/g;)V

    iget-object v0, v0, Lc/c/a/d/d/h;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lc/c/a/a;->q(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v1, p1, v4, v5}, Lc/c/a/d/d/f;->m(Ljava/lang/Object;J)V

    return v3

    :cond_1
    invoke-static {p0, p1}, Lc/c/a/d/c/h;->d(Lc/c/a/a;Ljava/lang/Object;)Lc/c/a/d/c/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/a;->i(Lc/c/a/d/c/g;)V

    return v3
.end method

.method private u(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lc/c/a/d/d/h;->a(Lc/c/a/a;Ljava/lang/Class;)Lc/c/a/d/d/h;

    move-result-object v0

    iget-object v0, v0, Lc/c/a/d/d/h;->c:Lc/c/a/d/d/f;

    invoke-virtual {v0}, Lc/c/a/d/d/f;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lc/c/a/d/d/f;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lc/c/a/d/c/h;->f(Lc/c/a/a;Ljava/lang/Object;[Ljava/lang/String;)Lc/c/a/d/c/g;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lc/c/a/a;->s(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {p0, p1}, Lc/c/a/d/c/h;->e(Lc/c/a/a;Ljava/lang/Object;)Lc/c/a/d/c/g;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lc/c/a/a;->i(Lc/c/a/d/c/g;)V

    :goto_1
    return-void
.end method

.method private v()V
    .locals 1

    iget-boolean v0, p0, Lc/c/a/a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    :cond_0
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lc/c/a/a;->w(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lc/c/a/d/c/h;->a(Lc/c/a/a;Ljava/lang/Class;)Lc/c/a/d/c/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/c/a/a;->i(Lc/c/a/d/c/g;)V

    invoke-static {p1}, Lc/c/a/d/d/i;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lc/c/a/a;->j(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public f(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/c/a/a;->w(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lc/c/a/a;->a()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lc/c/a/d/c/h;->c(Lc/c/a/a;Ljava/lang/Object;)Lc/c/a/d/c/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/c/a/a;->i(Lc/c/a/d/c/g;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lc/c/a/a;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lc/c/a/a;->h()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lc/c/a/a;->h()V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public g()V
    .locals 4

    const-string v0, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name<>\'sqlite_sequence\'"

    invoke-virtual {p0, v0}, Lc/c/a/a;->k(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc/c/a/a;->j(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lc/c/a/d/d/h;->c(Lc/c/a/a;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lc/c/a/h/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lc/c/a/h/b;->a(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_3
    new-instance v2, Lc/c/a/e/b;

    invoke-direct {v2, v1}, Lc/c/a/e/b;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v1

    invoke-static {v0}, Lc/c/a/h/b;->a(Landroid/database/Cursor;)V

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method public i(Lc/c/a/d/c/g;)V
    .locals 2

    invoke-virtual {p1}, Lc/c/a/d/c/g;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/c/a/a;->e(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Lc/c/a/d/c/g;->b()Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lc/c/a/d/c/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lc/c/a/d/c/g;->c()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/c/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lc/c/a/d/c/g;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    new-instance v0, Lc/c/a/e/b;

    invoke-direct {v0, p1}, Lc/c/a/e/b;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lc/c/a/a;->e(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lc/c/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance v0, Lc/c/a/e/b;

    invoke-direct {v0, p1}, Lc/c/a/e/b;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public k(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    invoke-direct {p0, p1}, Lc/c/a/a;->e(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lc/c/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    new-instance v0, Lc/c/a/e/b;

    invoke-direct {v0, p1}, Lc/c/a/e/b;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public l(Lc/c/a/d/c/f;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/c/a/d/c/f;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lc/c/a/d/c/f;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/c/a/a;->w(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lc/c/a/d/c/f;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc/c/a/d/c/b$b;->a()J

    move-result-wide v1

    iget-object v3, p0, Lc/c/a/a;->g:Lc/c/a/a$d;

    invoke-virtual {v3, v1, v2}, Lc/c/a/a$d;->c(J)V

    iget-object v3, p0, Lc/c/a/a;->g:Lc/c/a/a$d;

    invoke-virtual {v3, v0}, Lc/c/a/a$d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    check-cast v3, Ljava/util/List;

    return-object v3

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lc/c/a/a;->k(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_3

    :goto_0
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lc/c/a/d/c/f;->c()Ljava/lang/Class;

    move-result-object v5

    invoke-static {p0, v4, v5, v1, v2}, Lc/c/a/d/c/b;->b(Lc/c/a/a;Landroid/database/Cursor;Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lc/c/a/a;->g:Lc/c/a/a$d;

    invoke-virtual {p1, v0, v3}, Lc/c/a/a$d;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4}, Lc/c/a/h/b;->a(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    new-instance v0, Lc/c/a/e/b;

    invoke-direct {v0, p1}, Lc/c/a/e/b;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v4}, Lc/c/a/h/b;->a(Landroid/database/Cursor;)V

    throw p1

    :cond_3
    :goto_1
    return-object v3
.end method

.method public m(Lc/c/a/d/c/c;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/d/c/c;",
            ")",
            "Ljava/util/List<",
            "Lc/c/a/d/d/c;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lc/c/a/d/c/c;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/c/a/a;->w(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lc/c/a/d/c/c;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/a;->k(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lc/c/a/d/c/b;->a(Landroid/database/Cursor;)Lc/c/a/d/d/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lc/c/a/h/b;->a(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    new-instance v1, Lc/c/a/e/b;

    invoke-direct {v1, v0}, Lc/c/a/e/b;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1}, Lc/c/a/h/b;->a(Landroid/database/Cursor;)V

    throw v0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public n(Lc/c/a/d/c/f;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/c/a/d/c/f;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lc/c/a/d/c/f;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/c/a/a;->w(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lc/c/a/d/c/f;->e(I)Lc/c/a/d/c/f;

    invoke-virtual {p1}, Lc/c/a/d/c/f;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc/c/a/d/c/b$b;->a()J

    move-result-wide v2

    iget-object v4, p0, Lc/c/a/a;->g:Lc/c/a/a$d;

    invoke-virtual {v4, v2, v3}, Lc/c/a/a$d;->c(J)V

    iget-object v4, p0, Lc/c/a/a;->g:Lc/c/a/a$d;

    invoke-virtual {v4, v0}, Lc/c/a/a$d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    return-object v4

    :cond_1
    invoke-virtual {p0, v0}, Lc/c/a/a;->k(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_3

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lc/c/a/d/c/f;->c()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, v4, p1, v2, v3}, Lc/c/a/d/c/b;->b(Lc/c/a/a;Landroid/database/Cursor;Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lc/c/a/a;->g:Lc/c/a/a$d;

    invoke-virtual {v1, v0, p1}, Lc/c/a/a$d;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4}, Lc/c/a/h/b;->a(Landroid/database/Cursor;)V

    return-object p1

    :cond_2
    invoke-static {v4}, Lc/c/a/h/b;->a(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    new-instance v0, Lc/c/a/e/b;

    invoke-direct {v0, p1}, Lc/c/a/e/b;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v4}, Lc/c/a/h/b;->a(Landroid/database/Cursor;)V

    throw p1

    :cond_3
    :goto_0
    return-object v1
.end method

.method public o()Lc/c/a/a$b;
    .locals 1

    iget-object v0, p0, Lc/c/a/a;->b:Lc/c/a/a$b;

    return-object v0
.end method

.method public r(Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lc/c/a/a;->a()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/c/a/a;->d(Ljava/lang/Class;)V

    invoke-static {p0, p1}, Lc/c/a/d/c/h;->d(Lc/c/a/a;Ljava/lang/Object;)Lc/c/a/d/c/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/c/a/a;->i(Lc/c/a/d/c/g;)V

    invoke-direct {p0}, Lc/c/a/a;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lc/c/a/a;->h()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lc/c/a/a;->h()V

    throw p1
.end method

.method public t(Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lc/c/a/a;->a()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/c/a/a;->d(Ljava/lang/Class;)V

    invoke-direct {p0, p1}, Lc/c/a/a;->u(Ljava/lang/Object;)V

    invoke-direct {p0}, Lc/c/a/a;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lc/c/a/a;->h()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lc/c/a/a;->h()V

    throw p1
.end method

.method public w(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lc/c/a/d/d/h;->a(Lc/c/a/a;Ljava/lang/Class;)Lc/c/a/d/d/h;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/d/d/h;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT COUNT(*) AS c FROM sqlite_master WHERE type=\'table\' AND name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lc/c/a/d/d/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/c/a/a;->k(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p1, v1}, Lc/c/a/d/d/h;->d(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lc/c/a/h/b;->a(Landroid/database/Cursor;)V

    return v1

    :cond_1
    invoke-static {v0}, Lc/c/a/h/b;->a(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    new-instance v1, Lc/c/a/e/b;

    invoke-direct {v1, p1}, Lc/c/a/e/b;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v0}, Lc/c/a/h/b;->a(Landroid/database/Cursor;)V

    throw p1

    :cond_2
    :goto_0
    return v2
.end method

.method public x(Ljava/lang/Object;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/c/a/a;->w(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, p1}, Lc/c/a/d/d/h;->a(Lc/c/a/a;Ljava/lang/Class;)Lc/c/a/d/d/h;

    move-result-object p1

    iget-object p1, p1, Lc/c/a/d/d/h;->b:Ljava/lang/String;

    :try_start_0
    invoke-direct {p0}, Lc/c/a/a;->a()V

    iget-object v0, p0, Lc/c/a/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-direct {p0}, Lc/c/a/a;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lc/c/a/a;->h()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lc/c/a/a;->h()V

    throw p1
.end method
