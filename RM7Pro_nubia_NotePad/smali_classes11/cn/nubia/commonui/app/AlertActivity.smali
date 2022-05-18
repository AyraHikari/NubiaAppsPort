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
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private resetShowWindowAttributes(Landroid/view/Window;)V
    .locals 7
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 73
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v4, -0x1

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 74
    const/4 v4, -0x2

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 75
    const/16 v4, 0x51

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 76
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "cc_navi_status"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 77
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 78
    .local v3, "resources":Landroid/content/res/Resources;
    const-string v4, "navigation_bar_height"

    const-string v5, "dimen"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 79
    .local v2, "resId":I
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 80
    .local v0, "height":I
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 82
    .end local v0    # "height":I
    .end local v2    # "resId":I
    .end local v3    # "resources":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 83
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 62
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertActivity;->finish()V

    .line 63
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertActivity;->finish()V

    .line 97
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 88
    const/4 v0, 0x0

    sget v1, Lcn/nubia/commonui/R$anim;->nubia_dialog_exit:I

    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/app/AlertActivity;->overridePendingTransition(II)V

    .line 89
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 68
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/app/AlertActivity;->resetShowWindowAttributes(Landroid/view/Window;)V

    .line 69
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    new-instance v0, Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcn/nubia/commonui/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertActivity;->mAlert:Lcn/nubia/commonui/app/AlertController;

    .line 58
    new-instance v0, Lcn/nubia/commonui/app/AlertController$AlertParams;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertActivity;->mAlertParams:Lcn/nubia/commonui/app/AlertController$AlertParams;

    .line 59
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertActivity;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 114
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
    .line 119
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertActivity;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 120
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
    .line 107
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertActivity;->mAlertParams:Lcn/nubia/commonui/app/AlertController$AlertParams;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertActivity;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertController$AlertParams;->apply(Lcn/nubia/commonui/app/AlertController;)V

    .line 108
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertActivity;->mAlert:Lcn/nubia/commonui/app/AlertController;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertController;->installContent()V

    .line 109
    return-void
.end method
