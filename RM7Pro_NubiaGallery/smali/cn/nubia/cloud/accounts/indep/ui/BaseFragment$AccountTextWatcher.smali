.class public Lcn/nubia/cloud/accounts/indep/ui/BaseFragment$AccountTextWatcher;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/accounts/indep/ui/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountTextWatcher"
.end annotation


# instance fields
.field private mEditEnd:I

.field private mEditStart:I

.field private mEditText:Landroid/widget/EditText;

.field private final mMaxLength:I

.field private mTemp:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;I)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcn/nubia/cloud/accounts/indep/ui/BaseFragment$AccountTextWatcher;->mEditText:Landroid/widget/EditText;

    .line 60
    iput p2, p0, Lcn/nubia/cloud/accounts/indep/ui/BaseFragment$AccountTextWatcher;->mMaxLength:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 70
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/BaseFragment$AccountTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcn/nubia/cloud/accounts/indep/ui/BaseFragment$AccountTextWatcher;->mEditStart:I

    .line 71
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/BaseFragment$AccountTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcn/nubia/cloud/accounts/indep/ui/BaseFragment$AccountTextWatcher;->mEditEnd:I

    .line 72
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/BaseFragment$AccountTextWatcher;->mTemp:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Lcn/nubia/cloud/accounts/indep/ui/BaseFragment$AccountTextWatcher;->mMaxLength:I

    if-le v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcn/nubia/cloud/accounts/indep/ui/BaseFragment$AccountTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/cloud/accounts/indep/ui/BaseFragment$AccountTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/cloud/accounts/R$string;->account_input_text_too_long:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 76
    iget v0, p0, Lcn/nubia/cloud/accounts/indep/ui/BaseFragment$AccountTextWatcher;->mEditStart:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcn/nubia/cloud/accounts/indep/ui/BaseFragment$AccountTextWatcher;->mEditEnd:I

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 77
    iget v0, p0, Lcn/nubia/cloud/accounts/indep/ui/BaseFragment$AccountTextWatcher;->mEditStart:I

    .line 78
    iget-object v1, p0, Lcn/nubia/cloud/accounts/indep/ui/BaseFragment$AccountTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object p1, p0, Lcn/nubia/cloud/accounts/indep/ui/BaseFragment$AccountTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcn/nubia/cloud/accounts/indep/ui/BaseFragment$AccountTextWatcher;->mTemp:Ljava/lang/CharSequence;

    return-void
.end method
