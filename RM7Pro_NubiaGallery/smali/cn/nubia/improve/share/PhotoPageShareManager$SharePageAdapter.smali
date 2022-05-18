.class public Lcn/nubia/improve/share/PhotoPageShareManager$SharePageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PhotoPageShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/share/PhotoPageShareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SharePageAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

.field viewLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/improve/share/PhotoPageShareManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 598
    iput-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$SharePageAdapter;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 599
    iput-object p2, p0, Lcn/nubia/improve/share/PhotoPageShareManager$SharePageAdapter;->viewLists:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .line 616
    check-cast p1, Landroid/support/v4/view/ViewPager;

    iget-object p3, p0, Lcn/nubia/improve/share/PhotoPageShareManager$SharePageAdapter;->viewLists:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 605
    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager$SharePageAdapter;->viewLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2

    .line 621
    check-cast p1, Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcn/nubia/improve/share/PhotoPageShareManager$SharePageAdapter;->viewLists:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 622
    iget-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$SharePageAdapter;->viewLists:Ljava/util/List;

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
