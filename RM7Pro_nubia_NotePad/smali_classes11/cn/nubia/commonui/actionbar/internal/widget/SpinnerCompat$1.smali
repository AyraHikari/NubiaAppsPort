.class Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$1;
.super Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;
.source "SpinnerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

.field final synthetic val$popup:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;Landroid/view/View;Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;
    .param p2, "src"    # Landroid/view/View;

    .prologue
    .line 191
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$1;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    iput-object p3, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$1;->val$popup:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;

    invoke-direct {p0, p2}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lcn/nubia/commonui/actionbar/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$1;->val$popup:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;

    return-object v0
.end method

.method public onForwardingStarted()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$1;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->access$100(Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;)Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$SpinnerPopup;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$SpinnerPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$1;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->access$100(Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;)Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$SpinnerPopup;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$SpinnerPopup;->show()V

    .line 202
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
