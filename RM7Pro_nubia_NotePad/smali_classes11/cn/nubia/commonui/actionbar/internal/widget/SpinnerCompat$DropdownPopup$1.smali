.class Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup$1;
.super Ljava/lang/Object;
.source "SpinnerCompat.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;

.field final synthetic val$this$0:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;

    .prologue
    .line 990
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup$1;->this$1:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;

    iput-object p2, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup$1;->val$this$0:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 993
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup$1;->this$1:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p3}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 994
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup$1;->this$1:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->mOnItemClickListener:Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup$1;->this$1:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup$1;->this$1:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;

    .line 996
    invoke-static {v1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;->access$300(Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, p2, p3, v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->performItemClick(Landroid/view/View;IJ)Z

    .line 998
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup$1;->this$1:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;->dismiss()V

    .line 999
    return-void
.end method
