.class public abstract Landroid/support/v7/widget/RecyclerView$e;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$e$c;,
        Landroid/support/v7/widget/RecyclerView$e$a;,
        Landroid/support/v7/widget/RecyclerView$e$b;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView$e$b;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$e$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    const-wide/16 v2, 0x78

    .line 12102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12158
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView$e$b;

    .line 12159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->b:Ljava/util/ArrayList;

    .line 12162
    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$e;->c:J

    .line 12163
    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$e;->d:J

    .line 12164
    iput-wide v4, p0, Landroid/support/v7/widget/RecyclerView$e;->e:J

    .line 12165
    iput-wide v4, p0, Landroid/support/v7/widget/RecyclerView$e;->f:J

    .line 12769
    return-void
.end method

.method static e(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 12487
    invoke-static {p0}, Landroid/support/v7/widget/RecyclerView$u;->access$1600(Landroid/support/v7/widget/RecyclerView$u;)I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    .line 12488
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12489
    const/4 v0, 0x4

    .line 12498
    :cond_0
    :goto_0
    return v0

    .line 12491
    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_0

    .line 12492
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->getOldPosition()I

    move-result v1

    .line 12493
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->getAdapterPosition()I

    move-result v2

    .line 12494
    if-eq v1, v3, :cond_0

    if-eq v2, v3, :cond_0

    if-eq v1, v2, :cond_0

    .line 12495
    or-int/lit16 v0, v0, 0x800

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$u;)Landroid/support/v7/widget/RecyclerView$e$c;
    .locals 1

    .prologue
    .line 12316
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$e;->j()Landroid/support/v7/widget/RecyclerView$e$c;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView$e$c;->a(Landroid/support/v7/widget/RecyclerView$u;)Landroid/support/v7/widget/RecyclerView$e$c;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$r;Landroid/support/v7/widget/RecyclerView$u;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$e$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$r;",
            "Landroid/support/v7/widget/RecyclerView$u;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/support/v7/widget/RecyclerView$e$c;"
        }
    .end annotation

    .prologue
    .line 12287
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$e;->j()Landroid/support/v7/widget/RecyclerView$e$c;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView$e$c;->a(Landroid/support/v7/widget/RecyclerView$u;)Landroid/support/v7/widget/RecyclerView$e$c;

    move-result-object v0

    return-object v0
.end method

.method public abstract a()V
.end method

.method a(Landroid/support/v7/widget/RecyclerView$e$b;)V
    .locals 0

    .prologue
    .line 12248
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView$e$b;

    .line 12249
    return-void
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$e$c;Landroid/support/v7/widget/RecyclerView$e$c;)Z
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$e$c;Landroid/support/v7/widget/RecyclerView$e$c;)Z
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$u;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$u;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 12706
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$e;->h(Landroid/support/v7/widget/RecyclerView$u;)Z

    move-result v0

    return v0
.end method

.method public abstract b()Z
.end method

.method public abstract b(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$e$c;Landroid/support/v7/widget/RecyclerView$e$c;)Z
.end method

.method public abstract c(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$e$c;Landroid/support/v7/widget/RecyclerView$e$c;)Z
.end method

.method public abstract d()V
.end method

.method public abstract d(Landroid/support/v7/widget/RecyclerView$u;)V
.end method

.method public e()J
    .locals 2

    .prologue
    .line 12173
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$e;->e:J

    return-wide v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 12191
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$e;->c:J

    return-wide v0
.end method

.method public final f(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 1

    .prologue
    .line 12571
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$e;->g(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 12572
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView$e$b;

    if-eqz v0, :cond_0

    .line 12573
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->a:Landroid/support/v7/widget/RecyclerView$e$b;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$e$b;->a(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 12575
    :cond_0
    return-void
.end method

.method public g()J
    .locals 2

    .prologue
    .line 12209
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$e;->d:J

    return-wide v0
.end method

.method public g(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    .prologue
    .line 12586
    return-void
.end method

.method public h()J
    .locals 2

    .prologue
    .line 12227
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$e;->f:J

    return-wide v0
.end method

.method public h(Landroid/support/v7/widget/RecyclerView$u;)Z
    .locals 1

    .prologue
    .line 12676
    const/4 v0, 0x1

    return v0
.end method

.method public final i()V
    .locals 3

    .prologue
    .line 12714
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 12715
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 12716
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$e$a;

    invoke-interface {v0}, Landroid/support/v7/widget/RecyclerView$e$a;->a()V

    .line 12715
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 12718
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12719
    return-void
.end method

.method public j()Landroid/support/v7/widget/RecyclerView$e$c;
    .locals 1

    .prologue
    .line 12731
    new-instance v0, Landroid/support/v7/widget/RecyclerView$e$c;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$e$c;-><init>()V

    return-object v0
.end method
