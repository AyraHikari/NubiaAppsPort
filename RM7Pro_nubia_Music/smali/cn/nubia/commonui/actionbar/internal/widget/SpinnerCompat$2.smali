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
.field final synthetic a:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;)V
    .locals 0

    .prologue
    .line 701
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$2;->a:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$2;->a:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->a(Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;)Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$2;->a:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->a(Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;)Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$d;->show()V

    .line 707
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat$2;->a:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 708
    if-eqz v0, :cond_1

    .line 709
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 711
    :cond_1
    return-void
.end method
