.class public Lcn/nubia/collage/ui/b;
.super Landroid/support/v4/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/collage/ui/b$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field protected b:Lcn/nubia/collage/i;

.field protected c:I

.field protected d:Landroid/support/v7/widget/RecyclerView;

.field protected e:Lcn/nubia/collage/ui/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Lcn/nubia/collage/ui/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/collage/ui/b$b;-><init>(Lcn/nubia/collage/ui/b;Lcn/nubia/collage/ui/b$a;)V

    iput-object v0, p0, Lcn/nubia/collage/ui/b;->a:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/collage/ui/b;->c:I

    return-void
.end method


# virtual methods
.method public b(Lcn/nubia/collage/i;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/ui/b;->b:Lcn/nubia/collage/i;

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/ui/b;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b000f

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f08007c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcn/nubia/collage/ui/b;->d:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object p3, p0, Lcn/nubia/collage/ui/b;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-object p1
.end method
