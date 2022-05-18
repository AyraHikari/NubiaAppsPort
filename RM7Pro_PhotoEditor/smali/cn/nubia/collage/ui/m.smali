.class public Lcn/nubia/collage/ui/m;
.super Lcn/nubia/collage/ui/a;
.source ""


# instance fields
.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcn/nubia/collage/n/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcn/nubia/collage/ui/a;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lcn/nubia/collage/ui/m;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/collage/ui/m;->g:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/collage/ui/a;->d:I

    invoke-static {p2, p1}, Lcn/nubia/collage/ui/m;->f(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/collage/ui/m;->f:Ljava/util/List;

    return-void
.end method

.method private static e(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/collage/n/c;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/collage/n/c;

    invoke-virtual {v3}, Lcn/nubia/collage/n/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static f(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/collage/n/c;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/collage/n/c;

    invoke-virtual {v3}, Lcn/nubia/collage/n/c;->b()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public g(Lcn/nubia/collage/ui/c;I)V
    .locals 4

    if-eqz p1, :cond_2

    move-object v0, p1

    check-cast v0, Lcn/nubia/collage/ui/n;

    invoke-virtual {v0}, Lcn/nubia/collage/ui/n;->f()Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcn/nubia/collage/ui/n;->g()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcn/nubia/collage/ui/c;->c()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/collage/ui/m;->g:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcn/nubia/collage/ui/a;->d(Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/nubia/collage/ui/n;->g()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/collage/ui/m;->f:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcn/nubia/collage/ui/n;->g()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/collage/ui/a;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06011b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setWidth(I)V

    invoke-virtual {v0}, Lcn/nubia/collage/ui/n;->g()Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget v1, p0, Lcn/nubia/collage/ui/a;->d:I

    if-ne p2, v1, :cond_0

    invoke-virtual {v0}, Lcn/nubia/collage/ui/n;->f()Landroid/widget/RelativeLayout;

    move-result-object p2

    const v1, 0x7f07012d

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    invoke-virtual {v0}, Lcn/nubia/collage/ui/n;->g()Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/collage/ui/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000a

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/nubia/collage/ui/n;->f()Landroid/widget/RelativeLayout;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    invoke-virtual {v0}, Lcn/nubia/collage/ui/n;->g()Landroid/widget/TextView;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/collage/ui/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050089

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object p2, p0, Lcn/nubia/collage/ui/a;->a:Lcn/nubia/collage/ui/a$b;

    invoke-virtual {p1, p2}, Lcn/nubia/collage/ui/c;->e(Lcn/nubia/collage/ui/a$b;)V

    :cond_2
    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/ui/m;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public h(Landroid/view/ViewGroup;I)Lcn/nubia/collage/ui/n;
    .locals 1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0b0016

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcn/nubia/collage/ui/n;

    invoke-direct {p2, p1}, Lcn/nubia/collage/ui/n;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcn/nubia/collage/ui/c;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/collage/ui/m;->g(Lcn/nubia/collage/ui/c;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcn/nubia/collage/ui/m;->h(Landroid/view/ViewGroup;I)Lcn/nubia/collage/ui/n;

    move-result-object p1

    return-object p1
.end method
