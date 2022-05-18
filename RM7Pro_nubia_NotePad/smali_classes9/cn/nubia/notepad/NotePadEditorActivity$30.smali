.class Lcn/nubia/notepad/NotePadEditorActivity$30;
.super Ljava/lang/Object;
.source "NotePadEditorActivity.java"

# interfaces
.implements Lcn/nubia/notepad/view/NotePadLabelNameInputDialog$OnFinishFileNameInputListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadEditorActivity;->createLabel()V
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
    .line 3695
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity$30;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishFileNameInput(Ljava/lang/String;)V
    .locals 5
    .param p1, "newLabelName"    # Ljava/lang/String;

    .prologue
    .line 3699
    :try_start_0
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity$30;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v2, p1}, Lcn/nubia/notepad/NotePadEditorActivity;->access$6400(Lcn/nubia/notepad/NotePadEditorActivity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3700
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity$30;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$100(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a006d

    invoke-static {v2, v3}, Lcn/nubia/notepad/utils/Util;->showToast(Landroid/content/Context;I)V

    .line 3718
    :cond_0
    :goto_0
    return-void

    .line 3703
    :cond_1
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity$30;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$6300(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/utils/NotesData;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/nubia/notepad/utils/NotesData;->insertNoteLabel(Ljava/lang/String;)I

    move-result v1

    .line 3704
    .local v1, "labelId":I
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity$30;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcn/nubia/notepad/NotePadEditorActivity;->access$6502(Lcn/nubia/notepad/NotePadEditorActivity;Z)Z

    .line 3705
    if-lez v1, :cond_2

    .line 3706
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity$30;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v2, v1}, Lcn/nubia/notepad/NotePadEditorActivity;->access$2602(Lcn/nubia/notepad/NotePadEditorActivity;I)I

    .line 3707
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity$30;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$6600(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3708
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity$30;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v2, p1}, Lcn/nubia/notepad/NotePadEditorActivity;->access$6702(Lcn/nubia/notepad/NotePadEditorActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3709
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity$30;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$600(Lcn/nubia/notepad/NotePadEditorActivity;)V

    .line 3712
    :cond_2
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity$30;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$4700(Lcn/nubia/notepad/NotePadEditorActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3713
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity$30;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$6800(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3715
    .end local v1    # "labelId":I
    :catch_0
    move-exception v0

    .line 3716
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
