.class Lcn/nubia/notepad/NoteListActivity$17;
.super Ljava/lang/Object;
.source "NoteListActivity.java"

# interfaces
.implements Lcn/nubia/notepad/view/NotePadLabelNameInputDialog$OnFinishFileNameInputListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NoteListActivity;->createLabel(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NoteListActivity;

.field final synthetic val$moveNoteLabel:Z


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NoteListActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 1788
    iput-object p1, p0, Lcn/nubia/notepad/NoteListActivity$17;->this$0:Lcn/nubia/notepad/NoteListActivity;

    iput-boolean p2, p0, Lcn/nubia/notepad/NoteListActivity$17;->val$moveNoteLabel:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishFileNameInput(Ljava/lang/String;)V
    .locals 4
    .param p1, "newLabelName"    # Ljava/lang/String;

    .prologue
    .line 1792
    :try_start_0
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity$17;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v2, p1}, Lcn/nubia/notepad/NoteListActivity;->access$4000(Lcn/nubia/notepad/NoteListActivity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1793
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity$17;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NoteListActivity;->access$700(Lcn/nubia/notepad/NoteListActivity;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a006d

    invoke-static {v2, v3}, Lcn/nubia/notepad/utils/Util;->showToast(Landroid/content/Context;I)V

    .line 1804
    :cond_0
    :goto_0
    return-void

    .line 1796
    :cond_1
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity$17;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NoteListActivity;->access$4100(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/utils/NotesData;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/nubia/notepad/utils/NotesData;->insertNoteLabel(Ljava/lang/String;)I

    move-result v1

    .line 1797
    .local v1, "labelId":I
    if-lez v1, :cond_0

    iget-boolean v2, p0, Lcn/nubia/notepad/NoteListActivity$17;->val$moveNoteLabel:Z

    if-eqz v2, :cond_0

    .line 1798
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity$17;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v2, v1}, Lcn/nubia/notepad/NoteListActivity;->access$4200(Lcn/nubia/notepad/NoteListActivity;I)V

    .line 1799
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity$17;->this$0:Lcn/nubia/notepad/NoteListActivity;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcn/nubia/notepad/NoteListActivity;->access$4300(Lcn/nubia/notepad/NoteListActivity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1801
    .end local v1    # "labelId":I
    :catch_0
    move-exception v0

    .line 1802
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
