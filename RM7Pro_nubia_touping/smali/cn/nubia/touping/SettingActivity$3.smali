.class Lcn/nubia/touping/SettingActivity$3;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/SettingActivity;->showSoundSourceDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/SettingActivity;

.field final synthetic val$soundSourceDialog:Lcn/nubia/touping/Dialog/SoundSourceDialog;


# direct methods
.method constructor <init>(Lcn/nubia/touping/SettingActivity;Lcn/nubia/touping/Dialog/SoundSourceDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/SettingActivity;

    .prologue
    .line 235
    iput-object p1, p0, Lcn/nubia/touping/SettingActivity$3;->this$0:Lcn/nubia/touping/SettingActivity;

    iput-object p2, p0, Lcn/nubia/touping/SettingActivity$3;->val$soundSourceDialog:Lcn/nubia/touping/Dialog/SoundSourceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 238
    iget-object v1, p0, Lcn/nubia/touping/SettingActivity$3;->val$soundSourceDialog:Lcn/nubia/touping/Dialog/SoundSourceDialog;

    invoke-virtual {v1}, Lcn/nubia/touping/Dialog/SoundSourceDialog;->getCheckedItemId()I

    move-result v0

    .line 239
    .local v0, "resID":I
    iget-object v1, p0, Lcn/nubia/touping/SettingActivity$3;->this$0:Lcn/nubia/touping/SettingActivity;

    invoke-static {v1}, Lcn/nubia/touping/SettingActivity;->access$200(Lcn/nubia/touping/SettingActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/SettingActivity$3;->this$0:Lcn/nubia/touping/SettingActivity;

    invoke-static {v2, v0}, Lcn/nubia/touping/Dialog/SoundSourceDialog;->getSoundSourceTypeById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    return-void
.end method
