.class Lcn/nubia/cloud/accounts/indep/ui/SignInFragment$2;
.super Ljava/lang/Object;
.source "SignInFragment.java"

# interfaces
.implements Lcn/nubia/cloud/utils/SimpleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/utils/SimpleListener<",
        "Lcn/nubia/cloud/utils/NBResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;


# direct methods
.method constructor <init>(Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment$2;->this$0:Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcn/nubia/cloud/utils/NBResponse;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment$2;->this$0:Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;

    invoke-static {v0}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->access$700(Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->access$800(Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;Landroid/app/ProgressDialog;)V

    .line 137
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment$2;->this$0:Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;

    invoke-virtual {v0}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {p1}, Lcn/nubia/cloud/utils/NBResponse;->isOK()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/cloud/utils/NBResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 133
    check-cast p1, Lcn/nubia/cloud/utils/NBResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment$2;->onComplete(Lcn/nubia/cloud/utils/NBResponse;)V

    return-void
.end method

.method public onException(ILjava/lang/String;)V
    .locals 1

    .line 150
    iget-object p1, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment$2;->this$0:Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;

    invoke-static {p1}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->access$700(Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->access$800(Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;Landroid/app/ProgressDialog;)V

    .line 151
    iget-object p1, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment$2;->this$0:Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;

    invoke-virtual {p1}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 153
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
