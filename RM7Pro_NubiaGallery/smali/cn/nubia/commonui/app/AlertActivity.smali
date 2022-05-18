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

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private resetShowWindowAttributes(Landroid/view/Window;)V
    .locals 2

    .line 71
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 72
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 73
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x51

    .line 74
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertActivity;->finish()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertActivity;->finish()V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 2

    .line 80
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    const v1, 0x7f01001f

    .line 81
    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/app/AlertActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 67
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/app/AlertActivity;->resetShowWindowAttributes(Landroid/view/Window;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    new-instance p1, Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, p0, p0, v0}, Lcn/nubia/commonui/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object p1, p0, Lcn/nubia/commonui/app/AlertActivity;->mAlert:Lcn/nubia/commonui/app/AlertController;

    .line 57
    new-instance p1, Lcn/nubia/commonui/app/AlertController$AlertParams;

    invoke-direct {p1, p0}, Lcn/nubia/commonui/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/nubia/commonui/app/AlertActivity;->mAlertParams:Lcn/nubia/commonui/app/AlertController$AlertParams;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertActivity;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 108
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertActivity;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 114
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected setupAlert()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertActivity;->mAlertParams:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertActivity;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertController$AlertParams;->apply(Lcn/nubia/commonui/app/AlertController;)V

    .line 102
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertActivity;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertController;->installContent()V

    return-void
.end method
