.class public Lcn/nubia/touping/Dialog/ScreenOrientationDialog;
.super Lcn/nubia/touping/Dialog/BaseDialog;
.source "ScreenOrientationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/Dialog/ScreenOrientationDialog$OnClickListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLandscapeView:Landroid/view/View;

.field private mListener:Lcn/nubia/touping/Dialog/ScreenOrientationDialog$OnClickListener;

.field private mPortraitView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0, p1}, Lcn/nubia/touping/Dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p1, p0, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;->mContext:Landroid/content/Context;

    .line 19
    const v0, 0x7f040055

    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;->setContentView(I)V

    .line 20
    invoke-virtual {p0, v1}, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;->setCancelable(Z)V

    .line 21
    invoke-virtual {p0, v1}, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;->setCanceledOnTouchOutside(Z)V

    .line 22
    invoke-direct {p0}, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;->init()V

    .line 23
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 26
    const v0, 0x7f0e011a

    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;->mLandscapeView:Landroid/view/View;

    .line 27
    iget-object v0, p0, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;->mLandscapeView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    const v0, 0x7f0e011b

    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;->mPortraitView:Landroid/view/View;

    .line 29
    iget-object v0, p0, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;->mPortraitView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    const v0, 0x7f0e011c

    invoke-virtual {p0, v0}, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 68
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;->mListener:Lcn/nubia/touping/Dialog/ScreenOrientationDialog$OnClickListener;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;->mListener:Lcn/nubia/touping/Dialog/ScreenOrientationDialog$OnClickListener;

    invoke-interface {v0}, Lcn/nubia/touping/Dialog/ScreenOrientationDialog$OnClickListener;->onChoosePortrait()V

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;->dismiss()V

    goto :goto_0

    .line 56
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;->mListener:Lcn/nubia/touping/Dialog/ScreenOrientationDialog$OnClickListener;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;->mListener:Lcn/nubia/touping/Dialog/ScreenOrientationDialog$OnClickListener;

    invoke-interface {v0}, Lcn/nubia/touping/Dialog/ScreenOrientationDialog$OnClickListener;->onChooseLandscape()V

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;->dismiss()V

    goto :goto_0

    .line 62
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;->mNegativeListener:Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;->mNegativeListener:Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;

    invoke-interface {v0, p1}, Lcn/nubia/touping/Dialog/BaseDialog$OnNegativeBnClickedListener;->onNegativeBnClicked(Landroid/view/View;)V

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;->dismiss()V

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e011a
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setOnClickListener(Lcn/nubia/touping/Dialog/ScreenOrientationDialog$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/touping/Dialog/ScreenOrientationDialog$OnClickListener;

    .prologue
    .line 71
    iput-object p1, p0, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;->mListener:Lcn/nubia/touping/Dialog/ScreenOrientationDialog$OnClickListener;

    .line 72
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 36
    invoke-static {}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->getsInstance()Lcn/nubia/touping/Utils/hdmi/HdmiUtil;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcn/nubia/touping/Utils/hdmi/HdmiUtil;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    .line 37
    .local v0, "isPortrait":Z
    iget-object v1, p0, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;->mPortraitView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;->mPortraitView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 40
    :cond_0
    iget-object v1, p0, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;->mLandscapeView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 41
    iget-object v2, p0, Lcn/nubia/touping/Dialog/ScreenOrientationDialog;->mLandscapeView:Landroid/view/View;

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 43
    :cond_1
    invoke-super {p0}, Lcn/nubia/touping/Dialog/BaseDialog;->show()V

    .line 44
    return-void

    .line 41
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
