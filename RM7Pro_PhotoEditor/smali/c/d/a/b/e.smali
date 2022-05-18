.class public final Lc/d/a/b/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/e$d;,
        Lc/d/a/b/e$c;,
        Lc/d/a/b/e$b;
    }
.end annotation


# instance fields
.field final a:Landroid/content/res/Resources;

.field final b:I

.field final c:I

.field final d:I

.field final e:I

.field final f:Lc/d/a/b/p/a;

.field final g:Ljava/util/concurrent/Executor;

.field final h:Ljava/util/concurrent/Executor;

.field final i:Z

.field final j:Z

.field final k:I

.field final l:I

.field final m:Lc/d/a/b/j/g;

.field final n:Lc/d/a/a/b/c;

.field final o:Lc/d/a/a/a/a;

.field final p:Lc/d/a/b/m/b;

.field final q:Lc/d/a/b/k/b;

.field final r:Lc/d/a/b/c;

.field final s:Lc/d/a/b/m/b;

.field final t:Lc/d/a/b/m/b;


# direct methods
.method private constructor <init>(Lc/d/a/b/e$b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lc/d/a/b/e$b;->a(Lc/d/a/b/e$b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/e;->a:Landroid/content/res/Resources;

    invoke-static {p1}, Lc/d/a/b/e$b;->b(Lc/d/a/b/e$b;)I

    move-result v0

    iput v0, p0, Lc/d/a/b/e;->b:I

    invoke-static {p1}, Lc/d/a/b/e$b;->l(Lc/d/a/b/e$b;)I

    move-result v0

    iput v0, p0, Lc/d/a/b/e;->c:I

    invoke-static {p1}, Lc/d/a/b/e$b;->m(Lc/d/a/b/e$b;)I

    move-result v0

    iput v0, p0, Lc/d/a/b/e;->d:I

    invoke-static {p1}, Lc/d/a/b/e$b;->n(Lc/d/a/b/e$b;)I

    move-result v0

    iput v0, p0, Lc/d/a/b/e;->e:I

    invoke-static {p1}, Lc/d/a/b/e$b;->o(Lc/d/a/b/e$b;)Lc/d/a/b/p/a;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/e;->f:Lc/d/a/b/p/a;

    invoke-static {p1}, Lc/d/a/b/e$b;->p(Lc/d/a/b/e$b;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/e;->g:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lc/d/a/b/e$b;->q(Lc/d/a/b/e$b;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/e;->h:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Lc/d/a/b/e$b;->r(Lc/d/a/b/e$b;)I

    move-result v0

    iput v0, p0, Lc/d/a/b/e;->k:I

    invoke-static {p1}, Lc/d/a/b/e$b;->s(Lc/d/a/b/e$b;)I

    move-result v0

    iput v0, p0, Lc/d/a/b/e;->l:I

    invoke-static {p1}, Lc/d/a/b/e$b;->c(Lc/d/a/b/e$b;)Lc/d/a/b/j/g;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/e;->m:Lc/d/a/b/j/g;

    invoke-static {p1}, Lc/d/a/b/e$b;->d(Lc/d/a/b/e$b;)Lc/d/a/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/e;->o:Lc/d/a/a/a/a;

    invoke-static {p1}, Lc/d/a/b/e$b;->e(Lc/d/a/b/e$b;)Lc/d/a/a/b/c;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/e;->n:Lc/d/a/a/b/c;

    invoke-static {p1}, Lc/d/a/b/e$b;->f(Lc/d/a/b/e$b;)Lc/d/a/b/c;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/e;->r:Lc/d/a/b/c;

    invoke-static {p1}, Lc/d/a/b/e$b;->g(Lc/d/a/b/e$b;)Lc/d/a/b/m/b;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/e;->p:Lc/d/a/b/m/b;

    invoke-static {p1}, Lc/d/a/b/e$b;->h(Lc/d/a/b/e$b;)Lc/d/a/b/k/b;

    move-result-object v1

    iput-object v1, p0, Lc/d/a/b/e;->q:Lc/d/a/b/k/b;

    invoke-static {p1}, Lc/d/a/b/e$b;->i(Lc/d/a/b/e$b;)Z

    move-result v1

    iput-boolean v1, p0, Lc/d/a/b/e;->i:Z

    invoke-static {p1}, Lc/d/a/b/e$b;->j(Lc/d/a/b/e$b;)Z

    move-result v1

    iput-boolean v1, p0, Lc/d/a/b/e;->j:Z

    new-instance v1, Lc/d/a/b/e$c;

    invoke-direct {v1, v0}, Lc/d/a/b/e$c;-><init>(Lc/d/a/b/m/b;)V

    iput-object v1, p0, Lc/d/a/b/e;->s:Lc/d/a/b/m/b;

    new-instance v1, Lc/d/a/b/e$d;

    invoke-direct {v1, v0}, Lc/d/a/b/e$d;-><init>(Lc/d/a/b/m/b;)V

    iput-object v1, p0, Lc/d/a/b/e;->t:Lc/d/a/b/m/b;

    invoke-static {p1}, Lc/d/a/b/e$b;->k(Lc/d/a/b/e$b;)Z

    move-result p1

    invoke-static {p1}, Lc/d/a/c/c;->g(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lc/d/a/b/e$b;Lc/d/a/b/e$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/d/a/b/e;-><init>(Lc/d/a/b/e$b;)V

    return-void
.end method


# virtual methods
.method a()Lc/d/a/b/j/e;
    .locals 3

    iget-object v0, p0, Lc/d/a/b/e;->a:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, p0, Lc/d/a/b/e;->b:I

    if-gtz v1, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :cond_0
    iget v2, p0, Lc/d/a/b/e;->c:I

    if-gtz v2, :cond_1

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_1
    new-instance v0, Lc/d/a/b/j/e;

    invoke-direct {v0, v1, v2}, Lc/d/a/b/j/e;-><init>(II)V

    return-object v0
.end method
