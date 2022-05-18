.class Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OpenOverflowRunnable;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenOverflowRunnable"
.end annotation


# instance fields
.field private mPopup:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowPopup;

.field final synthetic this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowPopup;)V
    .locals 0
    .param p2, "popup"    # Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowPopup;

    .prologue
    .line 750
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 751
    iput-object p2, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowPopup;

    .line 752
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 755
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-static {v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->access$800(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->changeMenuMode()V

    .line 756
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-static {v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->access$900(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 757
    .local v0, "menuView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowPopup;->tryShow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 758
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowPopup;

    invoke-static {v1, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->access$202(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowPopup;)Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowPopup;

    .line 760
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->access$302(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OpenOverflowRunnable;)Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 761
    return-void
.end method
