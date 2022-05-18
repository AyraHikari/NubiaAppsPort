.class Lcn/nubia/notepad/NoteListActivity$16;
.super Ljava/lang/Object;
.source "NoteListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NoteListActivity;->showLabelList()V
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
    .line 1733
    iput-object p1, p0, Lcn/nubia/notepad/NoteListActivity$16;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1737
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$16;->this$0:Lcn/nubia/notepad/NoteListActivity;

    iget-object v1, v1, Lcn/nubia/notepad/NoteListActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-string v2, "notepad_list_label_click"

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackCustomEvent(Ljava/lang/String;)V

    .line 1738
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$16;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NoteListActivity;->access$2700(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/view/NubiaMorePopupMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/notepad/view/NubiaMorePopupMenu;->dismiss()V

    .line 1739
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$16;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NoteListActivity;->access$3700(Lcn/nubia/notepad/NoteListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/notepad/utils/NotesLabelData;

    invoke-virtual {v1}, Lcn/nubia/notepad/utils/NotesLabelData;->getmId()I

    move-result v0

    .line 1740
    .local v0, "labelId":I
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$16;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1, v0}, Lcn/nubia/notepad/NoteListActivity;->access$2802(Lcn/nubia/notepad/NoteListActivity;I)I

    .line 1741
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$16;->this$0:Lcn/nubia/notepad/NoteListActivity;

    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity$16;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NoteListActivity;->access$3800(Lcn/nubia/notepad/NoteListActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity$16;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v3}, Lcn/nubia/notepad/NoteListActivity;->access$900(Lcn/nubia/notepad/NoteListActivity;)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcn/nubia/notepad/NoteListActivity;->access$3900(Lcn/nubia/notepad/NoteListActivity;Ljava/lang/String;Z)V

    .line 1742
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$16;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NoteListActivity;->access$3200(Lcn/nubia/notepad/NoteListActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$16;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NoteListActivity;->access$3700(Lcn/nubia/notepad/NoteListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/notepad/utils/NotesLabelData;

    invoke-virtual {v1}, Lcn/nubia/notepad/utils/NotesLabelData;->getmTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1743
    return-void
.end method
