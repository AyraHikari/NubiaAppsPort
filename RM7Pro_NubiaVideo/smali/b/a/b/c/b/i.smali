.class public Lb/a/b/c/b/i;
.super Lb/a/b/c/b/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/a/b/c/b/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lb/a/b/c/b/a;-><init>(Landroid/content/Context;Lb/a/b/c/b/f;)V

    return-void
.end method

.method static synthetic t(Lb/a/b/c/b/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/a/b/c/b/i;->w()V

    return-void
.end method

.method private w()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/a;->c:Lb/a/b/c/b/f;

    invoke-virtual {v0}, Lb/a/b/c/b/f;->y()Lb/a/b/c/b/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Lb/a/b/c/b/m;->r()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lb/a/b/c/b/m;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v2, "video_list_start_player"

    .line 4
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lb/a/b/c/b/a;->f:Landroid/content/Context;

    const-class v2, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    iget-object v0, p0, Lb/a/b/c/b/a;->f:Landroid/content/Context;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private x(Lcn/nubia/video/list/ui/a;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->O()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->O()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->O()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09009c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4
    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->O()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09009a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->O()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f09009b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 6
    iget-object v4, p0, Lb/a/b/c/b/a;->c:Lb/a/b/c/b/f;

    invoke-virtual {v4}, Lb/a/b/c/b/f;->y()Lb/a/b/c/b/m;

    move-result-object v4

    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v4}, Lb/a/b/c/b/m;->p()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    .line 8
    iget-object v0, p0, Lb/a/b/c/b/a;->f:Landroid/content/Context;

    invoke-virtual {v4}, Lb/a/b/c/b/m;->m()I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    invoke-static {v0, v5}, Lb/a/b/d/e;->i(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    .line 9
    iget-object v0, p0, Lb/a/b/c/b/a;->c:Lb/a/b/c/b/f;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0, v2}, Lb/a/b/c/b/f;->C(Landroid/widget/ImageView;)V

    :cond_3
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 11
    new-instance v0, Lb/a/b/c/b/i$a;

    invoke-direct {v0, p0}, Lb/a/b/c/b/i$a;-><init>(Lb/a/b/c/b/i;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_4
    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->O()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lb/a/b/c/b/i$b;

    invoke-direct {v0, p0}, Lb/a/b/c/b/i$b;-><init>(Lb/a/b/c/b/i;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    invoke-super {p0}, Lb/a/b/c/b/a;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public e(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic i(Landroid/support/v7/widget/RecyclerView$z;I)V
    .locals 0

    .line 1
    check-cast p1, Lcn/nubia/video/list/ui/a;

    invoke-virtual {p0, p1, p2}, Lb/a/b/c/b/i;->u(Lcn/nubia/video/list/ui/a;I)V

    return-void
.end method

.method public bridge synthetic j(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$z;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lb/a/b/c/b/i;->v(Landroid/view/ViewGroup;I)Lcn/nubia/video/list/ui/a;

    move-result-object p1

    return-object p1
.end method

.method public u(Lcn/nubia/video/list/ui/a;I)V
    .locals 3

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$z;->m()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lb/a/b/c/b/a;->c:Lb/a/b/c/b/f;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Lb/a/b/c/b/f;->x(I)Lb/a/b/c/b/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->R()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->R()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lb/a/b/c/b/m;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->Q()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->Q()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lb/a/b/c/b/a;->f:Landroid/content/Context;

    .line 7
    invoke-virtual {v0}, Lb/a/b/c/b/m;->m()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v2, v0}, Lb/a/b/d/e;->i(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->P()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lb/a/b/c/b/a;->c:Lb/a/b/c/b/f;

    const/4 v1, 0x2

    .line 11
    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->P()Landroid/widget/ImageView;

    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, p2, v2}, Lb/a/b/c/b/f;->D(IILandroid/widget/ImageView;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$z;->m()I

    move-result p2

    if-nez p2, :cond_3

    .line 14
    invoke-direct {p0, p1}, Lb/a/b/c/b/i;->x(Lcn/nubia/video/list/ui/a;)V

    .line 15
    :cond_3
    :goto_0
    iget-object p2, p0, Lb/a/b/c/b/a;->d:Lb/a/b/c/b/a$a;

    invoke-virtual {p1, p2}, Lcn/nubia/video/list/ui/a;->S(Lb/a/b/c/b/a$a;)V

    .line 16
    iget-object p2, p0, Lb/a/b/c/b/a;->e:Lb/a/b/c/b/a$b;

    invoke-virtual {p1, p2}, Lcn/nubia/video/list/ui/a;->T(Lb/a/b/c/b/a$b;)V

    :cond_4
    return-void
.end method

.method public v(Landroid/view/ViewGroup;I)Lcn/nubia/video/list/ui/a;
    .locals 1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0c002b

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0c0028

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 3
    :goto_0
    new-instance p2, Lcn/nubia/video/list/ui/a;

    invoke-direct {p2, p1}, Lcn/nubia/video/list/ui/a;-><init>(Landroid/view/View;)V

    return-object p2
.end method
