.class Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$b;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$b;->a:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$1;)V
    .locals 0

    .prologue
    .line 566
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$b;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 568
    move-object v0, p1

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;

    .line 569
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$c;->b()Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;->select()V

    .line 570
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$b;->a:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->access$200(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;)Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildCount()I

    move-result v3

    move v2, v1

    .line 571
    :goto_0
    if-ge v2, v3, :cond_1

    .line 572
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$b;->a:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->access$200(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;)Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 573
    if-ne v4, p1, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 571
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 573
    goto :goto_1

    .line 575
    :cond_1
    return-void
.end method
