.class Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$e;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1734
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$e;->a:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$1;)V
    .locals 0

    .prologue
    .line 1734
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$e;-><init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 1736
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1737
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 1738
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 1740
    if-nez v0, :cond_1

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$e;->a:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    .line 1741
    invoke-static {v3}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->access$1100(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$e;->a:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-static {v3}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->access$1100(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    if-ltz v1, :cond_1

    iget-object v3, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$e;->a:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    .line 1742
    invoke-static {v3}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->access$1100(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_1

    if-ltz v2, :cond_1

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$e;->a:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-static {v1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->access$1100(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 1743
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$e;->a:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->access$1300(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$e;->a:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-static {v1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->access$1200(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$f;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1747
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1744
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1745
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$e;->a:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->access$1300(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$e;->a:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-static {v1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->access$1200(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$f;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
