.class Lcn/nubia/touping/SettingActivity$5;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/SettingActivity;->showQualityDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/SettingActivity;

.field final synthetic val$dialog:Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;


# direct methods
.method constructor <init>(Lcn/nubia/touping/SettingActivity;Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/SettingActivity;

    .prologue
    .line 261
    iput-object p1, p0, Lcn/nubia/touping/SettingActivity$5;->this$0:Lcn/nubia/touping/SettingActivity;

    iput-object p2, p0, Lcn/nubia/touping/SettingActivity$5;->val$dialog:Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 264
    iget-object v1, p0, Lcn/nubia/touping/SettingActivity$5;->val$dialog:Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;

    invoke-virtual {v1}, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->getCheckedItemId()I

    move-result v0

    .line 265
    .local v0, "resId":I
    iget-object v1, p0, Lcn/nubia/touping/SettingActivity$5;->this$0:Lcn/nubia/touping/SettingActivity;

    invoke-static {v1}, Lcn/nubia/touping/SettingActivity;->access$400(Lcn/nubia/touping/SettingActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/SettingActivity$5;->this$0:Lcn/nubia/touping/SettingActivity;

    invoke-static {v2, v0}, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->getQualityTypeById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v1, p0, Lcn/nubia/touping/SettingActivity$5;->this$0:Lcn/nubia/touping/SettingActivity;

    invoke-static {v1}, Lcn/nubia/touping/MiracastTouPing/WfdConfigUtils;->saveMiracastTouPingQuality(Landroid/content/Context;)V

    .line 269
    return-void
.end method
