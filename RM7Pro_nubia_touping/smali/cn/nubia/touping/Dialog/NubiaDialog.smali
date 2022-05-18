.class public Lcn/nubia/touping/Dialog/NubiaDialog;
.super Lcn/nubia/touping/Dialog/BaseDialog;
.source "NubiaDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mMessage:Landroid/widget/TextView;

.field private mNegativeBn:Landroid/widget/Button;

.field private mPositiveBn:Landroid/widget/Button;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcn/nubia/touping/Dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 19
    const v0, 0x7f040052

    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/NubiaDialog;->setContentView(I)V

    .line 20
    invoke-direct {p0}, Lcn/nubia/touping/Dialog/NubiaDialog;->init()V

    .line 21
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 24
    const v0, 0x7f0e009b

    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/NubiaDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/touping/Dialog/NubiaDialog;->mTitle:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f0e009c

    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/NubiaDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/touping/Dialog/NubiaDialog;->mMessage:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f0e009e

    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/NubiaDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/touping/Dialog/NubiaDialog;->mPositiveBn:Landroid/widget/Button;

    .line 27
    const v0, 0x7f0e009d

    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/NubiaDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/touping/Dialog/NubiaDialog;->mNegativeBn:Landroid/widget/Button;

    .line 28
    iget-object v0, p0, Lcn/nubia/touping/Dialog/NubiaDialog;->mPositiveBn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v0, p0, Lcn/nubia/touping/Dialog/NubiaDialog;->mNegativeBn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 48
    :goto_0
    return-void

    .line 36
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/touping/Dialog/NubiaDialog;->mPositiveListener:Lcn/nubia/touping/Dialog/BaseDialog$OnPositiveBnClickedListener;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcn/nubia/touping/Dialog/NubiaDialog;->mPositiveListener:Lcn/nubia/touping/Dialog/BaseDialog$OnPositiveBnClickedListener;

    invoke-interface {v0, p1}, Lcn/nubia/touping/Dialog/BaseDialog$OnPositiveBnClickedListener;->onPositiveBnClicked(Landroid/view/View;)V

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/touping/Dialog/NubiaDialog;->dismiss()V

    goto :goto_0

    .line 42
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/touping/Dialog/NubiaDialog;->mNegativeListener:Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcn/nubia/touping/Dialog/NubiaDialog;->mNegativeListener:Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;

    invoke-interface {v0, p1}, Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;->onNegativeBnClicked(Landroid/view/View;)V

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/touping/Dialog/NubiaDialog;->dismiss()V

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x7f0e009d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMessage(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/touping/Dialog/NubiaDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 66
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 61
    iget-object v0, p0, Lcn/nubia/touping/Dialog/NubiaDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method public setNegativeBnText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcn/nubia/touping/Dialog/NubiaDialog;->mNegativeBn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 86
    return-void
.end method

.method public setNegativeBnText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 81
    iget-object v0, p0, Lcn/nubia/touping/Dialog/NubiaDialog;->mNegativeBn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method public setNegativeBnTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcn/nubia/touping/Dialog/NubiaDialog;->mNegativeBn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 90
    return-void
.end method

.method public setPositiveBnText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcn/nubia/touping/Dialog/NubiaDialog;->mPositiveBn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 74
    return-void
.end method

.method public setPositiveBnText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 69
    iget-object v0, p0, Lcn/nubia/touping/Dialog/NubiaDialog;->mPositiveBn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method

.method public setPositiveBnTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcn/nubia/touping/Dialog/NubiaDialog;->mPositiveBn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 78
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcn/nubia/touping/Dialog/NubiaDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 58
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/touping/Dialog/NubiaDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method
