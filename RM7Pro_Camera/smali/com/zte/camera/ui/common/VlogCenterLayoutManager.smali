.class public Lcom/zte/camera/ui/common/VlogCenterLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/camera/ui/common/VlogCenterLayoutManager$a;,
        Lcom/zte/camera/ui/common/VlogCenterLayoutManager$b;
    }
.end annotation


# instance fields
.field private a:Landroidx/recyclerview/widget/j;

.field private b:Lcom/zte/camera/ui/common/VlogCenterLayoutManager$b;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 29
    new-instance p1, Landroidx/recyclerview/widget/j;

    invoke-direct {p1}, Landroidx/recyclerview/widget/j;-><init>()V

    iput-object p1, p0, Lcom/zte/camera/ui/common/VlogCenterLayoutManager;->a:Landroidx/recyclerview/widget/j;

    return-void
.end method

.method static synthetic a(Lcom/zte/camera/ui/common/VlogCenterLayoutManager;)Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/zte/camera/ui/common/VlogCenterLayoutManager;->c:Z

    return p0
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;I)V
    .locals 0

    .line 34
    new-instance p2, Lcom/zte/camera/ui/common/VlogCenterLayoutManager$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/zte/camera/ui/common/VlogCenterLayoutManager$a;-><init>(Lcom/zte/camera/ui/common/VlogCenterLayoutManager;Landroid/content/Context;)V

    .line 35
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$t;->c(I)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/zte/camera/ui/common/VlogCenterLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$t;)V

    return-void
.end method

.method public a(Lcom/zte/camera/ui/common/VlogCenterLayoutManager$b;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/zte/camera/ui/common/VlogCenterLayoutManager;->b:Lcom/zte/camera/ui/common/VlogCenterLayoutManager$b;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/zte/camera/ui/common/VlogCenterLayoutManager;->c:Z

    return-void
.end method

.method public l(I)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogCenterLayoutManager;->a:Landroidx/recyclerview/widget/j;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/j;->a(Landroidx/recyclerview/widget/RecyclerView$i;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0, v0}, Lcom/zte/camera/ui/common/VlogCenterLayoutManager;->d(Landroid/view/View;)I

    move-result v0

    .line 66
    :goto_0
    iget-object v1, p0, Lcom/zte/camera/ui/common/VlogCenterLayoutManager;->b:Lcom/zte/camera/ui/common/VlogCenterLayoutManager$b;

    invoke-interface {v1, v0}, Lcom/zte/camera/ui/common/VlogCenterLayoutManager$b;->onScrollPositionChange(I)V

    .line 70
    :goto_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->l(I)V

    return-void
.end method
