.class public Lcn/nubia/collage/ui/j;
.super Lcn/nubia/collage/ui/b;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/collage/ui/b;-><init>()V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/ui/b;->e:Lcn/nubia/collage/ui/a;

    if-eqz v0, :cond_0

    new-instance v1, Lcn/nubia/collage/ui/j$a;

    invoke-direct {v1, p0}, Lcn/nubia/collage/ui/j$a;-><init>(Lcn/nubia/collage/ui/j;)V

    invoke-virtual {v0, v1}, Lcn/nubia/collage/ui/a;->b(Lcn/nubia/collage/ui/a$b;)V

    iget-object v0, p0, Lcn/nubia/collage/ui/b;->e:Lcn/nubia/collage/ui/a;

    new-instance v1, Lcn/nubia/collage/ui/j$b;

    invoke-direct {v1, p0}, Lcn/nubia/collage/ui/j$b;-><init>(Lcn/nubia/collage/ui/j;)V

    invoke-virtual {v0, v1}, Lcn/nubia/collage/ui/a;->a(Lcn/nubia/collage/ui/a$a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcn/nubia/collage/ui/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/collage/ui/b;->b:Lcn/nubia/collage/i;

    if-eqz p2, :cond_0

    new-instance p2, Lcn/nubia/collage/ui/i;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcn/nubia/collage/ui/b;->b:Lcn/nubia/collage/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/collage/i;->h(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Lcn/nubia/collage/ui/i;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p0, Lcn/nubia/collage/ui/b;->e:Lcn/nubia/collage/ui/a;

    :cond_0
    iget-object p2, p0, Lcn/nubia/collage/ui/b;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object p3, p0, Lcn/nubia/collage/ui/b;->e:Lcn/nubia/collage/ui/a;

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object p2, p0, Lcn/nubia/collage/ui/b;->e:Lcn/nubia/collage/ui/a;

    if-eqz p2, :cond_1

    iget-object p3, p0, Lcn/nubia/collage/ui/b;->b:Lcn/nubia/collage/i;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcn/nubia/collage/i;->f()I

    move-result p3

    invoke-virtual {p2, p3}, Lcn/nubia/collage/ui/a;->c(I)V

    :cond_1
    invoke-direct {p0}, Lcn/nubia/collage/ui/j;->d()V

    return-object p1
.end method
