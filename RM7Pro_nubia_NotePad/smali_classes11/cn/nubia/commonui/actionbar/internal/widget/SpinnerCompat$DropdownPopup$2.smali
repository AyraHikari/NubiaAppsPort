.class Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup$2;
.super Ljava/lang/Object;
.source "SpinnerCompat.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;

    .prologue
    .line 1079
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup$2;->this$1:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup$2;->this$1:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;->computeContentWidth()V

    .line 1086
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup$2;->this$1:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;->access$501(Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$DropdownPopup;)V

    .line 1087
    return-void
.end method
