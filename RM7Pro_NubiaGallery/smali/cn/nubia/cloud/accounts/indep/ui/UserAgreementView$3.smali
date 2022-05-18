.class Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView$3;
.super Ljava/lang/Object;
.source "UserAgreementView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;


# direct methods
.method constructor <init>(Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView$3;->this$0:Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 56
    iget-object p1, p0, Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView$3;->this$0:Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;

    invoke-static {p1}, Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;->access$200(Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView$3;->this$0:Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;

    invoke-static {p1}, Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;->access$200(Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;)Landroid/widget/CheckBox;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object p1, p0, Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView$3;->this$0:Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;

    invoke-static {p1}, Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;->access$200(Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;)Landroid/widget/CheckBox;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void
.end method
