.class Lcn/nubia/notepad/NoteListActivity$18;
.super Ljava/lang/Object;
.source "NoteListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NoteListActivity;->startQueryLabelData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NoteListActivity;

.field final synthetic val$operation:I


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NoteListActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 1856
    iput-object p1, p0, Lcn/nubia/notepad/NoteListActivity$18;->this$0:Lcn/nubia/notepad/NoteListActivity;

    iput p2, p0, Lcn/nubia/notepad/NoteListActivity$18;->val$operation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1859
    iget v0, p0, Lcn/nubia/notepad/NoteListActivity$18;->val$operation:I

    packed-switch v0, :pswitch_data_0

    .line 1876
    :goto_0
    return-void

    .line 1861
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$18;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$3700(Lcn/nubia/notepad/NoteListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$18;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NoteListActivity;->access$4100(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/utils/NotesData;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/utils/NotesData;->getNotesLabelListWithoutClassifyAll(Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1862
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$18;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2100(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;->sendEmptyMessage(I)Z

    .line 1864
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$18;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$3700(Lcn/nubia/notepad/NoteListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1865
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$18;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$3700(Lcn/nubia/notepad/NoteListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$18;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NoteListActivity;->access$4100(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/utils/NotesData;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/utils/NotesData;->getNotesLabelList(Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1867
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$18;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2100(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1870
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$18;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$3700(Lcn/nubia/notepad/NoteListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$18;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NoteListActivity;->access$4100(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/utils/NotesData;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/utils/NotesData;->getNotesLabelList(Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1871
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$18;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2100(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1859
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
