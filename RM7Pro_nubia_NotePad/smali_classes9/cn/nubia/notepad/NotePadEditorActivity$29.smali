.class Lcn/nubia/notepad/NotePadEditorActivity$29;
.super Ljava/lang/Object;
.source "NotePadEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadEditorActivity;->startQueryLabelData()V
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
    .line 3677
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity$29;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3681
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$29;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$6200(Lcn/nubia/notepad/NotePadEditorActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3682
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$29;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$6200(Lcn/nubia/notepad/NotePadEditorActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity$29;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NotePadEditorActivity;->access$6300(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/utils/NotesData;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/utils/NotesData;->getNotesLabelListWithoutClassifyAll(Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3683
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$29;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1300(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3684
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$29;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1300(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;->sendEmptyMessage(I)Z

    .line 3686
    :cond_0
    return-void
.end method
