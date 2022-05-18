.class Lcn/nubia/improve/share/PhotoPageShareManager$6;
.super Ljava/lang/Object;
.source "PhotoPageShareManager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/share/PhotoPageShareManager;->setListerner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/share/PhotoPageShareManager;


# direct methods
.method constructor <init>(Lcn/nubia/improve/share/PhotoPageShareManager;)V
    .locals 0

    .line 753
    iput-object p1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$6;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    const/4 v0, 0x0

    .line 758
    :goto_0
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$6;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {v1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$1200(Lcn/nubia/improve/share/PhotoPageShareManager;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 759
    iget-object v1, p0, Lcn/nubia/improve/share/PhotoPageShareManager$6;->this$0:Lcn/nubia/improve/share/PhotoPageShareManager;

    invoke-static {v1}, Lcn/nubia/improve/share/PhotoPageShareManager;->access$1200(Lcn/nubia/improve/share/PhotoPageShareManager;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-ne v0, p1, :cond_0

    const v2, 0x7f0801ef

    .line 761
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_0
    const v2, 0x7f0801ee

    .line 763
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
