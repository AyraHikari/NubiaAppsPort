.class Lcn/nubia/notepad/NoteListActivity$3;
.super Ljava/lang/Object;
.source "NoteListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NoteListActivity;->initView()V
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
    .line 536
    iput-object p1, p0, Lcn/nubia/notepad/NoteListActivity$3;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 549
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 540
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$3;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$200(Lcn/nubia/notepad/NoteListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 541
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$3;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$300(Lcn/nubia/notepad/NoteListActivity;)V

    .line 543
    :cond_0
    return-void
.end method
