.class Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;
.super Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 6

    .prologue
    .line 675
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;->a:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    .line 676
    sget v5, Lcn/nubia/commonui/R$attr;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 677
    const v0, 0x800005

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;->setGravity(I)V

    .line 678
    iget-object v0, p1, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mPopupPresenterCallback:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$f;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;->setCallback(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V

    .line 679
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 683
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 684
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;->a:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->access$400(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->close()V

    .line 685
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;->a:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->access$202(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;)Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$e;

    .line 686
    return-void
.end method
