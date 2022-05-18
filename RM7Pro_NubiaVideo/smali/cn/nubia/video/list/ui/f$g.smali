.class Lcn/nubia/video/list/ui/f$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/list/ui/f;->H(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/list/ui/f;


# direct methods
.method constructor <init>(Lcn/nubia/video/list/ui/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/list/ui/f$g;->a:Lcn/nubia/video/list/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcn/nubia/video/list/ui/f$g;->a:Lcn/nubia/video/list/ui/f;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "vertical_list_grid"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lb/a/b/d/e;->n(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    const v0, 0x7f0f00ad

    const v1, 0x7f0f00dc

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcn/nubia/video/list/ui/f$g;->a:Lcn/nubia/video/list/ui/f;

    iget-object p1, p1, Lcn/nubia/video/list/ui/f;->o:Lb/a/b/c/b/q;

    invoke-virtual {p1}, Lb/a/b/c/b/q;->a()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v2, p0, Lcn/nubia/video/list/ui/f$g;->a:Lcn/nubia/video/list/ui/f;

    iget-object v2, v2, Lcn/nubia/video/list/ui/j;->b:Lb/a/b/c/b/f;

    invoke-virtual {v2}, Lb/a/b/c/b/f;->J()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 4
    iget-object p1, p0, Lcn/nubia/video/list/ui/f$g;->a:Lcn/nubia/video/list/ui/f;

    iget-object p1, p1, Lcn/nubia/video/list/ui/f;->o:Lb/a/b/c/b/q;

    invoke-virtual {p1}, Lb/a/b/c/b/q;->e()V

    .line 5
    iget-object p1, p0, Lcn/nubia/video/list/ui/f$g;->a:Lcn/nubia/video/list/ui/f;

    invoke-static {p1}, Lcn/nubia/video/list/ui/f;->w(Lcn/nubia/video/list/ui/f;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/list/ui/f$g;->a:Lcn/nubia/video/list/ui/f;

    iget-object p1, p1, Lcn/nubia/video/list/ui/f;->o:Lb/a/b/c/b/q;

    invoke-virtual {p1}, Lb/a/b/c/b/q;->b()V

    .line 7
    iget-object p1, p0, Lcn/nubia/video/list/ui/f$g;->a:Lcn/nubia/video/list/ui/f;

    invoke-static {p1}, Lcn/nubia/video/list/ui/f;->w(Lcn/nubia/video/list/ui/f;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcn/nubia/video/list/ui/f$g;->a:Lcn/nubia/video/list/ui/f;

    iget-object p1, p1, Lcn/nubia/video/list/ui/f;->o:Lb/a/b/c/b/q;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 9
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/list/ui/f$g;->a:Lcn/nubia/video/list/ui/f;

    iget-object p1, p1, Lcn/nubia/video/list/ui/f;->n:Lb/a/b/c/b/p;

    invoke-virtual {p1}, Lb/a/b/c/b/p;->t()Ljava/util/ArrayList;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v2, p0, Lcn/nubia/video/list/ui/f$g;->a:Lcn/nubia/video/list/ui/f;

    iget-object v2, v2, Lcn/nubia/video/list/ui/j;->b:Lb/a/b/c/b/f;

    invoke-virtual {v2}, Lb/a/b/c/b/f;->J()I

    move-result v2

    if-ne p1, v2, :cond_2

    .line 11
    iget-object p1, p0, Lcn/nubia/video/list/ui/f$g;->a:Lcn/nubia/video/list/ui/f;

    iget-object p1, p1, Lcn/nubia/video/list/ui/f;->n:Lb/a/b/c/b/p;

    invoke-virtual {p1}, Lb/a/b/c/b/p;->A()V

    .line 12
    iget-object p1, p0, Lcn/nubia/video/list/ui/f$g;->a:Lcn/nubia/video/list/ui/f;

    invoke-static {p1}, Lcn/nubia/video/list/ui/f;->w(Lcn/nubia/video/list/ui/f;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object p1, p0, Lcn/nubia/video/list/ui/f$g;->a:Lcn/nubia/video/list/ui/f;

    iget-object p1, p1, Lcn/nubia/video/list/ui/f;->n:Lb/a/b/c/b/p;

    invoke-virtual {p1}, Lb/a/b/c/b/p;->w()V

    .line 14
    iget-object p1, p0, Lcn/nubia/video/list/ui/f$g;->a:Lcn/nubia/video/list/ui/f;

    invoke-static {p1}, Lcn/nubia/video/list/ui/f;->w(Lcn/nubia/video/list/ui/f;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 15
    :goto_1
    iget-object p1, p0, Lcn/nubia/video/list/ui/f$g;->a:Lcn/nubia/video/list/ui/f;

    iget-object p1, p1, Lcn/nubia/video/list/ui/f;->n:Lb/a/b/c/b/p;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$f;->g()V

    :goto_2
    return-void
.end method
