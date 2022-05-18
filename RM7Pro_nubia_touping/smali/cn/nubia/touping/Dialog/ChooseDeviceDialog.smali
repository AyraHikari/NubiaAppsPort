.class public Lcn/nubia/touping/Dialog/ChooseDeviceDialog;
.super Lcn/nubia/touping/Dialog/BaseDialog;
.source "ChooseDeviceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/Dialog/ChooseDeviceDialog$OnClickListener;
    }
.end annotation


# static fields
.field public static final DEVICE_COMPUTER:Ljava/lang/String; = "PC"

.field public static final DEVICE_NOT_SELECT:Ljava/lang/String; = "none"

.field public static final DEVICE_TV:Ljava/lang/String; = "TV"


# instance fields
.field private mListener:Lcn/nubia/touping/Dialog/ChooseDeviceDialog$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0, p1}, Lcn/nubia/touping/Dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 17
    const v0, 0x7f04002c

    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/ChooseDeviceDialog;->setContentView(I)V

    .line 18
    invoke-virtual {p0, v1}, Lcn/nubia/touping/Dialog/ChooseDeviceDialog;->setCancelable(Z)V

    .line 19
    invoke-virtual {p0, v1}, Lcn/nubia/touping/Dialog/ChooseDeviceDialog;->setCanceledOnTouchOutside(Z)V

    .line 20
    invoke-direct {p0}, Lcn/nubia/touping/Dialog/ChooseDeviceDialog;->init()V

    .line 21
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 24
    const v0, 0x7f0e00a7

    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/ChooseDeviceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    const v0, 0x7f0e00aa

    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/ChooseDeviceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    const v0, 0x7f0e00dd

    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/ChooseDeviceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    const v0, 0x7f0e00de

    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/ChooseDeviceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 34
    :sswitch_0
    iget-object v0, p0, Lcn/nubia/touping/Dialog/ChooseDeviceDialog;->mListener:Lcn/nubia/touping/Dialog/ChooseDeviceDialog$OnClickListener;

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcn/nubia/touping/Dialog/ChooseDeviceDialog;->mListener:Lcn/nubia/touping/Dialog/ChooseDeviceDialog$OnClickListener;

    invoke-interface {v0}, Lcn/nubia/touping/Dialog/ChooseDeviceDialog$OnClickListener;->onChooseTv()V

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/touping/Dialog/ChooseDeviceDialog;->dismiss()V

    goto :goto_0

    .line 40
    :sswitch_1
    iget-object v0, p0, Lcn/nubia/touping/Dialog/ChooseDeviceDialog;->mListener:Lcn/nubia/touping/Dialog/ChooseDeviceDialog$OnClickListener;

    if-eqz v0, :cond_2

    .line 41
    iget-object v0, p0, Lcn/nubia/touping/Dialog/ChooseDeviceDialog;->mListener:Lcn/nubia/touping/Dialog/ChooseDeviceDialog$OnClickListener;

    invoke-interface {v0}, Lcn/nubia/touping/Dialog/ChooseDeviceDialog$OnClickListener;->onChooseComputer()V

    .line 43
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/touping/Dialog/ChooseDeviceDialog;->dismiss()V

    goto :goto_0

    .line 46
    :sswitch_2
    iget-object v0, p0, Lcn/nubia/touping/Dialog/ChooseDeviceDialog;->mListener:Lcn/nubia/touping/Dialog/ChooseDeviceDialog$OnClickListener;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcn/nubia/touping/Dialog/ChooseDeviceDialog;->mListener:Lcn/nubia/touping/Dialog/ChooseDeviceDialog$OnClickListener;

    invoke-interface {v0}, Lcn/nubia/touping/Dialog/ChooseDeviceDialog$OnClickListener;->onClickHelp()V

    goto :goto_0

    .line 51
    :sswitch_3
    iget-object v0, p0, Lcn/nubia/touping/Dialog/ChooseDeviceDialog;->mNegativeListener:Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;

    if-eqz v0, :cond_3

    .line 52
    iget-object v0, p0, Lcn/nubia/touping/Dialog/ChooseDeviceDialog;->mNegativeListener:Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;

    invoke-interface {v0, p1}, Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;->onNegativeBnClicked(Landroid/view/View;)V

    .line 54
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/touping/Dialog/ChooseDeviceDialog;->dismiss()V

    goto :goto_0

    .line 32
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e00a7 -> :sswitch_0
        0x7f0e00aa -> :sswitch_1
        0x7f0e00dd -> :sswitch_2
        0x7f0e00de -> :sswitch_3
    .end sparse-switch
.end method

.method public setOnClickListener(Lcn/nubia/touping/Dialog/ChooseDeviceDialog$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/touping/Dialog/ChooseDeviceDialog$OnClickListener;

    .prologue
    .line 60
    iput-object p1, p0, Lcn/nubia/touping/Dialog/ChooseDeviceDialog;->mListener:Lcn/nubia/touping/Dialog/ChooseDeviceDialog$OnClickListener;

    .line 61
    return-void
.end method
