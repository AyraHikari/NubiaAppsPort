.class Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1724
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;
    .param p2, "x1"    # Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$1;

    .prologue
    .line 1724
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1726
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->access$600(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->access$600(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-static {v1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->access$600(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    .line 1727
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->access$600(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$DropDownListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    iget v1, v1, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->mListItemExpandMaximum:I

    if-gt v0, v1, :cond_0

    .line 1728
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->access$1100(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1729
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->show()V

    .line 1731
    :cond_0
    return-void
.end method
