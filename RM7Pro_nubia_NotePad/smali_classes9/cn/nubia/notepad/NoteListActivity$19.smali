.class Lcn/nubia/notepad/NoteListActivity$19;
.super Ljava/lang/Object;
.source "NoteListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NoteListActivity;->showLabelMoveDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NoteListActivity;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NoteListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 1888
    iput-object p1, p0, Lcn/nubia/notepad/NoteListActivity$19;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1890
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$19;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NoteListActivity;->access$3700(Lcn/nubia/notepad/NoteListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/notepad/utils/NotesLabelData;

    invoke-virtual {v1}, Lcn/nubia/notepad/utils/NotesLabelData;->getmId()I

    move-result v0

    .line 1891
    .local v0, "labelId":I
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$19;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NoteListActivity;->access$4100(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/utils/NotesData;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity$19;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NoteListActivity;->access$4400(Lcn/nubia/notepad/NoteListActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcn/nubia/notepad/utils/NotesData;->updateNotesDataForBelongToLabel(Ljava/util/HashMap;I)V

    .line 1892
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$19;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NoteListActivity;->access$1900(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/adapter/NotePadListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1893
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$19;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NoteListActivity;->access$1900(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/adapter/NotePadListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/notepad/adapter/NotePadListAdapter;->notifyDataSetChanged()V

    .line 1895
    :cond_0
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$19;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NoteListActivity;->access$4500(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/commonui/actionbar/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1896
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$19;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NoteListActivity;->access$4500(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/commonui/actionbar/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/view/ActionMode;->finish()V

    .line 1898
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1899
    return-void
.end method
