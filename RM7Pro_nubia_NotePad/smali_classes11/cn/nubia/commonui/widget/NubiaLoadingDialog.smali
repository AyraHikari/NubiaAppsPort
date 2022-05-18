.class public Lcn/nubia/commonui/widget/NubiaLoadingDialog;
.super Landroid/app/ProgressDialog;
.source "NubiaLoadingDialog.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLoadingMessage:Ljava/lang/CharSequence;

.field private mMessageTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/widget/NubiaLoadingDialog;-><init>(Landroid/content/Context;I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 22
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaLoadingDialog;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x2

    .line 32
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/widget/NubiaLoadingDialog;->setCancelable(Z)V

    .line 33
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/widget/NubiaLoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 34
    sget v1, Lcn/nubia/commonui/R$layout;->nubia_loading_dialog:I

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/widget/NubiaLoadingDialog;->setContentView(I)V

    .line 35
    sget v1, Lcn/nubia/commonui/R$id;->loading_message:I

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/widget/NubiaLoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaLoadingDialog;->mMessageTextView:Landroid/widget/TextView;

    .line 37
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLoadingDialog;->mLoadingMessage:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 38
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLoadingDialog;->mContext:Landroid/content/Context;

    sget v2, Lcn/nubia/commonui/R$string;->nubia_loading_dialog_please_waiting:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaLoadingDialog;->mLoadingMessage:Ljava/lang/CharSequence;

    .line 40
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLoadingDialog;->mMessageTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLoadingDialog;->mLoadingMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 43
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 44
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 45
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaLoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getLoadingMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLoadingDialog;->mLoadingMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    .line 28
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLoadingDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaLoadingDialog;->init(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public setLoadingMessage(I)V
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLoadingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaLoadingDialog;->mLoadingMessage:Ljava/lang/CharSequence;

    .line 61
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLoadingDialog;->mMessageTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLoadingDialog;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLoadingDialog;->mLoadingMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_0
    return-void
.end method

.method public setLoadingMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 53
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaLoadingDialog;->mLoadingMessage:Ljava/lang/CharSequence;

    .line 54
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLoadingDialog;->mMessageTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLoadingDialog;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLoadingDialog;->mLoadingMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_0
    return-void
.end method
