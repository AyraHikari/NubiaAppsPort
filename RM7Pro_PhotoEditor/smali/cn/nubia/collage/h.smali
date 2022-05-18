.class public Lcn/nubia/collage/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/nubia/collage/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/collage/h$g;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:I

.field private c:[Lcn/nubia/collage/o/b/b;

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Lcn/nubia/collage/o/b/i;

.field private h:Lcn/nubia/collage/o/b/d;

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private k:Lcn/nubia/collage/c;

.field private l:Z

.field private m:Z

.field private n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private o:I

.field private p:Ljava/util/concurrent/Executor;

.field private q:Lcn/nubia/collage/a;

.field private r:Lcn/nubia/collage/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/collage/h;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/collage/h;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcn/nubia/collage/c;->b:Lcn/nubia/collage/c;

    iput-object v0, p0, Lcn/nubia/collage/h;->k:Lcn/nubia/collage/c;

    iput-boolean v1, p0, Lcn/nubia/collage/h;->l:Z

    iput-boolean v1, p0, Lcn/nubia/collage/h;->m:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/collage/h;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/collage/h;->o:I

    iput-object p1, p0, Lcn/nubia/collage/h;->a:Landroid/content/Context;

    iput v1, p0, Lcn/nubia/collage/h;->d:I

    const/4 v0, 0x3

    new-array v2, v0, [Lcn/nubia/collage/o/b/b;

    iput-object v2, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    new-instance v3, Lcn/nubia/collage/o/b/b;

    invoke-direct {v3}, Lcn/nubia/collage/o/b/b;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    new-instance v3, Lcn/nubia/collage/o/b/b;

    invoke-direct {v3}, Lcn/nubia/collage/o/b/b;-><init>()V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v2, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    new-instance v3, Lcn/nubia/collage/o/b/b;

    invoke-direct {v3}, Lcn/nubia/collage/o/b/b;-><init>()V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/collage/h;->p:Ljava/util/concurrent/Executor;

    new-instance v2, Lcn/nubia/collage/a;

    invoke-direct {v2, p1}, Lcn/nubia/collage/a;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/nubia/collage/h;->q:Lcn/nubia/collage/a;

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/collage/h;->q:Lcn/nubia/collage/a;

    invoke-virtual {v3}, Lcn/nubia/collage/a;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/collage/n/f;->F(I)V

    new-instance v2, Lcn/nubia/collage/l;

    invoke-direct {v2, p1}, Lcn/nubia/collage/l;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/nubia/collage/h;->r:Lcn/nubia/collage/l;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/collage/h;->f:Ljava/util/List;

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object p1, p0, Lcn/nubia/collage/h;->f:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic A(Lcn/nubia/collage/h;)V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/collage/h;->I()V

    return-void
.end method

.method static synthetic B(Lcn/nubia/collage/h;)V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/collage/h;->K()V

    return-void
.end method

.method static synthetic C(Lcn/nubia/collage/h;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/h;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic D(Lcn/nubia/collage/h;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/h;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic E(Lcn/nubia/collage/h;)V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/collage/h;->L()V

    return-void
.end method

.method static synthetic F(Lcn/nubia/collage/h;)Lcn/nubia/collage/l;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/h;->r:Lcn/nubia/collage/l;

    return-object p0
.end method

.method static synthetic G(Lcn/nubia/collage/h;Lcn/nubia/collage/l;)Lcn/nubia/collage/l;
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/h;->r:Lcn/nubia/collage/l;

    return-object p1
.end method

.method static synthetic H(Lcn/nubia/collage/h;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/h;->a:Landroid/content/Context;

    return-object p0
.end method

.method private I()V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "thumbnail"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/nubia/collage/h;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".webp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/collage/h;->e:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcn/nubia/collage/h;->f:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v3, v6

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v5, p0, Lcn/nubia/collage/h;->f:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/nubia/collage/h;->e:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v3, p0, Lcn/nubia/collage/h;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v5, v6

    :goto_1
    if-ge v5, v3, :cond_1

    iget-object v7, p0, Lcn/nubia/collage/h;->f:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcn/nubia/collage/h;->e:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v3, p0, Lcn/nubia/collage/h;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_2
    if-ge v6, v3, :cond_2

    iget-object v4, p0, Lcn/nubia/collage/h;->f:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private J(Landroid/content/Context;ILcn/nubia/collage/h$g;)V
    .locals 1

    iget-object p1, p0, Lcn/nubia/collage/h;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcn/nubia/collage/h;->p:Ljava/util/concurrent/Executor;

    new-instance v0, Lcn/nubia/collage/h$e;

    invoke-direct {v0, p0, p2, p3}, Lcn/nubia/collage/h$e;-><init>(Lcn/nubia/collage/h;ILcn/nubia/collage/h$g;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private K()V
    .locals 6

    iget-object v0, p0, Lcn/nubia/collage/h;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcn/nubia/collage/h;->a:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/collage/h;->e:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget v5, p0, Lcn/nubia/collage/h;->b:I

    invoke-static {v3, v4, v5}, Lcn/nubia/collage/m;->f(Landroid/content/Context;Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/collage/o/b/b;->m(Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private L()V
    .locals 3

    iget-object v0, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    iget v1, p0, Lcn/nubia/collage/h;->d:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcn/nubia/collage/o/b/b;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/h;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    iget v1, p0, Lcn/nubia/collage/h;->d:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcn/nubia/collage/h;->a:Landroid/content/Context;

    new-instance v2, Lcn/nubia/collage/h$a;

    invoke-direct {v2, p0}, Lcn/nubia/collage/h$a;-><init>(Lcn/nubia/collage/h;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/collage/o/b/b;->g(Landroid/content/Context;Lcn/nubia/collage/o/b/l$b;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcn/nubia/collage/h;->M(Z)V

    :goto_0
    return-void
.end method

.method private M(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainModeImpl  loadFinished  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoEditor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/nubia/collage/h;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MainModeImpl  loadFinished  return !mResFileGetted"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/collage/n/f;->z()V

    :cond_1
    iget-object v0, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    iget v1, p0, Lcn/nubia/collage/h;->d:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_5

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcn/nubia/collage/o/b/b;->i()Lcn/nubia/collage/o/b/k;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    iget v1, p0, Lcn/nubia/collage/h;->d:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcn/nubia/collage/o/b/b;->i()Lcn/nubia/collage/o/b/k;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/collage/o/b/k;->v()V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    iget v0, p0, Lcn/nubia/collage/h;->d:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcn/nubia/collage/o/b/b;->i()Lcn/nubia/collage/o/b/k;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/collage/o/b/k;->q()V

    :cond_2
    iget p1, p0, Lcn/nubia/collage/h;->o:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    iget v1, p0, Lcn/nubia/collage/h;->d:I

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcn/nubia/collage/o/b/b;->i()Lcn/nubia/collage/o/b/k;

    move-result-object p1

    iget v1, p0, Lcn/nubia/collage/h;->o:I

    invoke-virtual {p1, v1}, Lcn/nubia/collage/o/b/k;->s(I)V

    iput v0, p0, Lcn/nubia/collage/h;->o:I

    :cond_3
    iget-object p1, p0, Lcn/nubia/collage/h;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcn/nubia/collage/h;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcn/nubia/collage/h;->g:Lcn/nubia/collage/o/b/i;

    if-eqz p1, :cond_5

    iget p1, p0, Lcn/nubia/collage/h;->d:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    iget-object v1, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    aget-object p1, v1, p1

    invoke-virtual {p1}, Lcn/nubia/collage/o/b/b;->i()Lcn/nubia/collage/o/b/k;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/collage/h;->k:Lcn/nubia/collage/c;

    invoke-virtual {p1, v1}, Lcn/nubia/collage/o/b/k;->B(Lcn/nubia/collage/c;)V

    :cond_4
    iput-boolean v0, p0, Lcn/nubia/collage/h;->l:Z

    iget-object p1, p0, Lcn/nubia/collage/h;->g:Lcn/nubia/collage/o/b/i;

    invoke-interface {p1}, Lcn/nubia/collage/o/b/i;->b()V

    :cond_5
    return-void
.end method

.method private N()V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/h;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v0

    new-instance v1, Lcn/nubia/collage/h$d;

    invoke-direct {v1, p0}, Lcn/nubia/collage/h$d;-><init>(Lcn/nubia/collage/h;)V

    invoke-virtual {v0, v1}, Lcn/nubia/collage/n/f;->o(Lcn/nubia/collage/n/f$d;)V

    return-void
.end method

.method static synthetic x(Lcn/nubia/collage/h;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/h;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic y(Lcn/nubia/collage/h;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/nubia/collage/h;->M(Z)V

    return-void
.end method

.method static synthetic z(Lcn/nubia/collage/h;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/h;->e:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    iget v1, p0, Lcn/nubia/collage/h;->d:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcn/nubia/collage/o/b/b;->h()I

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcn/nubia/collage/h;->l:Z

    return v0
.end method

.method public c(I)V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/h;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    iget v1, p0, Lcn/nubia/collage/h;->d:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcn/nubia/collage/o/b/b;->l(I)V

    iget-object p1, p0, Lcn/nubia/collage/h;->g:Lcn/nubia/collage/o/b/i;

    invoke-interface {p1}, Lcn/nubia/collage/o/b/i;->a()V

    iget-object p1, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    iget v0, p0, Lcn/nubia/collage/h;->d:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcn/nubia/collage/o/b/b;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/collage/h;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    iget v0, p0, Lcn/nubia/collage/h;->d:I

    aget-object p1, p1, v0

    iget-object v0, p0, Lcn/nubia/collage/h;->a:Landroid/content/Context;

    new-instance v1, Lcn/nubia/collage/h$b;

    invoke-direct {v1, p0}, Lcn/nubia/collage/h$b;-><init>(Lcn/nubia/collage/h;)V

    invoke-virtual {p1, v0, v1}, Lcn/nubia/collage/o/b/b;->g(Landroid/content/Context;Lcn/nubia/collage/o/b/l$b;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcn/nubia/collage/h;->M(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/collage/n/f;->H(ILjava/lang/String;)V

    iput p1, p0, Lcn/nubia/collage/h;->o:I

    return-void
.end method

.method public e(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    iget v1, p0, Lcn/nubia/collage/h;->d:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcn/nubia/collage/o/b/b;->i()Lcn/nubia/collage/o/b/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/collage/o/b/k;->G(ILjava/lang/String;)V

    return-void
.end method

.method public f(I)I
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    iget v1, p0, Lcn/nubia/collage/h;->d:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcn/nubia/collage/o/b/b;->i()Lcn/nubia/collage/o/b/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/collage/o/b/k;->k(I)I

    move-result p1

    return p1
.end method

.method public g(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/nubia/collage/h;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public h()Lcn/nubia/collage/o/b/k;
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    iget v1, p0, Lcn/nubia/collage/h;->d:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcn/nubia/collage/o/b/b;->i()Lcn/nubia/collage/o/b/k;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 2

    sget-object v0, Lcn/nubia/collage/h$f;->a:[I

    iget-object v1, p0, Lcn/nubia/collage/h;->k:Lcn/nubia/collage/c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    sget-object v0, Lcn/nubia/collage/c;->a:Lcn/nubia/collage/c;

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/nubia/collage/c;->d:Lcn/nubia/collage/c;

    goto :goto_0

    :cond_1
    sget-object v0, Lcn/nubia/collage/c;->c:Lcn/nubia/collage/c;

    goto :goto_0

    :cond_2
    sget-object v0, Lcn/nubia/collage/c;->b:Lcn/nubia/collage/c;

    :goto_0
    iput-object v0, p0, Lcn/nubia/collage/h;->k:Lcn/nubia/collage/c;

    iget-object v0, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    iget v1, p0, Lcn/nubia/collage/h;->d:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcn/nubia/collage/o/b/b;->i()Lcn/nubia/collage/o/b/k;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/collage/h;->k:Lcn/nubia/collage/c;

    invoke-virtual {v0, v1}, Lcn/nubia/collage/o/b/k;->B(Lcn/nubia/collage/c;)V

    return-void
.end method

.method public j(I)V
    .locals 2

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/collage/n/f;->t(I)V

    iget-object v0, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    iget v1, p0, Lcn/nubia/collage/h;->d:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcn/nubia/collage/o/b/b;->i()Lcn/nubia/collage/o/b/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/collage/o/b/k;->C(I)V

    return-void
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/collage/n/c;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/collage/n/f;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public l(I)V
    .locals 2

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/collage/n/f;->B(I)V

    iget-object v0, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    iget v1, p0, Lcn/nubia/collage/h;->d:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcn/nubia/collage/o/b/b;->i()Lcn/nubia/collage/o/b/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/collage/o/b/k;->C(I)V

    iget-object v0, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    iget v1, p0, Lcn/nubia/collage/h;->d:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcn/nubia/collage/o/b/b;->i()Lcn/nubia/collage/o/b/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/collage/o/b/k;->s(I)V

    return-void
.end method

.method public m()V
    .locals 3

    iget-object v0, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    iget v1, p0, Lcn/nubia/collage/h;->d:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcn/nubia/collage/o/b/b;->i()Lcn/nubia/collage/o/b/k;

    move-result-object v0

    instance-of v1, v0, Lcn/nubia/collage/o/b/h;

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/collage/h;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/collage/n/f;->J(Landroid/content/ContentResolver;)V

    check-cast v0, Lcn/nubia/collage/o/b/h;

    invoke-virtual {v0}, Lcn/nubia/collage/o/b/h;->L()V

    :cond_0
    return-void
.end method

.method public n()Lcn/nubia/collage/c;
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/h;->k:Lcn/nubia/collage/c;

    return-object v0
.end method

.method public o(Lcn/nubia/collage/k$b;)V
    .locals 3

    const-string v0, "MainModelImpl"

    const-string v1, "save"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/collage/h;->m:Z

    iget-object v0, p0, Lcn/nubia/collage/h;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    iget v2, p0, Lcn/nubia/collage/h;->d:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcn/nubia/collage/o/b/b;->i()Lcn/nubia/collage/o/b/k;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/collage/h;->q:Lcn/nubia/collage/a;

    invoke-virtual {v2}, Lcn/nubia/collage/a;->b()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcn/nubia/collage/k;->e(Landroid/content/Context;Lcn/nubia/collage/o/b/k;ILcn/nubia/collage/k$b;)V

    return-void
.end method

.method public p(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "swapbitmap a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainModelImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/collage/n/f;->L(II)V

    iget-object v0, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    iget v1, p0, Lcn/nubia/collage/h;->d:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcn/nubia/collage/o/b/b;->i()Lcn/nubia/collage/o/b/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/collage/o/b/k;->C(I)V

    iget-object v0, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    iget v1, p0, Lcn/nubia/collage/h;->d:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcn/nubia/collage/o/b/b;->i()Lcn/nubia/collage/o/b/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/collage/o/b/k;->s(I)V

    iget-object p1, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    iget v0, p0, Lcn/nubia/collage/h;->d:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcn/nubia/collage/o/b/b;->i()Lcn/nubia/collage/o/b/k;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/collage/o/b/k;->C(I)V

    iget-object p1, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    iget v0, p0, Lcn/nubia/collage/h;->d:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcn/nubia/collage/o/b/b;->i()Lcn/nubia/collage/o/b/k;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/collage/o/b/k;->s(I)V

    return-void
.end method

.method public pause()V
    .locals 1

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/collage/n/f;->u()V

    iget-boolean v0, p0, Lcn/nubia/collage/h;->m:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/collage/n/f;->w()V

    :cond_0
    return-void
.end method

.method public q(I)V
    .locals 1

    iget v0, p0, Lcn/nubia/collage/h;->d:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcn/nubia/collage/h;->d:I

    iget-object v0, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcn/nubia/collage/o/b/b;->h()I

    move-result p1

    invoke-virtual {p0, p1}, Lcn/nubia/collage/h;->c(I)V

    return-void
.end method

.method public r()V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/h;->c:[Lcn/nubia/collage/o/b/b;

    iget v1, p0, Lcn/nubia/collage/h;->d:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcn/nubia/collage/o/b/b;->i()Lcn/nubia/collage/o/b/k;

    move-result-object v0

    instance-of v1, v0, Lcn/nubia/collage/o/b/h;

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/collage/n/f;->M()V

    check-cast v0, Lcn/nubia/collage/o/b/h;

    invoke-virtual {v0}, Lcn/nubia/collage/o/b/h;->L()V

    :cond_0
    return-void
.end method

.method public s()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/collage/h;->m:Z

    iget-object v1, p0, Lcn/nubia/collage/h;->g:Lcn/nubia/collage/o/b/i;

    invoke-interface {v1}, Lcn/nubia/collage/o/b/i;->a()V

    iput-boolean v0, p0, Lcn/nubia/collage/h;->l:Z

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/collage/n/f;->A()V

    invoke-direct {p0}, Lcn/nubia/collage/h;->N()V

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/collage/h;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/collage/n/f;->p(Landroid/content/res/Resources;)V

    return-void
.end method

.method public t(Lcn/nubia/collage/o/b/d;)V
    .locals 1

    iput-object p1, p0, Lcn/nubia/collage/h;->h:Lcn/nubia/collage/o/b/d;

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/collage/h;->h:Lcn/nubia/collage/o/b/d;

    invoke-virtual {p1, v0}, Lcn/nubia/collage/n/f;->D(Lcn/nubia/collage/o/b/d;)V

    return-void
.end method

.method public u(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcn/nubia/collage/h;->b:I

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/collage/n/f;->I(Ljava/util/List;)V

    iget-object p1, p0, Lcn/nubia/collage/h;->a:Landroid/content/Context;

    iget v0, p0, Lcn/nubia/collage/h;->b:I

    new-instance v1, Lcn/nubia/collage/h$c;

    invoke-direct {v1, p0}, Lcn/nubia/collage/h$c;-><init>(Lcn/nubia/collage/h;)V

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/collage/h;->J(Landroid/content/Context;ILcn/nubia/collage/h$g;)V

    return-void
.end method

.method public v(Lcn/nubia/collage/o/b/i;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/h;->g:Lcn/nubia/collage/o/b/i;

    return-void
.end method

.method public w(II)V
    .locals 1

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/nubia/collage/n/f;->h(II)V

    return-void
.end method
