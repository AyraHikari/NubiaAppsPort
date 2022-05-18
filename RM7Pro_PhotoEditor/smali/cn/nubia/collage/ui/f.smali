.class public Lcn/nubia/collage/ui/f;
.super Lcn/nubia/collage/ui/a;
.source ""


# instance fields
.field private f:Lcn/nubia/collage/c;

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
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcn/nubia/collage/ui/a;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcn/nubia/collage/c;->a:Lcn/nubia/collage/c;

    iput-object p1, p0, Lcn/nubia/collage/ui/f;->f:Lcn/nubia/collage/c;

    iput-object p2, p0, Lcn/nubia/collage/ui/f;->g:Ljava/util/List;

    const/4 p1, 0x1

    iput p1, p0, Lcn/nubia/collage/ui/a;->d:I

    return-void
.end method

.method private e(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcn/nubia/collage/ui/f$a;->a:[I

    iget-object v1, p0, Lcn/nubia/collage/ui/f;->f:Lcn/nubia/collage/c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f08003e

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const v0, 0x7f070014

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0e0032

    goto :goto_0

    :cond_1
    const v0, 0x7f070012

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0e0030

    goto :goto_0

    :cond_2
    const v0, 0x7f070013

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0e0031

    goto :goto_0

    :cond_3
    const v0, 0x7f070015

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0e0033

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method public f(Lcn/nubia/collage/c;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/ui/f;->f:Lcn/nubia/collage/c;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public g(Lcn/nubia/collage/ui/c;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder  position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GridAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcn/nubia/collage/ui/c;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/collage/ui/f;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcn/nubia/collage/ui/c;->c()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/collage/ui/f;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/collage/ui/a;->d(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget v0, p0, Lcn/nubia/collage/ui/a;->d:I

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lcn/nubia/collage/ui/c;->c()Landroid/widget/ImageView;

    move-result-object p2

    check-cast p2, Lcn/nubia/collage/ui/CategoryImageView;

    iget v0, p0, Lcn/nubia/collage/ui/a;->e:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/nubia/collage/ui/c;->c()Landroid/widget/ImageView;

    move-result-object p2

    check-cast p2, Lcn/nubia/collage/ui/CategoryImageView;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Lcn/nubia/collage/ui/CategoryImageView;->setBorderColor(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcn/nubia/collage/ui/c;->d()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcn/nubia/collage/ui/c;->d()Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, p2}, Lcn/nubia/collage/ui/f;->e(Landroid/view/View;)V

    :cond_2
    :goto_1
    iget-object p2, p0, Lcn/nubia/collage/ui/a;->a:Lcn/nubia/collage/ui/a$b;

    invoke-virtual {p1, p2}, Lcn/nubia/collage/ui/c;->e(Lcn/nubia/collage/ui/a$b;)V

    :cond_3
    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/ui/f;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcn/nubia/collage/ui/f;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    return v1
.end method

.method public h(Landroid/view/ViewGroup;I)Lcn/nubia/collage/ui/c;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateViewHolder  viewType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GridAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b000b

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    if-ne p2, v0, :cond_1

    const p2, 0x7f0b000e

    goto :goto_0

    :cond_1
    const p2, 0x7f0b000d

    :goto_0
    invoke-static {p1, p2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :goto_1
    new-instance p2, Lcn/nubia/collage/ui/c;

    invoke-direct {p2, p1}, Lcn/nubia/collage/ui/c;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcn/nubia/collage/ui/c;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/collage/ui/f;->g(Lcn/nubia/collage/ui/c;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcn/nubia/collage/ui/f;->h(Landroid/view/ViewGroup;I)Lcn/nubia/collage/ui/c;

    move-result-object p1

    return-object p1
.end method
