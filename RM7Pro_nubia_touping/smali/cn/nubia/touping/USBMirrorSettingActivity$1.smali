.class Lcn/nubia/touping/USBMirrorSettingActivity$1;
.super Ljava/lang/Object;
.source "USBMirrorSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/USBMirrorSettingActivity;->showQualityDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/USBMirrorSettingActivity;

.field final synthetic val$dialog:Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;


# direct methods
.method constructor <init>(Lcn/nubia/touping/USBMirrorSettingActivity;Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/USBMirrorSettingActivity;

    .prologue
    .line 175
    iput-object p1, p0, Lcn/nubia/touping/USBMirrorSettingActivity$1;->this$0:Lcn/nubia/touping/USBMirrorSettingActivity;

    iput-object p2, p0, Lcn/nubia/touping/USBMirrorSettingActivity$1;->val$dialog:Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 178
    iget-object v1, p0, Lcn/nubia/touping/USBMirrorSettingActivity$1;->val$dialog:Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;

    invoke-virtual {v1}, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->getCheckedItemId()I

    move-result v0

    .line 179
    .local v0, "resId":I
    iget-object v1, p0, Lcn/nubia/touping/USBMirrorSettingActivity$1;->this$0:Lcn/nubia/touping/USBMirrorSettingActivity;

    invoke-static {v1}, Lcn/nubia/touping/USBMirrorSettingActivity;->access$000(Lcn/nubia/touping/USBMirrorSettingActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/USBMirrorSettingActivity$1;->this$0:Lcn/nubia/touping/USBMirrorSettingActivity;

    invoke-static {v2, v0}, Lcn/nubia/touping/Dialog/ScreenProjectionQualityDialog;->getQualityTypeById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    return-void
.end method
