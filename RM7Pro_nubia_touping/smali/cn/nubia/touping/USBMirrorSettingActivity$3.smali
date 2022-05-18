.class Lcn/nubia/touping/USBMirrorSettingActivity$3;
.super Ljava/lang/Object;
.source "USBMirrorSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/USBMirrorSettingActivity;->showSoundSourceDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/USBMirrorSettingActivity;

.field final synthetic val$soundSourceDialog:Lcn/nubia/touping/Dialog/USBSoundSourceDialog;


# direct methods
.method constructor <init>(Lcn/nubia/touping/USBMirrorSettingActivity;Lcn/nubia/touping/Dialog/USBSoundSourceDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/USBMirrorSettingActivity;

    .prologue
    .line 202
    iput-object p1, p0, Lcn/nubia/touping/USBMirrorSettingActivity$3;->this$0:Lcn/nubia/touping/USBMirrorSettingActivity;

    iput-object p2, p0, Lcn/nubia/touping/USBMirrorSettingActivity$3;->val$soundSourceDialog:Lcn/nubia/touping/Dialog/USBSoundSourceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 205
    iget-object v1, p0, Lcn/nubia/touping/USBMirrorSettingActivity$3;->val$soundSourceDialog:Lcn/nubia/touping/Dialog/USBSoundSourceDialog;

    invoke-virtual {v1}, Lcn/nubia/touping/Dialog/USBSoundSourceDialog;->getCheckedItemId()I

    move-result v0

    .line 206
    .local v0, "resID":I
    iget-object v1, p0, Lcn/nubia/touping/USBMirrorSettingActivity$3;->this$0:Lcn/nubia/touping/USBMirrorSettingActivity;

    invoke-static {v1}, Lcn/nubia/touping/USBMirrorSettingActivity;->access$200(Lcn/nubia/touping/USBMirrorSettingActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/USBMirrorSettingActivity$3;->this$0:Lcn/nubia/touping/USBMirrorSettingActivity;

    invoke-static {v2, v0}, Lcn/nubia/touping/Dialog/SoundSourceDialog;->getSoundSourceTypeById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    return-void
.end method
