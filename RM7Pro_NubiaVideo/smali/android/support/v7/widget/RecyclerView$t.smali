.class Landroid/support/v7/widget/RecyclerView$t;
.super Landroid/support/v7/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "t"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$h;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$t;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->L(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$f;->f()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$w;->d(Landroid/support/v7/widget/RecyclerView$w;Z)Z

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->q(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->N:Landroid/support/v7/widget/RecyclerView$w;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$w;->d(Landroid/support/v7/widget/RecyclerView$w;Z)Z

    .line 6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->q(Landroid/support/v7/widget/RecyclerView;)V

    .line 7
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/d;

    invoke-virtual {v0}, Landroid/support/v7/widget/d;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$t;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method
