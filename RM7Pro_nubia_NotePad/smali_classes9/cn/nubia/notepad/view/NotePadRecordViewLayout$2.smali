.class Lcn/nubia/notepad/view/NotePadRecordViewLayout$2;
.super Ljava/lang/Object;
.source "NotePadRecordViewLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/view/NotePadRecordViewLayout;->showAlertDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    .prologue
    .line 271
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$2;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 273
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 274
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$2;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    sget-object v1, Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;->STOPPED:Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    invoke-static {v0, v1}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->access$1202(Lcn/nubia/notepad/view/NotePadRecordViewLayout;Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;)Lcn/nubia/notepad/view/NotePadRecordViewLayout$MediaRecorderState;

    .line 275
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$2;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->cancleRecordNotification()V

    .line 276
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$2;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-static {v0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->access$1400(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$2;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-static {v1}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->access$1300(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Lcn/nubia/notepad/engine/phonestatelistener/NotePadPhoneStateListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 278
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$2;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->mRecordHandler:Landroid/os/Handler;

    .line 279
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$2;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-static {v0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->access$400(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Lcn/nubia/notepad/NotePadEditorActivity;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$2;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-static {v1}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->access$700(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/NotePadEditorActivity;->removeRecordView(Landroid/view/View;)V

    .line 280
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordViewLayout$2;->this$0:Lcn/nubia/notepad/view/NotePadRecordViewLayout;

    invoke-static {v0}, Lcn/nubia/notepad/view/NotePadRecordViewLayout;->access$400(Lcn/nubia/notepad/view/NotePadRecordViewLayout;)Lcn/nubia/notepad/NotePadEditorActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->adjInputHintVisibility()V

    .line 281
    return-void
.end method
