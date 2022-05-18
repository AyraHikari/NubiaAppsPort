.class public Lcn/nubia/collage/ui/i;
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

    iput-object p2, p0, Lcn/nubia/collage/ui/i;->f:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lcn/nubia/collage/ui/a;->d:I

    return-void
.end method


# virtual methods
.method public e(Lcn/nubia/collage/ui/c;I)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcn/nubia/collage/ui/c;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/collage/ui/i;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcn/nubia/collage/ui/c;->c()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/collage/ui/i;->f:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    :cond_1
    iget-object p2, p0, Lcn/nubia/collage/ui/a;->a:Lcn/nubia/collage/ui/a$b;

    invoke-virtual {p1, p2}, Lcn/nubia/collage/ui/c;->e(Lcn/nubia/collage/ui/a$b;)V

    :cond_2
    return-void
.end method

.method public f(Landroid/view/ViewGroup;I)Lcn/nubia/collage/ui/c;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0b000c

    :goto_0
    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    if-ne p2, v1, :cond_1

    const p2, 0x7f0b000e

    goto :goto_0

    :cond_1
    const p2, 0x7f0b000d

    goto :goto_0

    :goto_1
    new-instance p2, Lcn/nubia/collage/ui/c;

    invoke-direct {p2, p1}, Lcn/nubia/collage/ui/c;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/ui/i;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    invoke-virtual {p0}, Lcn/nubia/collage/ui/i;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    return v1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcn/nubia/collage/ui/c;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/collage/ui/i;->e(Lcn/nubia/collage/ui/c;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcn/nubia/collage/ui/i;->f(Landroid/view/ViewGroup;I)Lcn/nubia/collage/ui/c;

    move-result-object p1

    return-object p1
.end method
