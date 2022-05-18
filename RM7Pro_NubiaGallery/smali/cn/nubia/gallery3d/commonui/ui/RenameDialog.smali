.class public Lcn/nubia/gallery3d/commonui/ui/RenameDialog;
.super Lcn/nubia/gallery3d/commonui/ui/BaseDialog;
.source "RenameDialog.java"


# instance fields
.field private editText:Landroid/widget/EditText;

.field private mCtx:Landroid/content/Context;

.field private tvLeft:Landroid/widget/TextView;

.field private tvRight:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 26
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/commonui/ui/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p1, p0, Lcn/nubia/gallery3d/commonui/ui/RenameDialog;->mCtx:Landroid/content/Context;

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c002a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/commonui/ui/RenameDialog;->mContentView:Landroid/view/View;

    .line 30
    invoke-direct {p0}, Lcn/nubia/gallery3d/commonui/ui/RenameDialog;->initView()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcn/nubia/gallery3d/commonui/ui/RenameDialog;->initDialog()V

    .line 38
    iget-object v0, p0, Lcn/nubia/gallery3d/commonui/ui/RenameDialog;->mContentView:Landroid/view/View;

    const v1, 0x7f09008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/gallery3d/commonui/ui/RenameDialog;->tvLeft:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Lcn/nubia/gallery3d/commonui/ui/RenameDialog;->mContentView:Landroid/view/View;

    const v1, 0x7f090090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/gallery3d/commonui/ui/RenameDialog;->tvRight:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcn/nubia/gallery3d/commonui/ui/RenameDialog;->mContentView:Landroid/view/View;

    const v1, 0x7f090091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/nubia/gallery3d/commonui/ui/RenameDialog;->editText:Landroid/widget/EditText;

    .line 41
    invoke-virtual {p0}, Lcn/nubia/gallery3d/commonui/ui/RenameDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 96
    invoke-super {p0}, Lcn/nubia/gallery3d/commonui/ui/BaseDialog;->dismiss()V

    return-void
.end method

.method public getEdit()Landroid/widget/EditText;
    .locals 1

    .line 61
    iget-object v0, p0, Lcn/nubia/gallery3d/commonui/ui/RenameDialog;->editText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getEditString()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcn/nubia/gallery3d/commonui/ui/RenameDialog;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 56
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setEdit(Ljava/lang/String;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcn/nubia/gallery3d/commonui/ui/RenameDialog;->editText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 50
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    if-eqz p2, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/commonui/ui/RenameDialog;->tvRight:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    iget-object p1, p0, Lcn/nubia/gallery3d/commonui/ui/RenameDialog;->tvRight:Landroid/widget/TextView;

    new-instance v0, Lcn/nubia/gallery3d/commonui/ui/RenameDialog$2;

    invoke-direct {v0, p0, p2}, Lcn/nubia/gallery3d/commonui/ui/RenameDialog$2;-><init>(Lcn/nubia/gallery3d/commonui/ui/RenameDialog;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    if-eqz p2, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/commonui/ui/RenameDialog;->tvLeft:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 67
    iget-object p1, p0, Lcn/nubia/gallery3d/commonui/ui/RenameDialog;->tvLeft:Landroid/widget/TextView;

    new-instance v0, Lcn/nubia/gallery3d/commonui/ui/RenameDialog$1;

    invoke-direct {v0, p0, p2}, Lcn/nubia/gallery3d/commonui/ui/RenameDialog$1;-><init>(Lcn/nubia/gallery3d/commonui/ui/RenameDialog;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method
