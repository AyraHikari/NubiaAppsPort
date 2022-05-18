.class Lcn/nubia/collage/n/j;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/d/a/b/j/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcn/nubia/collage/n/g;

.field private d:Lcn/nubia/collage/n/e;

.field private e:I

.field private f:Ljava/util/Timer;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/collage/n/j;->e:I

    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/collage/n/j;->f:Ljava/util/Timer;

    return-void
.end method

.method static synthetic a(Lcn/nubia/collage/n/j;)I
    .locals 1

    iget v0, p0, Lcn/nubia/collage/n/j;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/collage/n/j;->e:I

    return v0
.end method

.method static synthetic b(Lcn/nubia/collage/n/j;)Lcn/nubia/collage/n/e;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/n/j;->d:Lcn/nubia/collage/n/e;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/collage/n/j;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/n/j;->f:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/collage/n/j;)V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/collage/n/j;->f()V

    return-void
.end method

.method private f()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcn/nubia/collage/n/j;->c:Lcn/nubia/collage/n/g;

    invoke-virtual {v2}, Lcn/nubia/collage/n/g;->b()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Lcn/nubia/collage/n/a;->l()Lcn/nubia/collage/n/a;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcn/nubia/collage/n/a;->k(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcn/nubia/collage/n/j;->c:Lcn/nubia/collage/n/g;

    invoke-virtual {v4}, Lcn/nubia/collage/n/g;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Lcn/nubia/collage/n/g;

    iget-object v3, p0, Lcn/nubia/collage/n/j;->d:Lcn/nubia/collage/n/e;

    invoke-direct {v2, v0, v1, v3}, Lcn/nubia/collage/n/g;-><init>(Ljava/util/List;Ljava/util/List;Lcn/nubia/collage/n/e;)V

    iput-object v2, p0, Lcn/nubia/collage/n/j;->c:Lcn/nubia/collage/n/g;

    invoke-static {}, Lcn/nubia/collage/n/a;->l()Lcn/nubia/collage/n/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/collage/n/j;->c:Lcn/nubia/collage/n/g;

    invoke-virtual {v0, v1}, Lcn/nubia/collage/n/a;->p(Lcn/nubia/collage/n/g;)V

    return-void
.end method


# virtual methods
.method e()V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/n/j;->f:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/collage/n/j;->f:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method g(Ljava/util/List;Ljava/util/List;Lcn/nubia/collage/n/e;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lc/d/a/b/j/e;",
            ">;",
            "Lcn/nubia/collage/n/e;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcn/nubia/collage/n/j;->a:Ljava/util/List;

    iput-object p2, p0, Lcn/nubia/collage/n/j;->b:Ljava/util/List;

    iput-object p3, p0, Lcn/nubia/collage/n/j;->d:Lcn/nubia/collage/n/e;

    new-instance v0, Lcn/nubia/collage/n/g;

    invoke-direct {v0, p1, p2, p3}, Lcn/nubia/collage/n/g;-><init>(Ljava/util/List;Ljava/util/List;Lcn/nubia/collage/n/e;)V

    iput-object v0, p0, Lcn/nubia/collage/n/j;->c:Lcn/nubia/collage/n/g;

    iget-object v1, p0, Lcn/nubia/collage/n/j;->f:Ljava/util/Timer;

    new-instance v2, Lcn/nubia/collage/n/j$a;

    invoke-direct {v2, p0}, Lcn/nubia/collage/n/j$a;-><init>(Lcn/nubia/collage/n/j;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x2710

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
