.class public abstract Landroid/support/v7/widget/RecyclerView$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroid/support/v7/widget/RecyclerView$z;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v7/widget/RecyclerView$g;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/support/v7/widget/RecyclerView$g;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$g;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$f;->a:Landroid/support/v7/widget/RecyclerView$g;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$f;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/RecyclerView$z;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 1
    iput p2, p1, Landroid/support/v7/widget/RecyclerView$z;->b:I

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$f;->d(I)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/support/v7/widget/RecyclerView$z;->d:J

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$f;->i(Landroid/support/v7/widget/RecyclerView$z;I)V

    const/4 p2, 0x1

    const/16 v0, 0x207

    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$z;->B(II)V

    return-void
.end method

.method public final b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$f;->j(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object p1

    .line 2
    iput p2, p1, Landroid/support/v7/widget/RecyclerView$z;->e:I

    return-object p1
.end method

.method public abstract c()I
.end method

.method public d(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public e(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$f;->b:Z

    return v0
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$f;->a:Landroid/support/v7/widget/RecyclerView$g;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$g;->a()V

    return-void
.end method

.method public h(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public abstract i(Landroid/support/v7/widget/RecyclerView$z;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public abstract j(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public k(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public l(Landroid/support/v7/widget/RecyclerView$z;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public m(Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public n(Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public o(Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public p(Landroid/support/v7/widget/RecyclerView$h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$f;->a:Landroid/support/v7/widget/RecyclerView$g;

    invoke-virtual {v0, p1}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public q(Landroid/support/v7/widget/RecyclerView$h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$f;->a:Landroid/support/v7/widget/RecyclerView$g;

    invoke-virtual {v0, p1}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
