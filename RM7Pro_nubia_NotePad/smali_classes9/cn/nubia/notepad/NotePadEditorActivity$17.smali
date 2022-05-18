.class Lcn/nubia/notepad/NotePadEditorActivity$17;
.super Ljava/lang/Object;
.source "NotePadEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadEditorActivity;->addRecordView(ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadEditorActivity;

.field final synthetic val$mNoteNotePadRecordFileViewLayout:Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadEditorActivity;Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 2297
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity$17;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iput-object p2, p0, Lcn/nubia/notepad/NotePadEditorActivity$17;->val$mNoteNotePadRecordFileViewLayout:Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 2300
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity$17;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v3}, Lcn/nubia/notepad/NotePadEditorActivity;->access$4700(Lcn/nubia/notepad/NotePadEditorActivity;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2301
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity$17;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v3}, Lcn/nubia/notepad/NotePadEditorActivity;->access$4900(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2302
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity$17;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity$17;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    .line 2304
    invoke-virtual {v4}, Lcn/nubia/notepad/NotePadEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a007d

    .line 2305
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2302
    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 2307
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2321
    :cond_0
    :goto_0
    return v2

    .line 2310
    :cond_1
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity$17;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v3}, Lcn/nubia/notepad/NotePadEditorActivity;->access$3400(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity$17;->val$mNoteNotePadRecordFileViewLayout:Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;

    .line 2311
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2312
    .local v0, "indexAtView":I
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity$17;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v3}, Lcn/nubia/notepad/NotePadEditorActivity;->access$000(Lcn/nubia/notepad/NotePadEditorActivity;)Ljava/util/LinkedList;

    move-result-object v3

    .line 2313
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 2314
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-eqz v1, :cond_0

    .line 2315
    iget-object v3, p0, Lcn/nubia/notepad/NotePadEditorActivity$17;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iget-object v4, p0, Lcn/nubia/notepad/NotePadEditorActivity$17;->val$mNoteNotePadRecordFileViewLayout:Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;

    invoke-static {v3, v0, v1, v4}, Lcn/nubia/notepad/NotePadEditorActivity;->access$4800(Lcn/nubia/notepad/NotePadEditorActivity;ILjava/util/HashMap;Landroid/view/View;)V

    goto :goto_0

    .line 2319
    .end local v0    # "indexAtView":I
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method
