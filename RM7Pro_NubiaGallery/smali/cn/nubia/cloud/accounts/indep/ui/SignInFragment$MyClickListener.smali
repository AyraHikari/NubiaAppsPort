.class Lcn/nubia/cloud/accounts/indep/ui/SignInFragment$MyClickListener;
.super Ljava/lang/Object;
.source "SignInFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;


# direct methods
.method private constructor <init>(Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment$MyClickListener;->this$0:Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;Lcn/nubia/cloud/accounts/indep/ui/SignInFragment$1;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment$MyClickListener;-><init>(Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment$MyClickListener;->this$0:Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;

    invoke-static {v0}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->access$000(Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 124
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment$MyClickListener;->this$0:Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;

    invoke-static {v0}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->access$200(Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment$MyClickListener;->this$0:Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;

    invoke-static {v0}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->access$300(Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 126
    iget-object p1, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment$MyClickListener;->this$0:Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;

    invoke-static {p1}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->access$400(Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment$MyClickListener;->this$0:Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;

    invoke-static {v0}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->access$500(Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 128
    iget-object p1, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment$MyClickListener;->this$0:Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;

    invoke-static {p1}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->access$600(Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;)V

    :cond_2
    :goto_0
    return-void
.end method
