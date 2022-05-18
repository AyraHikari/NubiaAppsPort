.class public abstract Landroidx/recyclerview/widget/RecyclerView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$x;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroidx/recyclerview/widget/RecyclerView$b;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6985
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$b;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    const/4 v0, 0x0

    .line 6986
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->b:Z

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract a(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$c;)V
    .locals 1

    .line 7287
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$b;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$x;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$x;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 7065
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$a;->a(Landroidx/recyclerview/widget/RecyclerView$x;I)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public b(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    :try_start_0
    const-string v0, "RV CreateView"

    .line 7077
    invoke-static {v0}, Landroidx/core/b/a;->a(Ljava/lang/String;)V

    .line 7078
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$a;->a(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$x;

    move-result-object p1

    .line 7079
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7084
    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$x;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7087
    invoke-static {}, Landroidx/core/b/a;->a()V

    return-object p1

    .line 7080
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 7087
    invoke-static {}, Landroidx/core/b/a;->a()V

    .line 7088
    throw p1
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$c;)V
    .locals 1

    .line 7301
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$b;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView$x;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 7099
    iput p2, p1, Landroidx/recyclerview/widget/RecyclerView$x;->c:I

    .line 7100
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7101
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$a;->b(I)J

    move-result-wide v0

    iput-wide v0, p1, Landroidx/recyclerview/widget/RecyclerView$x;->e:J

    :cond_0
    const/16 v0, 0x207

    const/4 v1, 0x1

    .line 7103
    invoke-virtual {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$x;->a(II)V

    const-string v0, "RV OnBindView"

    .line 7106
    invoke-static {v0}, Landroidx/core/b/a;->a(Ljava/lang/String;)V

    .line 7107
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->v()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$a;->a(Landroidx/recyclerview/widget/RecyclerView$x;ILjava/util/List;)V

    .line 7108
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$x;->u()V

    .line 7109
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$x;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 7110
    instance-of p2, p1, Landroidx/recyclerview/widget/RecyclerView$j;

    if-eqz p2, :cond_1

    .line 7111
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$j;

    iput-boolean v1, p1, Landroidx/recyclerview/widget/RecyclerView$j;->e:Z

    .line 7113
    :cond_1
    invoke-static {}, Landroidx/core/b/a;->a()V

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 7175
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->b:Z

    return v0
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$x;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public final c()V
    .locals 1

    .line 7354
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$a;->a:Landroidx/recyclerview/widget/RecyclerView$b;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$b;->a()V

    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method
