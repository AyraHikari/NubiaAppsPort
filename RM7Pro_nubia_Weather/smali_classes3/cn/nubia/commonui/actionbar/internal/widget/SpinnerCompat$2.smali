.class Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$2;
.super Ljava/lang/Object;
.source "SpinnerCompat.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    .prologue
    .line 701
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$2;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 704
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$2;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-static {v1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->access$100(Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;)Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$SpinnerPopup;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$SpinnerPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 705
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$2;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-static {v1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->access$100(Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;)Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$SpinnerPopup;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$SpinnerPopup;->show()V

    .line 707
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$2;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 708
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_1

    .line 709
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 711
    :cond_1
    return-void
.end method
