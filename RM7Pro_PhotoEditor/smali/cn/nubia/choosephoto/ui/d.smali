.class public Lcn/nubia/choosephoto/ui/d;
.super Lcn/nubia/choosephoto/ui/f;
.source ""


# instance fields
.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/nubia/choosephoto/ui/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/nubia/choosephoto/ui/f;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/choosephoto/ui/d;->h:Ljava/util/Map;

    return-void
.end method

.method static synthetic e(Lcn/nubia/choosephoto/ui/d;ZLcn/nubia/choosephoto/ui/g;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/choosephoto/ui/d;->g(ZLcn/nubia/choosephoto/ui/g;Ljava/lang/String;)V

    return-void
.end method

.method private g(ZLcn/nubia/choosephoto/ui/g;Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f080191

    invoke-virtual {p2, v0}, Lcn/nubia/choosephoto/ui/g;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f08022a

    invoke-virtual {p2, v1}, Lcn/nubia/choosephoto/ui/g;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const-string p1, "#77000000"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcn/nubia/choosephoto/ui/d;->h:Ljava/util/Map;

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 p1, 0x4

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcn/nubia/choosephoto/ui/d$a;

    const v1, 0x7f0b0005

    invoke-direct {v0, p0, p1, v1}, Lcn/nubia/choosephoto/ui/d$a;-><init>(Lcn/nubia/choosephoto/ui/d;Ljava/util/List;I)V

    iput-object v0, p0, Lcn/nubia/choosephoto/ui/b;->c:Landroid/widget/BaseAdapter;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcn/nubia/choosephoto/ui/d;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/choosephoto/ui/g;

    if-eqz v0, :cond_0

    const v1, 0x7f080191

    invoke-virtual {v0, v1}, Lcn/nubia/choosephoto/ui/g;->c(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f08022a

    invoke-virtual {v0, v2}, Lcn/nubia/choosephoto/ui/g;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcn/nubia/choosephoto/ui/d;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    iget-object v0, p0, Lcn/nubia/choosephoto/ui/d;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
