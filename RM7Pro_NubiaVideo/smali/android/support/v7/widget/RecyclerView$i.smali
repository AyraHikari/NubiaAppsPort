.class public abstract Landroid/support/v7/widget/RecyclerView$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$i$a;,
        Landroid/support/v7/widget/RecyclerView$i$b;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView$i$b;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$i$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->a:Landroid/support/v7/widget/RecyclerView$i$b;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->b:Ljava/util/ArrayList;

    const-wide/16 v0, 0x78

    .line 4
    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView$i;->c:J

    .line 5
    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView$i;->d:J

    const-wide/16 v0, 0xfa

    .line 6
    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView$i;->e:J

    .line 7
    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView$i;->f:J

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$i;->g:Z

    return-void
.end method


# virtual methods
.method public A(Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 0

    return-void
.end method

.method public B(Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 0

    return-void
.end method

.method public C(Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 0

    return-void
.end method

.method public abstract D()V
.end method

.method E(Landroid/support/v7/widget/RecyclerView$i$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$i;->a:Landroid/support/v7/widget/RecyclerView$i$b;

    return-void
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$z;)Z
.end method

.method public abstract b(Landroid/support/v7/widget/RecyclerView$z;Landroid/support/v7/widget/RecyclerView$z;IIII)Z
.end method

.method public abstract c(Landroid/support/v7/widget/RecyclerView$z;IIII)Z
.end method

.method public abstract d(Landroid/support/v7/widget/RecyclerView$z;)Z
.end method

.method public final e(Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->v(Landroid/support/v7/widget/RecyclerView$z;)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->a:Landroid/support/v7/widget/RecyclerView$i$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$i$b;->a(Landroid/support/v7/widget/RecyclerView$z;)V

    :cond_0
    return-void
.end method

.method public final f(Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->w(Landroid/support/v7/widget/RecyclerView$z;)V

    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$i;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$i$a;

    invoke-interface {v2}, Landroid/support/v7/widget/RecyclerView$i$a;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final h(Landroid/support/v7/widget/RecyclerView$z;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$i;->x(Landroid/support/v7/widget/RecyclerView$z;Z)V

    .line 2
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView$i;->a:Landroid/support/v7/widget/RecyclerView$i$b;

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p2, p1}, Landroid/support/v7/widget/RecyclerView$i$b;->b(Landroid/support/v7/widget/RecyclerView$z;)V

    :cond_0
    return-void
.end method

.method public final i(Landroid/support/v7/widget/RecyclerView$z;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$i;->y(Landroid/support/v7/widget/RecyclerView$z;Z)V

    return-void
.end method

.method public final j(Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->z(Landroid/support/v7/widget/RecyclerView$z;)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->a:Landroid/support/v7/widget/RecyclerView$i$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$i$b;->d(Landroid/support/v7/widget/RecyclerView$z;)V

    :cond_0
    return-void
.end method

.method public final k(Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->A(Landroid/support/v7/widget/RecyclerView$z;)V

    return-void
.end method

.method public final l(Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->B(Landroid/support/v7/widget/RecyclerView$z;)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$i;->a:Landroid/support/v7/widget/RecyclerView$i$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$i$b;->c(Landroid/support/v7/widget/RecyclerView$z;)V

    :cond_0
    return-void
.end method

.method public final m(Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$i;->C(Landroid/support/v7/widget/RecyclerView$z;)V

    return-void
.end method

.method public abstract n(Landroid/support/v7/widget/RecyclerView$z;)V
.end method

.method public abstract o()V
.end method

.method public p()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$i;->c:J

    return-wide v0
.end method

.method public q()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$i;->f:J

    return-wide v0
.end method

.method public r()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$i;->e:J

    return-wide v0
.end method

.method public s()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$i;->d:J

    return-wide v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$i;->g:Z

    return v0
.end method

.method public abstract u()Z
.end method

.method public v(Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 0

    return-void
.end method

.method public w(Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 0

    return-void
.end method

.method public x(Landroid/support/v7/widget/RecyclerView$z;Z)V
    .locals 0

    return-void
.end method

.method public y(Landroid/support/v7/widget/RecyclerView$z;Z)V
    .locals 0

    return-void
.end method

.method public z(Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 0

    return-void
.end method
