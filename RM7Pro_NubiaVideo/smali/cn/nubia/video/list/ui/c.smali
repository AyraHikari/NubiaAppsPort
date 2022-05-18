.class public Lcn/nubia/video/list/ui/c;
.super Lcn/nubia/video/list/ui/i;
.source "SourceFile"


# instance fields
.field private g:Landroid/support/v7/widget/RecyclerView;

.field private h:Landroid/view/View;

.field private i:Landroid/support/v7/widget/y;

.field private j:Lb/a/b/c/b/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/list/ui/i;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/nubia/video/list/ui/c;->g:Landroid/support/v7/widget/RecyclerView;

    .line 3
    iput-object v0, p0, Lcn/nubia/video/list/ui/c;->i:Landroid/support/v7/widget/y;

    .line 4
    iput-object v0, p0, Lcn/nubia/video/list/ui/c;->j:Lb/a/b/c/b/i;

    return-void
.end method

.method static synthetic D(Lcn/nubia/video/list/ui/c;)Landroid/support/v7/widget/y;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/list/ui/c;->i:Landroid/support/v7/widget/y;

    return-object p0
.end method

.method static synthetic E(Lcn/nubia/video/list/ui/c;)Lb/a/b/c/b/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/list/ui/c;->j:Lb/a/b/c/b/i;

    return-object p0
.end method

.method static synthetic F(Lcn/nubia/video/list/ui/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/list/ui/c;->G()V

    return-void
.end method

.method private G()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/c;->i:Landroid/support/v7/widget/y;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/a0;->g1()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    move v0, v1

    .line 3
    :cond_1
    iget-object v2, p0, Lcn/nubia/video/list/ui/c;->i:Landroid/support/v7/widget/y;

    invoke-virtual {v2}, Landroid/support/v7/widget/a0;->i1()I

    move-result v2

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 4
    :goto_0
    iget-object v2, p0, Lcn/nubia/video/list/ui/j;->b:Lb/a/b/c/b/f;

    if-eqz v2, :cond_3

    const/4 v3, 0x2

    .line 5
    invoke-virtual {v2, v3, v0, v1}, Lb/a/b/c/b/f;->F(III)V

    :cond_3
    return-void
.end method

.method private H()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/c;->j:Lb/a/b/c/b/i;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcn/nubia/video/list/ui/c$c;

    invoke-direct {v1, p0}, Lcn/nubia/video/list/ui/c$c;-><init>(Lcn/nubia/video/list/ui/c;)V

    invoke-virtual {v0, v1}, Lb/a/b/c/b/a;->r(Lb/a/b/c/b/a$a;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/list/ui/c;->j:Lb/a/b/c/b/i;

    new-instance v1, Lcn/nubia/video/list/ui/c$d;

    invoke-direct {v1, p0}, Lcn/nubia/video/list/ui/c$d;-><init>(Lcn/nubia/video/list/ui/c;)V

    invoke-virtual {v0, v1}, Lb/a/b/c/b/a;->s(Lb/a/b/c/b/a$b;)V

    return-void
.end method

.method private I()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/c;->g:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcn/nubia/video/list/ui/c$b;

    invoke-direct {v1, p0}, Lcn/nubia/video/list/ui/c$b;-><init>(Lcn/nubia/video/list/ui/c;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$p;)V

    return-void
.end method

.method private J()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/c;->i:Landroid/support/v7/widget/y;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcn/nubia/video/list/ui/c$a;

    invoke-direct {v1, p0}, Lcn/nubia/video/list/ui/c$a;-><init>(Lcn/nubia/video/list/ui/c;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/y;->a2(Landroid/support/v7/widget/y$c;)V

    return-void
.end method


# virtual methods
.method public C(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/list/ui/c;->g:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/nubia/video/list/ui/c;->j:Lb/a/b/c/b/i;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$f;->g()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0027

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090088

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcn/nubia/video/list/ui/c;->g:Landroid/support/v7/widget/RecyclerView;

    const p2, 0x7f0900b6

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/video/list/ui/c;->h:Landroid/view/View;

    .line 4
    new-instance p2, Landroid/support/v7/widget/y;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    const/4 v0, 0x2

    invoke-direct {p2, p3, v0}, Landroid/support/v7/widget/y;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcn/nubia/video/list/ui/c;->i:Landroid/support/v7/widget/y;

    .line 5
    iget-object p3, p0, Lcn/nubia/video/list/ui/c;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$m;)V

    .line 6
    new-instance p2, Lb/a/b/c/b/i;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcn/nubia/video/list/ui/j;->b:Lb/a/b/c/b/f;

    invoke-direct {p2, p3, v0}, Lb/a/b/c/b/i;-><init>(Landroid/content/Context;Lb/a/b/c/b/f;)V

    iput-object p2, p0, Lcn/nubia/video/list/ui/c;->j:Lb/a/b/c/b/i;

    .line 7
    iget-object p3, p0, Lcn/nubia/video/list/ui/c;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$f;)V

    .line 8
    invoke-direct {p0}, Lcn/nubia/video/list/ui/c;->J()V

    .line 9
    invoke-direct {p0}, Lcn/nubia/video/list/ui/c;->I()V

    .line 10
    invoke-direct {p0}, Lcn/nubia/video/list/ui/c;->H()V

    .line 11
    iget-object p2, p0, Lcn/nubia/video/list/ui/c;->h:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcn/nubia/video/list/ui/i;->z(Landroid/view/View;)V

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/nubia/video/list/ui/i;->onResume()V

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/list/ui/c;->G()V

    return-void
.end method

.method public u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/c;->g:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/video/list/ui/c;->j:Lb/a/b/c/b/i;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$f;->g()V

    :cond_0
    return-void
.end method
