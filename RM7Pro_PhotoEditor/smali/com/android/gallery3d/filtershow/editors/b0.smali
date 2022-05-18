.class public Lcom/android/gallery3d/filtershow/editors/b0;
.super Landroid/support/v4/app/Fragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/gallery3d/filtershow/editors/p;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Lcom/android/gallery3d/filtershow/editors/c;

.field private c:I

.field private d:I

.field private e:Lcom/android/gallery3d/filtershow/category/b;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/editors/b0;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->N0()Lcom/android/gallery3d/filtershow/editors/t;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/editors/t;->U(I)V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->N0()Lcom/android/gallery3d/filtershow/editors/t;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/filtershow/editors/t;->T(Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O1(I)V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->L()V

    return-void
.end method

.method public b()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->y0()Lcom/android/gallery3d/filtershow/category/b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/b0;->e:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz v0, :cond_1

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/category/b;->f(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/b0;->d()V

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/editors/b0;->c:I

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/b0;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/b0;->g:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/b0;->e:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/b;->s()Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/b0;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/b0;->b()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/b0;->a:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f08019f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/android/gallery3d/filtershow/category/CategoryTrack;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/android/gallery3d/filtershow/category/CategoryTrack;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/b0;->e:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/category/b;->n(I)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/b0;->e:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->setAdapter(Lcom/android/gallery3d/filtershow/category/b;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/b0;->e:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/b0;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/b0;->e:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/b0;->e:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/category/b;->k(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/b0;->e:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/b0;->c:I

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->H0(I)Lcom/android/gallery3d/filtershow/editors/c;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/b0;->b:Lcom/android/gallery3d/filtershow/editors/c;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/b0;->b()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f08002b

    if-eq p1, v1, :cond_2

    const v1, 0x7f080075

    if-eq p1, v1, :cond_1

    const v1, 0x7f0801cb

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x9

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->o2(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/b0;->a()V

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O1(I)V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->Z0()I

    move-result p1

    if-ltz p1, :cond_3

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->y0()Lcom/android/gallery3d/filtershow/category/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/category/a;->h()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->N0()Lcom/android/gallery3d/filtershow/editors/t;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/filtershow/editors/t;->T(Lcom/android/gallery3d/filtershow/filters/x;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/b0;->b:Lcom/android/gallery3d/filtershow/editors/c;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/editors/c;->s()V

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j2(Lcom/android/gallery3d/filtershow/filters/x;)V

    :cond_3
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->L()V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/b0;->a:Landroid/widget/LinearLayout;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/b0;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/b0;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/b0;->a:Landroid/widget/LinearLayout;

    return-object p1

    :cond_1
    const p3, 0x7f0b003c

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/b0;->a:Landroid/widget/LinearLayout;

    const p3, 0x7f0801cc

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/b0;->f:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/b0;->a:Landroid/widget/LinearLayout;

    const p3, 0x7f0801cb

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/b0;->g:Landroid/widget/ImageButton;

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/b0;->f:Landroid/widget/LinearLayout;

    if-eqz p3, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/b0;->d()V

    :cond_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/b0;->a:Landroid/widget/LinearLayout;

    const p3, 0x7f080075

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/b0;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f08002b

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/b0;->a:Landroid/widget/LinearLayout;

    const p3, 0x7f08019f

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/category/CategoryTrack;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/android/gallery3d/filtershow/category/CategoryTrack;

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/b0;->e:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz p3, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/android/gallery3d/filtershow/category/b;->n(I)V

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/b0;->e:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {p1, p3}, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->setAdapter(Lcom/android/gallery3d/filtershow/category/b;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/b0;->e:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/b0;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/b0;->e:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/b0;->e:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {p3, p1}, Lcom/android/gallery3d/filtershow/category/b;->k(Landroid/view/View;)V

    :cond_4
    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->Z0()I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/editors/b0;->d:I

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->N0()Lcom/android/gallery3d/filtershow/editors/t;

    move-result-object p1

    iget p2, p0, Lcom/android/gallery3d/filtershow/editors/b0;->d:I

    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/editors/t;->U(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/b0;->a:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/b0;->b:Lcom/android/gallery3d/filtershow/editors/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/c;->r()V

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    return-void
.end method
