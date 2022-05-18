.class Landroid/support/v7/widget/RecyclerView$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$i$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "j"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$j;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$j;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$z;->C(Z)V

    .line 2
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$z;->c(Landroid/support/v7/widget/RecyclerView$z;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$j;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-static {v0, p1}, Landroid/support/v7/widget/RecyclerView;->B(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public b(Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$z;->C(Z)V

    .line 2
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$z;->g:Landroid/support/v7/widget/RecyclerView$z;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$z;->h:Landroid/support/v7/widget/RecyclerView$z;

    if-nez v0, :cond_0

    .line 3
    iput-object v1, p1, Landroid/support/v7/widget/RecyclerView$z;->g:Landroid/support/v7/widget/RecyclerView$z;

    const/16 v0, -0x41

    .line 4
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$z;->d(Landroid/support/v7/widget/RecyclerView$z;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/support/v7/widget/RecyclerView$z;->B(II)V

    .line 5
    :cond_0
    iput-object v1, p1, Landroid/support/v7/widget/RecyclerView$z;->h:Landroid/support/v7/widget/RecyclerView$z;

    .line 6
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$z;->c(Landroid/support/v7/widget/RecyclerView$z;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$j;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-static {v0, p1}, Landroid/support/v7/widget/RecyclerView;->B(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z

    :cond_1
    return-void
.end method

.method public c(Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$z;->C(Z)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$j;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->B(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$z;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$j;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public d(Landroid/support/v7/widget/RecyclerView$z;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$z;->C(Z)V

    .line 2
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView$z;->c(Landroid/support/v7/widget/RecyclerView$z;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$j;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-static {v0, p1}, Landroid/support/v7/widget/RecyclerView;->B(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z

    :cond_0
    return-void
.end method
