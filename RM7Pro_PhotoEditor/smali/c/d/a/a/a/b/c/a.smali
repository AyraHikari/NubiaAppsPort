.class final Lc/d/a/a/a/b/c/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/a/a/b/c/a$d;,
        Lc/d/a/a/a/b/c/a$c;,
        Lc/d/a/a/a/b/c/a$e;
    }
.end annotation


# static fields
.field static final q:Ljava/util/regex/Pattern;

.field private static final r:Ljava/io/OutputStream;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:I

.field private f:J

.field private g:I

.field private final h:I

.field private i:J

.field private j:I

.field private k:Ljava/io/Writer;

.field private final l:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lc/d/a/a/a/b/c/a$d;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:J

.field final o:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final p:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[a-z0-9_-]{1,64}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc/d/a/a/a/b/c/a;->q:Ljava/util/regex/Pattern;

    new-instance v0, Lc/d/a/a/a/b/c/a$b;

    invoke-direct {v0}, Lc/d/a/a/a/b/c/a$b;-><init>()V

    sput-object v0, Lc/d/a/a/a/b/c/a;->r:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJI)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lc/d/a/a/a/b/c/a;->i:J

    const/4 v4, 0x0

    iput v4, v0, Lc/d/a/a/a/b/c/a;->j:I

    new-instance v5, Ljava/util/LinkedHashMap;

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v5, v4, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v5, v0, Lc/d/a/a/a/b/c/a;->l:Ljava/util/LinkedHashMap;

    iput-wide v2, v0, Lc/d/a/a/a/b/c/a;->n:J

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, v0, Lc/d/a/a/a/b/c/a;->o:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lc/d/a/a/a/b/c/a$a;

    invoke-direct {v2, p0}, Lc/d/a/a/a/b/c/a$a;-><init>(Lc/d/a/a/a/b/c/a;)V

    iput-object v2, v0, Lc/d/a/a/a/b/c/a;->p:Ljava/util/concurrent/Callable;

    iput-object v1, v0, Lc/d/a/a/a/b/c/a;->a:Ljava/io/File;

    move/from16 v2, p2

    iput v2, v0, Lc/d/a/a/a/b/c/a;->e:I

    new-instance v2, Ljava/io/File;

    const-string v3, "journal"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lc/d/a/a/a/b/c/a;->b:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v3, "journal.tmp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lc/d/a/a/a/b/c/a;->c:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v3, "journal.bkp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lc/d/a/a/a/b/c/a;->d:Ljava/io/File;

    move/from16 v1, p3

    iput v1, v0, Lc/d/a/a/a/b/c/a;->h:I

    move-wide/from16 v1, p4

    iput-wide v1, v0, Lc/d/a/a/a/b/c/a;->f:J

    move/from16 v1, p6

    iput v1, v0, Lc/d/a/a/a/b/c/a;->g:I

    return-void
.end method

.method private A()V
    .locals 4

    :goto_0
    iget-wide v0, p0, Lc/d/a/a/a/b/c/a;->i:J

    iget-wide v2, p0, Lc/d/a/a/a/b/c/a;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lc/d/a/a/a/b/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lc/d/a/a/a/b/c/a;->x(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private B(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lc/d/a/a/a/b/c/a;->q:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must match regex [a-z0-9_-]{1,64}: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lc/d/a/a/a/b/c/a;)Ljava/io/Writer;
    .locals 0

    iget-object p0, p0, Lc/d/a/a/a/b/c/a;->k:Ljava/io/Writer;

    return-object p0
.end method

.method static synthetic b(Lc/d/a/a/a/b/c/a;)V
    .locals 0

    invoke-direct {p0}, Lc/d/a/a/a/b/c/a;->A()V

    return-void
.end method

.method static synthetic c(Lc/d/a/a/a/b/c/a;)I
    .locals 0

    iget p0, p0, Lc/d/a/a/a/b/c/a;->h:I

    return p0
.end method

.method static synthetic d(Lc/d/a/a/a/b/c/a;)V
    .locals 0

    invoke-direct {p0}, Lc/d/a/a/a/b/c/a;->z()V

    return-void
.end method

.method static synthetic e(Lc/d/a/a/a/b/c/a;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lc/d/a/a/a/b/c/a;->a:Ljava/io/File;

    return-object p0
.end method

.method static synthetic f()Ljava/io/OutputStream;
    .locals 1

    sget-object v0, Lc/d/a/a/a/b/c/a;->r:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic g(Lc/d/a/a/a/b/c/a;Lc/d/a/a/a/b/c/a$c;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc/d/a/a/a/b/c/a;->l(Lc/d/a/a/a/b/c/a$c;Z)V

    return-void
.end method

.method static synthetic h(Lc/d/a/a/a/b/c/a;)Z
    .locals 0

    invoke-direct {p0}, Lc/d/a/a/a/b/c/a;->r()Z

    move-result p0

    return p0
.end method

.method static synthetic i(Lc/d/a/a/a/b/c/a;)V
    .locals 0

    invoke-direct {p0}, Lc/d/a/a/a/b/c/a;->w()V

    return-void
.end method

.method static synthetic j(Lc/d/a/a/a/b/c/a;I)I
    .locals 0

    iput p1, p0, Lc/d/a/a/a/b/c/a;->m:I

    return p1
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lc/d/a/a/a/b/c/a;->k:Ljava/io/Writer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized l(Lc/d/a/a/a/b/c/a$c;Z)V
    .locals 10

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lc/d/a/a/a/b/c/a$c;->b(Lc/d/a/a/a/b/c/a$c;)Lc/d/a/a/a/b/c/a$d;

    move-result-object v0

    invoke-static {v0}, Lc/d/a/a/a/b/c/a$d;->g(Lc/d/a/a/a/b/c/a$d;)Lc/d/a/a/a/b/c/a$c;

    move-result-object v1

    if-ne v1, p1, :cond_a

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-static {v0}, Lc/d/a/a/a/b/c/a$d;->e(Lc/d/a/a/a/b/c/a$d;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    :goto_0
    iget v3, p0, Lc/d/a/a/a/b/c/a;->h:I

    if-ge v2, v3, :cond_2

    invoke-static {p1}, Lc/d/a/a/a/b/c/a$c;->c(Lc/d/a/a/a/b/c/a$c;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Lc/d/a/a/a/b/c/a$d;->k(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lc/d/a/a/a/b/c/a$c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lc/d/a/a/a/b/c/a$c;->a()V

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    iget p1, p0, Lc/d/a/a/a/b/c/a;->h:I

    const/4 v2, 0x1

    if-ge v1, p1, :cond_5

    invoke-virtual {v0, v1}, Lc/d/a/a/a/b/c/a$d;->k(I)Ljava/io/File;

    move-result-object p1

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v1}, Lc/d/a/a/a/b/c/a$d;->j(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {v0}, Lc/d/a/a/a/b/c/a$d;->a(Lc/d/a/a/a/b/c/a$d;)[J

    move-result-object p1

    aget-wide v4, p1, v1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v0}, Lc/d/a/a/a/b/c/a$d;->a(Lc/d/a/a/a/b/c/a$d;)[J

    move-result-object p1

    aput-wide v6, p1, v1

    iget-wide v8, p0, Lc/d/a/a/a/b/c/a;->i:J

    sub-long/2addr v8, v4

    add-long/2addr v8, v6

    iput-wide v8, p0, Lc/d/a/a/a/b/c/a;->i:J

    iget p1, p0, Lc/d/a/a/a/b/c/a;->j:I

    add-int/2addr p1, v2

    iput p1, p0, Lc/d/a/a/a/b/c/a;->j:I

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lc/d/a/a/a/b/c/a;->n(Ljava/io/File;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget p1, p0, Lc/d/a/a/a/b/c/a;->m:I

    add-int/2addr p1, v2

    iput p1, p0, Lc/d/a/a/a/b/c/a;->m:I

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lc/d/a/a/a/b/c/a$d;->h(Lc/d/a/a/a/b/c/a$d;Lc/d/a/a/a/b/c/a$c;)Lc/d/a/a/a/b/c/a$c;

    invoke-static {v0}, Lc/d/a/a/a/b/c/a$d;->e(Lc/d/a/a/a/b/c/a$d;)Z

    move-result p1

    or-int/2addr p1, p2

    const/16 v1, 0xa

    if-eqz p1, :cond_6

    invoke-static {v0, v2}, Lc/d/a/a/a/b/c/a$d;->f(Lc/d/a/a/a/b/c/a$d;Z)Z

    iget-object p1, p0, Lc/d/a/a/a/b/c/a;->k:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLEAN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lc/d/a/a/a/b/c/a$d;->b(Lc/d/a/a/a/b/c/a$d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lc/d/a/a/a/b/c/a$d;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_7

    iget-wide p1, p0, Lc/d/a/a/a/b/c/a;->n:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lc/d/a/a/a/b/c/a;->n:J

    invoke-static {v0, p1, p2}, Lc/d/a/a/a/b/c/a$d;->d(Lc/d/a/a/a/b/c/a$d;J)J

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lc/d/a/a/a/b/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lc/d/a/a/a/b/c/a$d;->b(Lc/d/a/a/a/b/c/a$d;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lc/d/a/a/a/b/c/a;->k:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REMOVE "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lc/d/a/a/a/b/c/a$d;->b(Lc/d/a/a/a/b/c/a$d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_7
    :goto_3
    iget-object p1, p0, Lc/d/a/a/a/b/c/a;->k:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    iget-wide p1, p0, Lc/d/a/a/a/b/c/a;->i:J

    iget-wide v0, p0, Lc/d/a/a/a/b/c/a;->f:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_8

    iget p1, p0, Lc/d/a/a/a/b/c/a;->j:I

    iget p2, p0, Lc/d/a/a/a/b/c/a;->g:I

    if-gt p1, p2, :cond_8

    invoke-direct {p0}, Lc/d/a/a/a/b/c/a;->r()Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    iget-object p1, p0, Lc/d/a/a/a/b/c/a;->o:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lc/d/a/a/a/b/c/a;->p:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    monitor-exit p0

    return-void

    :cond_a
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static n(Ljava/io/File;)V
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized p(Ljava/lang/String;J)Lc/d/a/a/a/b/c/a$c;
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lc/d/a/a/a/b/c/a;->k()V

    invoke-direct {p0, p1}, Lc/d/a/a/a/b/c/a;->B(Ljava/lang/String;)V

    iget-object v0, p0, Lc/d/a/a/a/b/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/a/a/b/c/a$d;

    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lc/d/a/a/a/b/c/a$d;->c(Lc/d/a/a/a/b/c/a$d;)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p2, v3, p2

    if-eqz p2, :cond_1

    :cond_0
    monitor-exit p0

    return-object v2

    :cond_1
    if-nez v0, :cond_2

    :try_start_1
    new-instance v0, Lc/d/a/a/a/b/c/a$d;

    invoke-direct {v0, p0, p1, v2}, Lc/d/a/a/a/b/c/a$d;-><init>(Lc/d/a/a/a/b/c/a;Ljava/lang/String;Lc/d/a/a/a/b/c/a$a;)V

    iget-object p2, p0, Lc/d/a/a/a/b/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lc/d/a/a/a/b/c/a$d;->g(Lc/d/a/a/a/b/c/a$d;)Lc/d/a/a/a/b/c/a$c;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    monitor-exit p0

    return-object v2

    :cond_3
    :goto_0
    :try_start_2
    new-instance p2, Lc/d/a/a/a/b/c/a$c;

    invoke-direct {p2, p0, v0, v2}, Lc/d/a/a/a/b/c/a$c;-><init>(Lc/d/a/a/a/b/c/a;Lc/d/a/a/a/b/c/a$d;Lc/d/a/a/a/b/c/a$a;)V

    invoke-static {v0, p2}, Lc/d/a/a/a/b/c/a$d;->h(Lc/d/a/a/a/b/c/a$d;Lc/d/a/a/a/b/c/a$c;)Lc/d/a/a/a/b/c/a$c;

    iget-object p3, p0, Lc/d/a/a/a/b/c/a;->k:Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DIRTY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lc/d/a/a/a/b/c/a;->k:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private r()Z
    .locals 2

    iget v0, p0, Lc/d/a/a/a/b/c/a;->m:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lc/d/a/a/a/b/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static s(Ljava/io/File;IIJI)Lc/d/a/a/a/b/c/a;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_5

    if-lez p5, :cond_4

    if-lez p2, :cond_3

    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc/d/a/a/a/b/c/a;->y(Ljava/io/File;Ljava/io/File;Z)V

    :cond_1
    :goto_0
    new-instance v0, Lc/d/a/a/a/b/c/a;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    move v9, p5

    invoke-direct/range {v3 .. v9}, Lc/d/a/a/a/b/c/a;-><init>(Ljava/io/File;IIJI)V

    iget-object v1, v0, Lc/d/a/a/a/b/c/a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-direct {v0}, Lc/d/a/a/a/b/c/a;->u()V

    invoke-direct {v0}, Lc/d/a/a/a/b/c/a;->t()V

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lc/d/a/a/a/b/c/a;->b:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lc/d/a/a/a/b/c/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lc/d/a/a/a/b/c/a;->k:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", removing"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lc/d/a/a/a/b/c/a;->m()V

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Lc/d/a/a/a/b/c/a;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    move v9, p5

    invoke-direct/range {v3 .. v9}, Lc/d/a/a/a/b/c/a;-><init>(Ljava/io/File;IIJI)V

    invoke-direct {v0}, Lc/d/a/a/a/b/c/a;->w()V

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxFileCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private t()V
    .locals 8

    iget-object v0, p0, Lc/d/a/a/a/b/c/a;->c:Ljava/io/File;

    invoke-static {v0}, Lc/d/a/a/a/b/c/a;->n(Ljava/io/File;)V

    iget-object v0, p0, Lc/d/a/a/a/b/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/a/a/b/c/a$d;

    invoke-static {v1}, Lc/d/a/a/a/b/c/a$d;->g(Lc/d/a/a/a/b/c/a$d;)Lc/d/a/a/a/b/c/a$c;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    :goto_1
    iget v2, p0, Lc/d/a/a/a/b/c/a;->h:I

    if-ge v3, v2, :cond_0

    iget-wide v4, p0, Lc/d/a/a/a/b/c/a;->i:J

    invoke-static {v1}, Lc/d/a/a/a/b/c/a$d;->a(Lc/d/a/a/a/b/c/a$d;)[J

    move-result-object v2

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lc/d/a/a/a/b/c/a;->i:J

    iget v2, p0, Lc/d/a/a/a/b/c/a;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lc/d/a/a/a/b/c/a;->j:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lc/d/a/a/a/b/c/a$d;->h(Lc/d/a/a/a/b/c/a$d;Lc/d/a/a/a/b/c/a$c;)Lc/d/a/a/a/b/c/a$c;

    :goto_2
    iget v2, p0, Lc/d/a/a/a/b/c/a;->h:I

    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Lc/d/a/a/a/b/c/a$d;->j(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lc/d/a/a/a/b/c/a;->n(Ljava/io/File;)V

    invoke-virtual {v1, v3}, Lc/d/a/a/a/b/c/a$d;->k(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lc/d/a/a/a/b/c/a;->n(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private u()V
    .locals 9

    const-string v0, ", "

    new-instance v1, Lc/d/a/a/a/b/c/c;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lc/d/a/a/a/b/c/a;->b:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lc/d/a/a/a/b/c/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Lc/d/a/a/a/b/c/c;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    :try_start_0
    invoke-virtual {v1}, Lc/d/a/a/a/b/c/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lc/d/a/a/a/b/c/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lc/d/a/a/a/b/c/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lc/d/a/a/a/b/c/c;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lc/d/a/a/a/b/c/c;->c()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lc/d/a/a/a/b/c/a;->e:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lc/d/a/a/a/b/c/a;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lc/d/a/a/a/b/c/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lc/d/a/a/a/b/c/a;->v(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :try_start_2
    iget-object v2, p0, Lc/d/a/a/a/b/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lc/d/a/a/a/b/c/a;->m:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Lc/d/a/a/a/b/c/d;->a(Ljava/io/Closeable;)V

    return-void

    :cond_0
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal header: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lc/d/a/a/a/b/c/d;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method private v(Ljava/lang/String;)V
    .locals 8

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    if-ne v1, v5, :cond_1

    const-string v5, "REMOVE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object p1, p0, Lc/d/a/a/a/b/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_1
    iget-object v5, p0, Lc/d/a/a/a/b/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/d/a/a/a/b/c/a$d;

    const/4 v6, 0x0

    if-nez v5, :cond_2

    new-instance v5, Lc/d/a/a/a/b/c/a$d;

    invoke-direct {v5, p0, v4, v6}, Lc/d/a/a/a/b/c/a$d;-><init>(Lc/d/a/a/a/b/c/a;Ljava/lang/String;Lc/d/a/a/a/b/c/a$a;)V

    iget-object v7, p0, Lc/d/a/a/a/b/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v4, 0x5

    if-eq v0, v3, :cond_3

    if-ne v1, v4, :cond_3

    const-string v7, "CLEAN"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, v1}, Lc/d/a/a/a/b/c/a$d;->f(Lc/d/a/a/a/b/c/a$d;Z)Z

    invoke-static {v5, v6}, Lc/d/a/a/a/b/c/a$d;->h(Lc/d/a/a/a/b/c/a$d;Lc/d/a/a/a/b/c/a$c;)Lc/d/a/a/a/b/c/a$c;

    invoke-static {v5, p1}, Lc/d/a/a/a/b/c/a$d;->i(Lc/d/a/a/a/b/c/a$d;[Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    if-ne v1, v4, :cond_4

    const-string v4, "DIRTY"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance p1, Lc/d/a/a/a/b/c/a$c;

    invoke-direct {p1, p0, v5, v6}, Lc/d/a/a/a/b/c/a$c;-><init>(Lc/d/a/a/a/b/c/a;Lc/d/a/a/a/b/c/a$d;Lc/d/a/a/a/b/c/a$a;)V

    invoke-static {v5, p1}, Lc/d/a/a/a/b/c/a$d;->h(Lc/d/a/a/a/b/c/a$d;Lc/d/a/a/a/b/c/a$c;)Lc/d/a/a/a/b/c/a$c;

    goto :goto_0

    :cond_4
    if-ne v0, v3, :cond_5

    const/4 v0, 0x4

    if-ne v1, v0, :cond_5

    const-string v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_0
    return-void

    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized w()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/d/a/a/a/b/c/a;->k:Ljava/io/Writer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lc/d/a/a/a/b/c/a;->c:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lc/d/a/a/a/b/c/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v1, p0, Lc/d/a/a/a/b/c/a;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v1, p0, Lc/d/a/a/a/b/c/a;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lc/d/a/a/a/b/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/a/a/b/c/a$d;

    invoke-static {v2}, Lc/d/a/a/a/b/c/a$d;->g(Lc/d/a/a/a/b/c/a$d;)Lc/d/a/a/a/b/c/a$c;

    move-result-object v3

    const/16 v4, 0xa

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIRTY "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lc/d/a/a/a/b/c/a$d;->b(Lc/d/a/a/a/b/c/a$d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLEAN "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lc/d/a/a/a/b/c/a$d;->b(Lc/d/a/a/a/b/c/a$d;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lc/d/a/a/a/b/c/a$d;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    iget-object v0, p0, Lc/d/a/a/a/b/c/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/d/a/a/a/b/c/a;->b:Ljava/io/File;

    iget-object v2, p0, Lc/d/a/a/a/b/c/a;->d:Ljava/io/File;

    invoke-static {v0, v2, v1}, Lc/d/a/a/a/b/c/a;->y(Ljava/io/File;Ljava/io/File;Z)V

    :cond_3
    iget-object v0, p0, Lc/d/a/a/a/b/c/a;->c:Ljava/io/File;

    iget-object v2, p0, Lc/d/a/a/a/b/c/a;->b:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lc/d/a/a/a/b/c/a;->y(Ljava/io/File;Ljava/io/File;Z)V

    iget-object v0, p0, Lc/d/a/a/a/b/c/a;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lc/d/a/a/a/b/c/a;->b:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v1, Lc/d/a/a/a/b/c/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lc/d/a/a/a/b/c/a;->k:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static y(Ljava/io/File;Ljava/io/File;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lc/d/a/a/a/b/c/a;->n(Ljava/io/File;)V

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method private z()V
    .locals 2

    :goto_0
    iget v0, p0, Lc/d/a/a/a/b/c/a;->j:I

    iget v1, p0, Lc/d/a/a/a/b/c/a;->g:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lc/d/a/a/a/b/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lc/d/a/a/a/b/c/a;->x(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/d/a/a/a/b/c/a;->k:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lc/d/a/a/a/b/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/a/a/b/c/a$d;

    invoke-static {v1}, Lc/d/a/a/a/b/c/a$d;->g(Lc/d/a/a/a/b/c/a$d;)Lc/d/a/a/a/b/c/a$c;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lc/d/a/a/a/b/c/a$d;->g(Lc/d/a/a/a/b/c/a$d;)Lc/d/a/a/a/b/c/a$c;

    move-result-object v1

    invoke-virtual {v1}, Lc/d/a/a/a/b/c/a$c;->a()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lc/d/a/a/a/b/c/a;->A()V

    invoke-direct {p0}, Lc/d/a/a/a/b/c/a;->z()V

    iget-object v0, p0, Lc/d/a/a/a/b/c/a;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/d/a/a/a/b/c/a;->k:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public m()V
    .locals 1

    invoke-virtual {p0}, Lc/d/a/a/a/b/c/a;->close()V

    iget-object v0, p0, Lc/d/a/a/a/b/c/a;->a:Ljava/io/File;

    invoke-static {v0}, Lc/d/a/a/a/b/c/d;->b(Ljava/io/File;)V

    return-void
.end method

.method public o(Ljava/lang/String;)Lc/d/a/a/a/b/c/a$c;
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lc/d/a/a/a/b/c/a;->p(Ljava/lang/String;J)Lc/d/a/a/a/b/c/a$c;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized q(Ljava/lang/String;)Lc/d/a/a/a/b/c/a$e;
    .locals 12

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lc/d/a/a/a/b/c/a;->k()V

    invoke-direct {p0, p1}, Lc/d/a/a/a/b/c/a;->B(Ljava/lang/String;)V

    iget-object v0, p0, Lc/d/a/a/a/b/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/a/a/b/c/a$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {v0}, Lc/d/a/a/a/b/c/a$d;->e(Lc/d/a/a/a/b/c/a$d;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    iget v2, p0, Lc/d/a/a/a/b/c/a;->h:I

    new-array v8, v2, [Ljava/io/File;

    new-array v9, v2, [Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_3
    iget v4, p0, Lc/d/a/a/a/b/c/a;->h:I

    if-ge v3, v4, :cond_2

    invoke-virtual {v0, v3}, Lc/d/a/a/a/b/c/a$d;->j(I)Ljava/io/File;

    move-result-object v4

    aput-object v4, v8, v3

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v5, v9, v3
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :try_start_4
    iget v1, p0, Lc/d/a/a/a/b/c/a;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc/d/a/a/a/b/c/a;->m:I

    iget-object v1, p0, Lc/d/a/a/a/b/c/a;->k:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "READ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-direct {p0}, Lc/d/a/a/a/b/c/a;->r()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lc/d/a/a/a/b/c/a;->o:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lc/d/a/a/a/b/c/a;->p:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_3
    new-instance v1, Lc/d/a/a/a/b/c/a$e;

    invoke-static {v0}, Lc/d/a/a/a/b/c/a$d;->c(Lc/d/a/a/a/b/c/a$d;)J

    move-result-wide v6

    invoke-static {v0}, Lc/d/a/a/a/b/c/a$d;->a(Lc/d/a/a/a/b/c/a$d;)[J

    move-result-object v10

    const/4 v11, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v11}, Lc/d/a/a/a/b/c/a$e;-><init>(Lc/d/a/a/a/b/c/a;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[JLc/d/a/a/a/b/c/a$a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v1

    :catch_0
    :goto_1
    :try_start_5
    iget p1, p0, Lc/d/a/a/a/b/c/a;->h:I

    if-ge v2, p1, :cond_4

    aget-object p1, v9, v2

    if-eqz p1, :cond_4

    aget-object p1, v9, v2

    invoke-static {p1}, Lc/d/a/a/a/b/c/d;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized x(Ljava/lang/String;)Z
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lc/d/a/a/a/b/c/a;->k()V

    invoke-direct {p0, p1}, Lc/d/a/a/a/b/c/a;->B(Ljava/lang/String;)V

    iget-object v0, p0, Lc/d/a/a/a/b/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/a/a/b/c/a$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lc/d/a/a/a/b/c/a$d;->g(Lc/d/a/a/a/b/c/a$d;)Lc/d/a/a/a/b/c/a$c;

    move-result-object v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget v2, p0, Lc/d/a/a/a/b/c/a;->h:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Lc/d/a/a/a/b/c/a$d;->j(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    iget-wide v4, p0, Lc/d/a/a/a/b/c/a;->i:J

    invoke-static {v0}, Lc/d/a/a/a/b/c/a$d;->a(Lc/d/a/a/a/b/c/a$d;)[J

    move-result-object v2

    aget-wide v6, v2, v1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lc/d/a/a/a/b/c/a;->i:J

    iget v2, p0, Lc/d/a/a/a/b/c/a;->j:I

    sub-int/2addr v2, v3

    iput v2, p0, Lc/d/a/a/a/b/c/a;->j:I

    invoke-static {v0}, Lc/d/a/a/a/b/c/a$d;->a(Lc/d/a/a/a/b/c/a$d;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lc/d/a/a/a/b/c/a;->m:I

    add-int/2addr v0, v3

    iput v0, p0, Lc/d/a/a/a/b/c/a;->m:I

    iget-object v0, p0, Lc/d/a/a/a/b/c/a;->k:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REMOVE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lc/d/a/a/a/b/c/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lc/d/a/a/a/b/c/a;->r()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lc/d/a/a/a/b/c/a;->o:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lc/d/a/a/a/b/c/a;->p:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return v3

    :cond_5
    :goto_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
