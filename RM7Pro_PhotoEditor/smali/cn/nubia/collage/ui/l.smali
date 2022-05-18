.class public Lcn/nubia/collage/ui/l;
.super Landroid/support/v4/view/PagerAdapter;
.source ""


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    iput-object p1, p0, Lcn/nubia/collage/ui/l;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iget-object p3, p0, Lcn/nubia/collage/ui/l;->a:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/ui/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcn/nubia/collage/ui/l;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object p1, p0, Lcn/nubia/collage/ui/l;->a:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
