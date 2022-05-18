.class Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowPopup;
.super Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowPopup"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "menu"    # Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;
    .param p4, "anchorView"    # Landroid/view/View;
    .param p5, "overflowOnly"    # Z

    .prologue
    .line 674
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowPopup;->this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    .line 675
    sget v5, Lcn/nubia/commonui/R$attr;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 676
    const v0, 0x800005

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowPopup;->setGravity(I)V

    .line 677
    iget-object v0, p1, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->mPopupPresenterCallback:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowPopup;->setCallback(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V

    .line 678
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 682
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 683
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowPopup;->this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->access$400(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->close()V

    .line 684
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowPopup;->this$0:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->access$202(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowPopup;)Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter$OverflowPopup;

    .line 685
    return-void
.end method
