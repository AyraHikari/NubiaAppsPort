.class public Lcn/nubia/touping/Dialog/CTADialog;
.super Lcn/nubia/touping/Dialog/BaseDialog;
.source "CTADialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/Dialog/CTADialog$OnNegativeBnClickedListener;,
        Lcn/nubia/touping/Dialog/CTADialog$OnPositiveBnClickedListener;
    }
.end annotation


# instance fields
.field private mNegativeListener:Lcn/nubia/touping/Dialog/CTADialog$OnNegativeBnClickedListener;

.field private mPositiveListener:Lcn/nubia/touping/Dialog/CTADialog$OnPositiveBnClickedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcn/nubia/touping/Dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 19
    const v0, 0x7f04002d

    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/CTADialog;->setContentView(I)V

    .line 20
    invoke-direct {p0}, Lcn/nubia/touping/Dialog/CTADialog;->init()V

    .line 21
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 24
    const v3, 0x7f0e009e

    invoke-virtual {p0, v3}, Lcn/nubia/touping/Dialog/CTADialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 25
    .local v1, "positiveBn":Landroid/widget/Button;
    const v3, 0x7f0e009d

    invoke-virtual {p0, v3}, Lcn/nubia/touping/Dialog/CTADialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 26
    .local v0, "negativeBn":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    const v3, 0x7f0e00e0

    invoke-virtual {p0, v3}, Lcn/nubia/touping/Dialog/CTADialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 29
    .local v2, "tvBottom":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 30
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/touping/Dialog/CTADialog;->mPositiveListener:Lcn/nubia/touping/Dialog/CTADialog$OnPositiveBnClickedListener;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcn/nubia/touping/Dialog/CTADialog;->mPositiveListener:Lcn/nubia/touping/Dialog/CTADialog$OnPositiveBnClickedListener;

    invoke-interface {v0, p1}, Lcn/nubia/touping/Dialog/CTADialog$OnPositiveBnClickedListener;->onPositiveBnClicked(Landroid/view/View;)V

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/touping/Dialog/CTADialog;->dismiss()V

    goto :goto_0

    .line 58
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/touping/Dialog/CTADialog;->mNegativeListener:Lcn/nubia/touping/Dialog/CTADialog$OnNegativeBnClickedListener;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcn/nubia/touping/Dialog/CTADialog;->mNegativeListener:Lcn/nubia/touping/Dialog/CTADialog$OnNegativeBnClickedListener;

    invoke-interface {v0, p1}, Lcn/nubia/touping/Dialog/CTADialog$OnNegativeBnClickedListener;->onNegativeBnClicked(Landroid/view/View;)V

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/touping/Dialog/CTADialog;->dismiss()V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x7f0e009d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnNegativeBnClickedListener(Lcn/nubia/touping/Dialog/CTADialog$OnNegativeBnClickedListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/touping/Dialog/CTADialog$OnNegativeBnClickedListener;

    .prologue
    .line 45
    iput-object p1, p0, Lcn/nubia/touping/Dialog/CTADialog;->mNegativeListener:Lcn/nubia/touping/Dialog/CTADialog$OnNegativeBnClickedListener;

    .line 46
    return-void
.end method

.method public setOnPositiveBnClickedListener(Lcn/nubia/touping/Dialog/CTADialog$OnPositiveBnClickedListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/touping/Dialog/CTADialog$OnPositiveBnClickedListener;

    .prologue
    .line 41
    iput-object p1, p0, Lcn/nubia/touping/Dialog/CTADialog;->mPositiveListener:Lcn/nubia/touping/Dialog/CTADialog$OnPositiveBnClickedListener;

    .line 42
    return-void
.end method
