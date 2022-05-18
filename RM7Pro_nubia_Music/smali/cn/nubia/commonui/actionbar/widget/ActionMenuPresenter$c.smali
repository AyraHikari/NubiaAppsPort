.class Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$c;
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
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

.field private b:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;)V
    .locals 0

    .prologue
    .line 751
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$c;->a:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 752
    iput-object p2, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$c;->b:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;

    .line 753
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 756
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$c;->a:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->access$800(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->changeMenuMode()V

    .line 757
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$c;->a:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->access$900(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 758
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$c;->b:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;->tryShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$c;->a:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$c;->b:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;

    invoke-static {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->access$202(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;)Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;

    .line 761
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$c;->a:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->access$302(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$c;)Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$c;

    .line 762
    return-void
.end method
