.class public Lc/d/a/b/e$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final y:Lc/d/a/b/j/g;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Lc/d/a/b/p/a;

.field private g:Ljava/util/concurrent/Executor;

.field private h:Ljava/util/concurrent/Executor;

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:Z

.field private n:Lc/d/a/b/j/g;

.field private o:I

.field private p:J

.field private q:I

.field private r:Lc/d/a/a/b/c;

.field private s:Lc/d/a/a/a/a;

.field private t:Lc/d/a/a/a/c/a;

.field private u:Lc/d/a/b/m/b;

.field private v:Lc/d/a/b/k/b;

.field private w:Lc/d/a/b/c;

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lc/d/a/b/j/g;->a:Lc/d/a/b/j/g;

    sput-object v0, Lc/d/a/b/e$b;->y:Lc/d/a/b/j/g;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/d/a/b/e$b;->b:I

    iput v0, p0, Lc/d/a/b/e$b;->c:I

    iput v0, p0, Lc/d/a/b/e$b;->d:I

    iput v0, p0, Lc/d/a/b/e$b;->e:I

    const/4 v1, 0x0

    iput-object v1, p0, Lc/d/a/b/e$b;->f:Lc/d/a/b/p/a;

    iput-object v1, p0, Lc/d/a/b/e$b;->g:Ljava/util/concurrent/Executor;

    iput-object v1, p0, Lc/d/a/b/e$b;->h:Ljava/util/concurrent/Executor;

    iput-boolean v0, p0, Lc/d/a/b/e$b;->i:Z

    iput-boolean v0, p0, Lc/d/a/b/e$b;->j:Z

    const/4 v2, 0x3

    iput v2, p0, Lc/d/a/b/e$b;->k:I

    iput v2, p0, Lc/d/a/b/e$b;->l:I

    iput-boolean v0, p0, Lc/d/a/b/e$b;->m:Z

    sget-object v2, Lc/d/a/b/e$b;->y:Lc/d/a/b/j/g;

    iput-object v2, p0, Lc/d/a/b/e$b;->n:Lc/d/a/b/j/g;

    iput v0, p0, Lc/d/a/b/e$b;->o:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lc/d/a/b/e$b;->p:J

    iput v0, p0, Lc/d/a/b/e$b;->q:I

    iput-object v1, p0, Lc/d/a/b/e$b;->r:Lc/d/a/a/b/c;

    iput-object v1, p0, Lc/d/a/b/e$b;->s:Lc/d/a/a/a/a;

    iput-object v1, p0, Lc/d/a/b/e$b;->t:Lc/d/a/a/a/c/a;

    iput-object v1, p0, Lc/d/a/b/e$b;->u:Lc/d/a/b/m/b;

    iput-object v1, p0, Lc/d/a/b/e$b;->w:Lc/d/a/b/c;

    iput-boolean v0, p0, Lc/d/a/b/e$b;->x:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/b/e$b;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lc/d/a/b/e$b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lc/d/a/b/e$b;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lc/d/a/b/e$b;)I
    .locals 0

    iget p0, p0, Lc/d/a/b/e$b;->b:I

    return p0
.end method

.method static synthetic c(Lc/d/a/b/e$b;)Lc/d/a/b/j/g;
    .locals 0

    iget-object p0, p0, Lc/d/a/b/e$b;->n:Lc/d/a/b/j/g;

    return-object p0
.end method

.method static synthetic d(Lc/d/a/b/e$b;)Lc/d/a/a/a/a;
    .locals 0

    iget-object p0, p0, Lc/d/a/b/e$b;->s:Lc/d/a/a/a/a;

    return-object p0
.end method

.method static synthetic e(Lc/d/a/b/e$b;)Lc/d/a/a/b/c;
    .locals 0

    iget-object p0, p0, Lc/d/a/b/e$b;->r:Lc/d/a/a/b/c;

    return-object p0
.end method

.method static synthetic f(Lc/d/a/b/e$b;)Lc/d/a/b/c;
    .locals 0

    iget-object p0, p0, Lc/d/a/b/e$b;->w:Lc/d/a/b/c;

    return-object p0
.end method

.method static synthetic g(Lc/d/a/b/e$b;)Lc/d/a/b/m/b;
    .locals 0

    iget-object p0, p0, Lc/d/a/b/e$b;->u:Lc/d/a/b/m/b;

    return-object p0
.end method

.method static synthetic h(Lc/d/a/b/e$b;)Lc/d/a/b/k/b;
    .locals 0

    iget-object p0, p0, Lc/d/a/b/e$b;->v:Lc/d/a/b/k/b;

    return-object p0
.end method

.method static synthetic i(Lc/d/a/b/e$b;)Z
    .locals 0

    iget-boolean p0, p0, Lc/d/a/b/e$b;->i:Z

    return p0
.end method

.method static synthetic j(Lc/d/a/b/e$b;)Z
    .locals 0

    iget-boolean p0, p0, Lc/d/a/b/e$b;->j:Z

    return p0
.end method

.method static synthetic k(Lc/d/a/b/e$b;)Z
    .locals 0

    iget-boolean p0, p0, Lc/d/a/b/e$b;->x:Z

    return p0
.end method

.method static synthetic l(Lc/d/a/b/e$b;)I
    .locals 0

    iget p0, p0, Lc/d/a/b/e$b;->c:I

    return p0
.end method

.method static synthetic m(Lc/d/a/b/e$b;)I
    .locals 0

    iget p0, p0, Lc/d/a/b/e$b;->d:I

    return p0
.end method

.method static synthetic n(Lc/d/a/b/e$b;)I
    .locals 0

    iget p0, p0, Lc/d/a/b/e$b;->e:I

    return p0
.end method

.method static synthetic o(Lc/d/a/b/e$b;)Lc/d/a/b/p/a;
    .locals 0

    iget-object p0, p0, Lc/d/a/b/e$b;->f:Lc/d/a/b/p/a;

    return-object p0
.end method

.method static synthetic p(Lc/d/a/b/e$b;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lc/d/a/b/e$b;->g:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic q(Lc/d/a/b/e$b;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lc/d/a/b/e$b;->h:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic r(Lc/d/a/b/e$b;)I
    .locals 0

    iget p0, p0, Lc/d/a/b/e$b;->k:I

    return p0
.end method

.method static synthetic s(Lc/d/a/b/e$b;)I
    .locals 0

    iget p0, p0, Lc/d/a/b/e$b;->l:I

    return p0
.end method

.method private w()V
    .locals 5

    iget-object v0, p0, Lc/d/a/b/e$b;->g:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lc/d/a/b/e$b;->k:I

    iget v2, p0, Lc/d/a/b/e$b;->l:I

    iget-object v3, p0, Lc/d/a/b/e$b;->n:Lc/d/a/b/j/g;

    invoke-static {v0, v2, v3}, Lc/d/a/b/a;->c(IILc/d/a/b/j/g;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/e$b;->g:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lc/d/a/b/e$b;->i:Z

    :goto_0
    iget-object v0, p0, Lc/d/a/b/e$b;->h:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    iget v0, p0, Lc/d/a/b/e$b;->k:I

    iget v1, p0, Lc/d/a/b/e$b;->l:I

    iget-object v2, p0, Lc/d/a/b/e$b;->n:Lc/d/a/b/j/g;

    invoke-static {v0, v1, v2}, Lc/d/a/b/a;->c(IILc/d/a/b/j/g;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/e$b;->h:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lc/d/a/b/e$b;->j:Z

    :goto_1
    iget-object v0, p0, Lc/d/a/b/e$b;->s:Lc/d/a/a/a/a;

    if-nez v0, :cond_3

    iget-object v0, p0, Lc/d/a/b/e$b;->t:Lc/d/a/a/a/c/a;

    if-nez v0, :cond_2

    invoke-static {}, Lc/d/a/b/a;->d()Lc/d/a/a/a/c/a;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/e$b;->t:Lc/d/a/a/a/c/a;

    :cond_2
    iget-object v0, p0, Lc/d/a/b/e$b;->a:Landroid/content/Context;

    iget-object v1, p0, Lc/d/a/b/e$b;->t:Lc/d/a/a/a/c/a;

    iget-wide v2, p0, Lc/d/a/b/e$b;->p:J

    iget v4, p0, Lc/d/a/b/e$b;->q:I

    invoke-static {v0, v1, v2, v3, v4}, Lc/d/a/b/a;->b(Landroid/content/Context;Lc/d/a/a/a/c/a;JI)Lc/d/a/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/e$b;->s:Lc/d/a/a/a/a;

    :cond_3
    iget-object v0, p0, Lc/d/a/b/e$b;->r:Lc/d/a/a/b/c;

    if-nez v0, :cond_4

    iget-object v0, p0, Lc/d/a/b/e$b;->a:Landroid/content/Context;

    iget v1, p0, Lc/d/a/b/e$b;->o:I

    invoke-static {v0, v1}, Lc/d/a/b/a;->g(Landroid/content/Context;I)Lc/d/a/a/b/c;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/e$b;->r:Lc/d/a/a/b/c;

    :cond_4
    iget-boolean v0, p0, Lc/d/a/b/e$b;->m:Z

    if-eqz v0, :cond_5

    new-instance v0, Lc/d/a/a/b/d/a;

    iget-object v1, p0, Lc/d/a/b/e$b;->r:Lc/d/a/a/b/c;

    invoke-static {}, Lc/d/a/c/d;->a()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc/d/a/a/b/d/a;-><init>(Lc/d/a/a/b/c;Ljava/util/Comparator;)V

    iput-object v0, p0, Lc/d/a/b/e$b;->r:Lc/d/a/a/b/c;

    :cond_5
    iget-object v0, p0, Lc/d/a/b/e$b;->u:Lc/d/a/b/m/b;

    if-nez v0, :cond_6

    iget-object v0, p0, Lc/d/a/b/e$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lc/d/a/b/a;->f(Landroid/content/Context;)Lc/d/a/b/m/b;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/e$b;->u:Lc/d/a/b/m/b;

    :cond_6
    iget-object v0, p0, Lc/d/a/b/e$b;->v:Lc/d/a/b/k/b;

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lc/d/a/b/e$b;->x:Z

    invoke-static {v0}, Lc/d/a/b/a;->e(Z)Lc/d/a/b/k/b;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/e$b;->v:Lc/d/a/b/k/b;

    :cond_7
    iget-object v0, p0, Lc/d/a/b/e$b;->w:Lc/d/a/b/c;

    if-nez v0, :cond_8

    invoke-static {}, Lc/d/a/b/c;->t()Lc/d/a/b/c;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/e$b;->w:Lc/d/a/b/c;

    :cond_8
    return-void
.end method


# virtual methods
.method public t()Lc/d/a/b/e;
    .locals 2

    invoke-direct {p0}, Lc/d/a/b/e$b;->w()V

    new-instance v0, Lc/d/a/b/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc/d/a/b/e;-><init>(Lc/d/a/b/e$b;Lc/d/a/b/e$a;)V

    return-object v0
.end method

.method public u(Lc/d/a/b/c;)Lc/d/a/b/e$b;
    .locals 0

    iput-object p1, p0, Lc/d/a/b/e$b;->w:Lc/d/a/b/c;

    return-object p0
.end method

.method public v(Lc/d/a/a/a/a;)Lc/d/a/b/e$b;
    .locals 4

    iget-wide v0, p0, Lc/d/a/b/e$b;->p:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    iget v0, p0, Lc/d/a/b/e$b;->q:I

    if-lez v0, :cond_1

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

    invoke-static {v2, v0}, Lc/d/a/c/c;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lc/d/a/b/e$b;->t:Lc/d/a/a/a/c/a;

    if-eqz v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "diskCache() and diskCacheFileNameGenerator() calls overlap each other"

    invoke-static {v1, v0}, Lc/d/a/c/c;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iput-object p1, p0, Lc/d/a/b/e$b;->s:Lc/d/a/a/a/a;

    return-object p0
.end method

.method public x(Lc/d/a/a/b/c;)Lc/d/a/b/e$b;
    .locals 2

    iget v0, p0, Lc/d/a/b/e$b;->o:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "memoryCache() and memoryCacheSize() calls overlap each other"

    invoke-static {v1, v0}, Lc/d/a/c/c;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lc/d/a/b/e$b;->r:Lc/d/a/a/b/c;

    return-object p0
.end method

.method public y(I)Lc/d/a/b/e$b;
    .locals 2

    iget-object v0, p0, Lc/d/a/b/e$b;->g:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/e$b;->h:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    invoke-static {v1, v0}, Lc/d/a/c/c;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iput p1, p0, Lc/d/a/b/e$b;->k:I

    return-object p0
.end method
