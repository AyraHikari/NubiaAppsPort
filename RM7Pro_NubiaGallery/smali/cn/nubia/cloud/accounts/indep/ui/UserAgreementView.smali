.class public Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;
.super Landroid/widget/LinearLayout;
.source "UserAgreementView.java"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mConvertView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 29
    sget v0, Lcn/nubia/cloud/accounts/R$layout;->account_user_agreement_layout:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;->mConvertView:Landroid/view/View;

    .line 30
    iput-object p1, p0, Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;->showAgreementContent()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;->showPrivacyContent()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;)Landroid/widget/CheckBox;
    .locals 0

    .line 17
    iget-object p0, p0, Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;->mCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private showAgreementContent()V
    .locals 2

    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "https://account.nubia.com/res/html/agreement.html"

    .line 68
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 71
    :try_start_0
    iget-object v1, p0, Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private showPrivacyContent()V
    .locals 2

    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "https://account.nubia.com/res/html/privacy.html"

    .line 80
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 83
    :try_start_0
    iget-object v1, p0, Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getCheckedStatus()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 35
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 36
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;->mConvertView:Landroid/view/View;

    sget v1, Lcn/nubia/cloud/accounts/R$id;->account_regist_policy_label_link:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 37
    new-instance v1, Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView$1;

    invoke-direct {v1, p0}, Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView$1;-><init>(Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;->mConvertView:Landroid/view/View;

    sget v1, Lcn/nubia/cloud/accounts/R$id;->account_regist_policy_label_link2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 44
    new-instance v1, Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView$2;

    invoke-direct {v1, p0}, Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView$2;-><init>(Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;->mConvertView:Landroid/view/View;

    sget v1, Lcn/nubia/cloud/accounts/R$id;->account_regist_policy_checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;->mCheckBox:Landroid/widget/CheckBox;

    .line 52
    sget v0, Lcn/nubia/cloud/accounts/R$id;->bound_click_view:I

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 53
    new-instance v1, Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView$3;

    invoke-direct {v1, p0}, Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView$3;-><init>(Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method
