.class public Lcn/nubia/touping/Dialog/CenterDialog;
.super Landroid/app/Dialog;
.source "CenterDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/Dialog/CenterDialog$OnNegativeBnClickedListener;,
        Lcn/nubia/touping/Dialog/CenterDialog$OnPositiveBnClickedListener;
    }
.end annotation


# instance fields
.field private mMessage:Landroid/widget/TextView;

.field private mNegativeBn:Landroid/widget/Button;

.field protected mNegativeListener:Lcn/nubia/touping/Dialog/CenterDialog$OnNegativeBnClickedListener;

.field private mPositiveBn:Landroid/widget/Button;

.field protected mPositiveListener:Lcn/nubia/touping/Dialog/CenterDialog$OnPositiveBnClickedListener;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const v0, 0x7f0a0180

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 23
    const v0, 0x7f040052

    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/CenterDialog;->setContentView(I)V

    .line 24
    invoke-direct {p0}, Lcn/nubia/touping/Dialog/CenterDialog;->init()V

    .line 25
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 34
    const v0, 0x7f0e009b

    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/CenterDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/touping/Dialog/CenterDialog;->mTitle:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f0e009c

    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/CenterDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/touping/Dialog/CenterDialog;->mMessage:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f0e009e

    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/CenterDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/touping/Dialog/CenterDialog;->mPositiveBn:Landroid/widget/Button;

    .line 37
    const v0, 0x7f0e009d

    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/CenterDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/touping/Dialog/CenterDialog;->mNegativeBn:Landroid/widget/Button;

    .line 38
    iget-object v0, p0, Lcn/nubia/touping/Dialog/CenterDialog;->mPositiveBn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v0, p0, Lcn/nubia/touping/Dialog/CenterDialog;->mNegativeBn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 62
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/touping/Dialog/CenterDialog;->mPositiveListener:Lcn/nubia/touping/Dialog/CenterDialog$OnPositiveBnClickedListener;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcn/nubia/touping/Dialog/CenterDialog;->mPositiveListener:Lcn/nubia/touping/Dialog/CenterDialog$OnPositiveBnClickedListener;

    invoke-interface {v0, p1}, Lcn/nubia/touping/Dialog/CenterDialog$OnPositiveBnClickedListener;->onPositiveBnClicked(Landroid/view/View;)V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/touping/Dialog/CenterDialog;->dismiss()V

    goto :goto_0

    .line 68
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/touping/Dialog/CenterDialog;->mNegativeListener:Lcn/nubia/touping/Dialog/CenterDialog$OnNegativeBnClickedListener;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcn/nubia/touping/Dialog/CenterDialog;->mNegativeListener:Lcn/nubia/touping/Dialog/CenterDialog$OnNegativeBnClickedListener;

    invoke-interface {v0, p1}, Lcn/nubia/touping/Dialog/CenterDialog$OnNegativeBnClickedListener;->onNegativeBnClicked(Landroid/view/View;)V

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/touping/Dialog/CenterDialog;->dismiss()V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x7f0e009d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-direct {p0}, Lcn/nubia/touping/Dialog/CenterDialog;->init()V

    .line 31
    return-void
.end method

.method public setMessage(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcn/nubia/touping/Dialog/CenterDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 93
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 88
    iget-object v0, p0, Lcn/nubia/touping/Dialog/CenterDialog;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method

.method public setNegativeBnEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 124
    iget-object v0, p0, Lcn/nubia/touping/Dialog/CenterDialog;->mNegativeBn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 125
    return-void
.end method

.method public setNegativeBnText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcn/nubia/touping/Dialog/CenterDialog;->mNegativeBn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 113
    return-void
.end method

.method public setNegativeBnText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 108
    iget-object v0, p0, Lcn/nubia/touping/Dialog/CenterDialog;->mNegativeBn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method

.method public setNegativeBnTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcn/nubia/touping/Dialog/CenterDialog;->mNegativeBn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 117
    return-void
.end method

.method public setOnNegativeBnClickedListener(Lcn/nubia/touping/Dialog/CenterDialog$OnNegativeBnClickedListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/touping/Dialog/CenterDialog$OnNegativeBnClickedListener;

    .prologue
    .line 55
    iput-object p1, p0, Lcn/nubia/touping/Dialog/CenterDialog;->mNegativeListener:Lcn/nubia/touping/Dialog/CenterDialog$OnNegativeBnClickedListener;

    .line 56
    return-void
.end method

.method public setOnPositiveBnClickedListener(Lcn/nubia/touping/Dialog/CenterDialog$OnPositiveBnClickedListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/touping/Dialog/CenterDialog$OnPositiveBnClickedListener;

    .prologue
    .line 51
    iput-object p1, p0, Lcn/nubia/touping/Dialog/CenterDialog;->mPositiveListener:Lcn/nubia/touping/Dialog/CenterDialog$OnPositiveBnClickedListener;

    .line 52
    return-void
.end method

.method public setPositiveBnEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 120
    iget-object v0, p0, Lcn/nubia/touping/Dialog/CenterDialog;->mPositiveBn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 121
    return-void
.end method

.method public setPositiveBnText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcn/nubia/touping/Dialog/CenterDialog;->mPositiveBn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 101
    return-void
.end method

.method public setPositiveBnText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 96
    iget-object v0, p0, Lcn/nubia/touping/Dialog/CenterDialog;->mPositiveBn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method

.method public setPositiveBnTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcn/nubia/touping/Dialog/CenterDialog;->mPositiveBn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 105
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcn/nubia/touping/Dialog/CenterDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 85
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/touping/Dialog/CenterDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    return-void
.end method
