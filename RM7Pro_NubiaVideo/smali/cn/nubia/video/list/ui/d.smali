.class public Lcn/nubia/video/list/ui/d;
.super Lcn/nubia/video/list/ui/i;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private g:Landroid/widget/ListView;

.field private h:Lb/a/b/c/b/l;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/list/ui/i;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/nubia/video/list/ui/d;->g:Landroid/widget/ListView;

    .line 3
    iput-object v0, p0, Lcn/nubia/video/list/ui/d;->h:Lb/a/b/c/b/l;

    return-void
.end method


# virtual methods
.method public C(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/list/ui/d;->g:Landroid/widget/ListView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/nubia/video/list/ui/d;->h:Lb/a/b/c/b/l;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p3, 0x7f0c002f

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900af

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcn/nubia/video/list/ui/d;->g:Landroid/widget/ListView;

    const p2, 0x7f0900b6

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/video/list/ui/d;->i:Landroid/view/View;

    const p2, 0x7f090155

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/video/list/ui/d;->j:Landroid/widget/TextView;

    .line 5
    new-instance p2, Lb/a/b/c/b/l;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcn/nubia/video/list/ui/j;->b:Lb/a/b/c/b/f;

    iget-boolean v1, p0, Lcn/nubia/video/list/ui/i;->e:Z

    iget-boolean v2, p0, Lcn/nubia/video/list/ui/i;->f:Z

    invoke-direct {p2, p3, v0, v1, v2}, Lb/a/b/c/b/l;-><init>(Landroid/content/Context;Lb/a/b/c/b/f;ZZ)V

    iput-object p2, p0, Lcn/nubia/video/list/ui/d;->h:Lb/a/b/c/b/l;

    .line 6
    iget-object p3, p0, Lcn/nubia/video/list/ui/d;->g:Landroid/widget/ListView;

    invoke-virtual {p3, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7
    iget-object p2, p0, Lcn/nubia/video/list/ui/d;->g:Landroid/widget/ListView;

    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 8
    iget-object p2, p0, Lcn/nubia/video/list/ui/d;->g:Landroid/widget/ListView;

    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 9
    iget-object p2, p0, Lcn/nubia/video/list/ui/d;->g:Landroid/widget/ListView;

    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 10
    iget-object p2, p0, Lcn/nubia/video/list/ui/d;->i:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcn/nubia/video/list/ui/i;->z(Landroid/view/View;)V

    .line 11
    iget-object p2, p0, Lcn/nubia/video/list/ui/d;->j:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcn/nubia/video/list/ui/i;->A(Landroid/widget/TextView;)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lcn/nubia/video/list/ui/i;->e:Z

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcn/nubia/video/list/ui/i;->f:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/nubia/video/list/ui/d;->h:Lb/a/b/c/b/l;

    invoke-virtual {p1, p3}, Lb/a/b/c/b/l;->b(I)I

    move-result p3

    .line 4
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 5
    iget-object p2, p0, Lcn/nubia/video/list/ui/j;->b:Lb/a/b/c/b/f;

    invoke-virtual {p2, p3}, Lb/a/b/c/b/f;->x(I)Lb/a/b/c/b/m;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lb/a/b/c/b/m;->r()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p2, p3, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 8
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 9
    iget-object p1, p0, Lcn/nubia/video/list/ui/j;->b:Lb/a/b/c/b/f;

    const/4 p2, 0x1

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lb/a/b/c/b/f;->x(I)Lb/a/b/c/b/m;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    new-instance p3, Landroid/content/Intent;

    const-string p4, "android.intent.action.VIEW"

    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lb/a/b/c/b/m;->r()Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p1}, Lb/a/b/c/b/m;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p4, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "video_list_start_player"

    .line 12
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 13
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-class p2, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 14
    invoke-virtual {p0, p3}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lcn/nubia/video/list/ui/i;->e:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    return p2

    :cond_0
    if-eqz p3, :cond_1

    .line 2
    iget-object p1, p0, Lcn/nubia/video/list/ui/j;->b:Lb/a/b/c/b/f;

    const/4 p2, 0x1

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Lb/a/b/c/b/f;->N(I)V

    :cond_1
    return p2
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    const/4 p1, 0x1

    sub-int/2addr p2, p1

    const/4 p4, 0x0

    .line 1
    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p3, p1

    .line 2
    invoke-static {p4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 3
    iget-object p4, p0, Lcn/nubia/video/list/ui/j;->b:Lb/a/b/c/b/f;

    add-int/2addr p3, p2

    invoke-virtual {p4, p1, p2, p3}, Lb/a/b/c/b/f;->F(III)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/list/ui/d;->h:Lb/a/b/c/b/l;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/list/ui/d;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/video/list/ui/d;->h:Lb/a/b/c/b/l;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
