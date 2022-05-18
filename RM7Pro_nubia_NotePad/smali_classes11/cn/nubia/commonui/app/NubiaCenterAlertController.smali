.class public Lcn/nubia/commonui/app/NubiaCenterAlertController;
.super Lcn/nubia/commonui/app/AlertController;
.source "NubiaCenterAlertController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/commonui/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    .line 13
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertController;->resetNubiaAlertDialogLayout()V

    .line 14
    sget v0, Lcn/nubia/commonui/R$drawable;->nubia_center_alert_dialog_left_btn_default_material:I

    sget v1, Lcn/nubia/commonui/R$drawable;->nubia_center_alert_dialog_mid_btn_default_material:I

    sget v2, Lcn/nubia/commonui/R$drawable;->nubia_center_alert_dialog_right_btn_default_material:I

    invoke-super {p0, v0, v1, v2}, Lcn/nubia/commonui/app/AlertController;->setNubiaButtonBackground(III)V

    .line 18
    invoke-virtual {p0}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->resetNubiaAlertDialogLayout()V

    .line 19
    return-void
.end method


# virtual methods
.method resetNubiaAlertDialogLayout()V
    .locals 1

    .prologue
    .line 23
    sget v0, Lcn/nubia/commonui/R$layout;->nubia_alert_dialog_holo:I

    if-eqz v0, :cond_0

    .line 24
    sget v0, Lcn/nubia/commonui/R$layout;->nubia_alert_dialog_holo_center:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/app/NubiaCenterAlertController;->setAlertDialogLayout(I)V

    .line 26
    :cond_0
    return-void
.end method
