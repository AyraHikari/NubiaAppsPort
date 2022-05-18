.class Lcn/nubia/notepad/NotePadEditorActivity$26;
.super Ljava/lang/Object;
.source "NotePadEditorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadEditorActivity;->createShareDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadEditorActivity;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadEditorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 3546
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity$26;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 3548
    if-nez p2, :cond_1

    .line 3549
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$26;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iget-object v0, v0, Lcn/nubia/notepad/NotePadEditorActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-string v1, "notepad_menu_share_text"

    .line 3550
    invoke-virtual {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackCustomEvent(Ljava/lang/String;)V

    .line 3551
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$26;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$100(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity$26;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-virtual {v1}, Lcn/nubia/notepad/NotePadEditorActivity;->getNotesText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/notepad/utils/Util;->shareNoteText(Landroid/content/Context;Ljava/lang/String;)V

    .line 3559
    :cond_0
    :goto_0
    return-void

    .line 3552
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 3553
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$26;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iget-object v0, v0, Lcn/nubia/notepad/NotePadEditorActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-string v1, "notepad_menu_share_image"

    .line 3554
    invoke-virtual {v0, v1}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackCustomEvent(Ljava/lang/String;)V

    .line 3555
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$26;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$6000(Lcn/nubia/notepad/NotePadEditorActivity;)V

    goto :goto_0

    .line 3556
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 3557
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
