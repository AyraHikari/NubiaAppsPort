.class public Lcn/nubia/touping/Dialog/BaseDialog;
.super Landroid/app/Dialog;
.source "BaseDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;,
        Lcn/nubia/touping/Dialog/BaseDialog$OnPositiveBnClickedListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mNegativeListener:Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;

.field protected mPositiveListener:Lcn/nubia/touping/Dialog/BaseDialog$OnPositiveBnClickedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const v0, 0x7f0a0180

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 21
    iput-object p1, p0, Lcn/nubia/touping/Dialog/BaseDialog;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 33
    invoke-virtual {p0}, Lcn/nubia/touping/Dialog/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 34
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcn/nubia/touping/Dialog/BaseDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 35
    invoke-virtual {p0}, Lcn/nubia/touping/Dialog/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 36
    invoke-virtual {p0}, Lcn/nubia/touping/Dialog/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x51

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 37
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/BaseDialog;->setCancelable(Z)V

    .line 28
    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/BaseDialog;->setCanceledOnTouchOutside(Z)V

    .line 29
    invoke-direct {p0}, Lcn/nubia/touping/Dialog/BaseDialog;->init()V

    .line 30
    return-void
.end method

.method public setOnNegativeBnClickedListener(Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;

    .prologue
    .line 52
    iput-object p1, p0, Lcn/nubia/touping/Dialog/BaseDialog;->mNegativeListener:Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;

    .line 53
    return-void
.end method

.method public setOnPositiveBnClickedListener(Lcn/nubia/touping/Dialog/BaseDialog$OnPositiveBnClickedListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/touping/Dialog/BaseDialog$OnPositiveBnClickedListener;

    .prologue
    .line 48
    iput-object p1, p0, Lcn/nubia/touping/Dialog/BaseDialog;->mPositiveListener:Lcn/nubia/touping/Dialog/BaseDialog$OnPositiveBnClickedListener;

    .line 49
    return-void
.end method
