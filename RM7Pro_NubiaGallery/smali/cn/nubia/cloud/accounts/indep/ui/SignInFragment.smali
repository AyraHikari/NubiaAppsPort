.class public Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;
.super Lcn/nubia/cloud/accounts/indep/ui/BaseFragment;
.source "SignInFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/accounts/indep/ui/SignInFragment$MyClickListener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCancelBtn:Landroid/widget/Button;

.field private mForgetPasswordTv:Landroid/widget/TextView;

.field private mIsShowPassword:Z

.field private final mListener:Lcn/nubia/cloud/utils/SimpleListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/utils/NBResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mLoginBtn:Landroid/widget/Button;

.field private mLoginTask:Lcn/nubia/cloud/accounts/indep/ui/LoginTask;

.field private mOtherWayLogin:Landroid/widget/LinearLayout;

.field private mPasswordEdit:Landroid/widget/EditText;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mShowPassword:Landroid/widget/TextView;

.field private mUserEdit:Landroid/widget/EditText;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcn/nubia/cloud/accounts/indep/ui/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mIsShowPassword:Z

    .line 133
    new-instance v0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment$2;

    invoke-direct {v0, p0}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment$2;-><init>(Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;)V

    iput-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mListener:Lcn/nubia/cloud/utils/SimpleListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;)Landroid/widget/Button;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mLoginBtn:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->onLoginBtnClick()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;)Landroid/widget/Button;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mCancelBtn:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;)Landroid/app/Activity;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;)Landroid/widget/TextView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mShowPassword:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->showOrHidePassword()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;)Landroid/app/ProgressDialog;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->hideProgress(Landroid/app/ProgressDialog;)V

    return-void
.end method

.method private createdProgressDialog(I)Landroid/app/ProgressDialog;
    .locals 2

    .line 173
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 174
    iget-object v1, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 175
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-object v0
.end method

.method private getPhoneNumber()Ljava/lang/String;
    .locals 3

    .line 50
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 52
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v1, "+86"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "86"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 59
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private hideProgress(Landroid/app/ProgressDialog;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private initButtons()V
    .locals 3

    .line 90
    new-instance v0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment$MyClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment$MyClickListener;-><init>(Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;Lcn/nubia/cloud/accounts/indep/ui/SignInFragment$1;)V

    .line 91
    iget-object v1, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mView:Landroid/view/View;

    sget v2, Lcn/nubia/cloud/accounts/R$id;->other_way_login:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mOtherWayLogin:Landroid/widget/LinearLayout;

    .line 92
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v1, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mView:Landroid/view/View;

    sget v2, Lcn/nubia/cloud/accounts/R$id;->forget_password:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mForgetPasswordTv:Landroid/widget/TextView;

    .line 94
    iget-object v1, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mView:Landroid/view/View;

    sget v2, Lcn/nubia/cloud/accounts/R$id;->right_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mLoginBtn:Landroid/widget/Button;

    .line 95
    sget v2, Lcn/nubia/cloud/accounts/R$string;->section_login_by_email_button:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 96
    iget-object v1, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mView:Landroid/view/View;

    sget v2, Lcn/nubia/cloud/accounts/R$id;->left_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mCancelBtn:Landroid/widget/Button;

    .line 97
    sget v2, Lcn/nubia/cloud/accounts/R$string;->phone_regist_cancel:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 98
    iget-object v1, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v1, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mLoginBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v1, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mForgetPasswordTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initEditViews()V
    .locals 4

    .line 82
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mView:Landroid/view/View;

    sget v1, Lcn/nubia/cloud/accounts/R$id;->user:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mUserEdit:Landroid/widget/EditText;

    .line 83
    invoke-direct {p0}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mView:Landroid/view/View;

    sget v1, Lcn/nubia/cloud/accounts/R$id;->password:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mPasswordEdit:Landroid/widget/EditText;

    .line 85
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mUserEdit:Landroid/widget/EditText;

    new-instance v1, Lcn/nubia/cloud/accounts/indep/ui/BaseFragment$AccountTextWatcher;

    iget-object v2, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mUserEdit:Landroid/widget/EditText;

    const/16 v3, 0x28

    invoke-direct {v1, v2, v3}, Lcn/nubia/cloud/accounts/indep/ui/BaseFragment$AccountTextWatcher;-><init>(Landroid/widget/EditText;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 86
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mPasswordEdit:Landroid/widget/EditText;

    new-instance v1, Lcn/nubia/cloud/accounts/indep/ui/BaseFragment$AccountTextWatcher;

    iget-object v2, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mPasswordEdit:Landroid/widget/EditText;

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lcn/nubia/cloud/accounts/indep/ui/BaseFragment$AccountTextWatcher;-><init>(Landroid/widget/EditText;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private initUserAgreementView()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mView:Landroid/view/View;

    sget v1, Lcn/nubia/cloud/accounts/R$id;->user_agreement_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;

    .line 73
    new-instance v1, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment$1;

    invoke-direct {v1, p0}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment$1;-><init>(Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;)V

    invoke-virtual {v0, v1}, Lcn/nubia/cloud/accounts/indep/ui/UserAgreementView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private initViews()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->initEditViews()V

    .line 66
    invoke-direct {p0}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->initButtons()V

    .line 67
    invoke-direct {p0}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->initUserAgreementView()V

    return-void
.end method

.method private onLoginBtnClick()V
    .locals 5

    .line 160
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mUserEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    iget-object v2, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0, v2}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->hideProgress(Landroid/app/ProgressDialog;)V

    .line 163
    sget v2, Lcn/nubia/cloud/accounts/R$string;->account_longin_progress:I

    invoke-direct {p0, v2}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->createdProgressDialog(I)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 164
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 165
    iget-object v2, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mLoginTask:Lcn/nubia/cloud/accounts/indep/ui/LoginTask;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 166
    invoke-virtual {v2, v3}, Lcn/nubia/cloud/accounts/indep/ui/LoginTask;->cancel(Z)Z

    .line 168
    :cond_0
    new-instance v2, Lcn/nubia/cloud/accounts/indep/ui/LoginTask;

    iget-object v3, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mListener:Lcn/nubia/cloud/utils/SimpleListener;

    invoke-direct {v2, v3, v0, v1, v4}, Lcn/nubia/cloud/accounts/indep/ui/LoginTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/cloud/utils/SimpleListener;)V

    iput-object v2, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mLoginTask:Lcn/nubia/cloud/accounts/indep/ui/LoginTask;

    .line 169
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v0, v1}, Lcn/nubia/cloud/accounts/indep/ui/LoginTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private showErrorMessage(Ljava/lang/String;)V
    .locals 2

    .line 187
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showOrHidePassword()V
    .locals 4

    .line 104
    iget-boolean v0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mIsShowPassword:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcn/nubia/cloud/accounts/R$drawable;->password_show:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 108
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mPasswordEdit:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcn/nubia/cloud/accounts/R$drawable;->password_hide:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 113
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mPasswordEdit:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 115
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mIsShowPassword:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mIsShowPassword:Z

    .line 116
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->postInvalidate()V

    return-void
.end method


# virtual methods
.method protected onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 43
    sget p3, Lcn/nubia/cloud/accounts/R$layout;->account_signin_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mView:Landroid/view/View;

    .line 44
    invoke-virtual {p0}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mActivity:Landroid/app/Activity;

    .line 45
    invoke-direct {p0}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->initViews()V

    .line 46
    iget-object p1, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 196
    invoke-super {p0}, Lcn/nubia/cloud/accounts/indep/ui/BaseFragment;->onDestroy()V

    .line 197
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0, v0}, Lcn/nubia/cloud/accounts/indep/ui/SignInFragment;->hideProgress(Landroid/app/ProgressDialog;)V

    return-void
.end method
