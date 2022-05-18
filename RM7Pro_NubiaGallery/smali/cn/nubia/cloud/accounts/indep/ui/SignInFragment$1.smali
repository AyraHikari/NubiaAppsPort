.class Lcn/nubia/cloud/accounts/indep/ui/SignInFragment$1;
.super Ljava/lang/Object;
.source "SignInFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->initUserAgreementView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;


# direct methods
.method constructor <init>(Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment$1;->this$0:Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment$1;->this$0:Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;

    invoke-static {p1}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->access$000(Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
