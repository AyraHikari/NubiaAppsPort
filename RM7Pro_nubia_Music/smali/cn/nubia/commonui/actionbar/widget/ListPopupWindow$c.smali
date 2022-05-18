.class Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$c;
.super Landroid/database/DataSetObserver;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 1703
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$c;->a:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$1;)V
    .locals 0

    .prologue
    .line 1703
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$c;-><init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 1706
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$c;->a:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1708
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$c;->a:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->show()V

    .line 1710
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 1714
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$c;->a:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;->dismiss()V

    .line 1715
    return-void
.end method
