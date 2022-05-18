.class public abstract Lcn/nubia/commonui/app/AlertActivity;
.super Landroid/app/Activity;
.source "AlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field protected mAlert:Lcn/nubia/commonui/app/AlertController;

.field protected mAlertParams:Lcn/nubia/commonui/app/AlertController$AlertParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private resetShowWindowAttributes(Landroid/view/Window;)V
    .locals 2
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 72
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 73
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 74
    const/16 v1, 0x51

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 76
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertActivity;->finish()V

    .line 62
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertActivity;->finish()V

    .line 90
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 81
    const/4 v0, 0x0

    sget v1, Lcn/nubia/commonui/R$anim;->nubia_dialog_exit:I

    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/app/AlertActivity;->overridePendingTransition(II)V

    .line 82
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 67
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/app/AlertActivity;->resetShowWindowAttributes(Landroid/view/Window;)V

    .line 68
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    new-instance v0, Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcn/nubia/commonui/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertActivity;->mAlert:Lcn/nubia/commonui/app/AlertController;

    .line 57
    new-instance v0, Lcn/nubia/commonui/app/AlertController$AlertParams;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertActivity;->mAlertParams:Lcn/nubia/commonui/app/AlertController$AlertParams;

    .line 58
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 106
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertActivity;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 107
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 112
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertActivity;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected setupAlert()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertActivity;->mAlertParams:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertActivity;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertController$AlertParams;->apply(Lcn/nubia/commonui/app/AlertController;)V

    .line 101
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertActivity;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertController;->installContent()V

    .line 102
    return-void
.end method
