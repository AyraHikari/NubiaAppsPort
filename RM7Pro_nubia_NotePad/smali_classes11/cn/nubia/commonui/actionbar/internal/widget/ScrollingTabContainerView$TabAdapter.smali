.class Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabAdapter;
.super Landroid/widget/BaseAdapter;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;
    .param p2, "x1"    # Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$1;

    .prologue
    .line 539
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabAdapter;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->access$200(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;)Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 547
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->access$200(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;)Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabView;->getTab()Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 552
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 557
    if-nez p2, :cond_0

    .line 558
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->access$300(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;Z)Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object p2

    .line 562
    :goto_0
    return-object p2

    :cond_0
    move-object v0, p2

    .line 560
    check-cast v0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$TabView;->bindTab(Lcn/nubia/commonui/actionbar/app/ActionBar$Tab;)V

    goto :goto_0
.end method
