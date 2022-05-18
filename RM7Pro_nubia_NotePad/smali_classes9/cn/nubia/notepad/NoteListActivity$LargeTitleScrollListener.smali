.class Lcn/nubia/notepad/NoteListActivity$LargeTitleScrollListener;
.super Ljava/lang/Object;
.source "NoteListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/NoteListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LargeTitleScrollListener"
.end annotation


# instance fields
.field private mCurrentfirstVisibleItem:I

.field scroolY:I

.field final synthetic this$0:Lcn/nubia/notepad/NoteListActivity;


# direct methods
.method private constructor <init>(Lcn/nubia/notepad/NoteListActivity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 635
    iput-object p1, p0, Lcn/nubia/notepad/NoteListActivity$LargeTitleScrollListener;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    iput v0, p0, Lcn/nubia/notepad/NoteListActivity$LargeTitleScrollListener;->scroolY:I

    .line 637
    iput v0, p0, Lcn/nubia/notepad/NoteListActivity$LargeTitleScrollListener;->mCurrentfirstVisibleItem:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/notepad/NoteListActivity;Lcn/nubia/notepad/NoteListActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/notepad/NoteListActivity;
    .param p2, "x1"    # Lcn/nubia/notepad/NoteListActivity$1;

    .prologue
    .line 635
    invoke-direct {p0, p1}, Lcn/nubia/notepad/NoteListActivity$LargeTitleScrollListener;-><init>(Lcn/nubia/notepad/NoteListActivity;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v0, 0x0

    .line 661
    iput p2, p0, Lcn/nubia/notepad/NoteListActivity$LargeTitleScrollListener;->mCurrentfirstVisibleItem:I

    .line 662
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$LargeTitleScrollListener;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NoteListActivity;->access$900(Lcn/nubia/notepad/NoteListActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 663
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$LargeTitleScrollListener;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NoteListActivity;->access$200(Lcn/nubia/notepad/NoteListActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$LargeTitleScrollListener;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-virtual {v1, v0}, Lcn/nubia/notepad/NoteListActivity;->setNoteGuideButtonState(Z)V

    .line 667
    :cond_0
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$LargeTitleScrollListener;->this$0:Lcn/nubia/notepad/NoteListActivity;

    add-int v2, p2, p3

    if-ge v2, p4, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v1, v0}, Lcn/nubia/notepad/NoteListActivity;->access$1202(Lcn/nubia/notepad/NoteListActivity;Z)Z

    .line 674
    :cond_2
    :goto_0
    return-void

    .line 669
    :cond_3
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$LargeTitleScrollListener;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NoteListActivity;->access$1300(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/view/DownSynchroniozeListView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$LargeTitleScrollListener;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NoteListActivity;->access$1300(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/view/DownSynchroniozeListView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 672
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$LargeTitleScrollListener;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1, v0}, Lcn/nubia/notepad/NoteListActivity;->access$1202(Lcn/nubia/notepad/NoteListActivity;Z)Z

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 641
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$LargeTitleScrollListener;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$200(Lcn/nubia/notepad/NoteListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 642
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$LargeTitleScrollListener;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$300(Lcn/nubia/notepad/NoteListActivity;)V

    .line 644
    :cond_0
    iget v0, p0, Lcn/nubia/notepad/NoteListActivity$LargeTitleScrollListener;->mCurrentfirstVisibleItem:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$LargeTitleScrollListener;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$900(Lcn/nubia/notepad/NoteListActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$LargeTitleScrollListener;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$1000(Lcn/nubia/notepad/NoteListActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 645
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$LargeTitleScrollListener;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$1000(Lcn/nubia/notepad/NoteListActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 656
    :cond_1
    :goto_0
    return-void

    .line 648
    :cond_2
    if-nez p2, :cond_1

    .line 653
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$LargeTitleScrollListener;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$1100(Lcn/nubia/notepad/NoteListActivity;)V

    goto :goto_0
.end method
