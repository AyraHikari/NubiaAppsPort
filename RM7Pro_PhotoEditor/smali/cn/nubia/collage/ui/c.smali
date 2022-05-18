.class public Lcn/nubia/collage/ui/c;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source ""


# instance fields
.field protected a:Landroid/widget/ImageView;

.field private b:Lcn/nubia/collage/ui/a$b;

.field private c:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f080098

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/collage/ui/c;->a:Landroid/widget/ImageView;

    const v0, 0x7f08018a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcn/nubia/collage/ui/c;->c:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic a(Lcn/nubia/collage/ui/c;)Lcn/nubia/collage/ui/a$b;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/ui/c;->b:Lcn/nubia/collage/ui/a$b;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/collage/ui/c;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/ui/c;->c:Landroid/widget/RelativeLayout;

    return-object p0
.end method


# virtual methods
.method public c()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/ui/c;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/ui/c;->c:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected e(Lcn/nubia/collage/ui/a$b;)V
    .locals 1

    iput-object p1, p0, Lcn/nubia/collage/ui/c;->b:Lcn/nubia/collage/ui/a$b;

    iget-object v0, p0, Lcn/nubia/collage/ui/c;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance p1, Lcn/nubia/collage/ui/c$a;

    invoke-direct {p1, p0}, Lcn/nubia/collage/ui/c$a;-><init>(Lcn/nubia/collage/ui/c;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object p1, p0, Lcn/nubia/collage/ui/c;->c:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcn/nubia/collage/ui/c;->b:Lcn/nubia/collage/ui/a$b;

    if-eqz v0, :cond_1

    new-instance v0, Lcn/nubia/collage/ui/c$b;

    invoke-direct {v0, p0}, Lcn/nubia/collage/ui/c$b;-><init>(Lcn/nubia/collage/ui/c;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
