.class Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$PopupScrollListener;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1751
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$PopupScrollListener;->this$0:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;
    .param p2, "x1"    # Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$1;

    .prologue
    .line 1751
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$PopupScrollListener;-><init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 1755
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1758
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$PopupScrollListener;->this$0:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    .line 1759
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$PopupScrollListener;->this$0:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->access$1100(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1760
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$PopupScrollListener;->this$0:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->access$1300(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$PopupScrollListener;->this$0:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-static {v1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->access$1200(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1761
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$PopupScrollListener;->this$0:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->access$1200(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ResizePopupRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ResizePopupRunnable;->run()V

    .line 1763
    :cond_0
    return-void
.end method
