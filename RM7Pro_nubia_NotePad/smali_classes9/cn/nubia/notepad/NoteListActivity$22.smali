.class Lcn/nubia/notepad/NoteListActivity$22;
.super Ljava/lang/Object;
.source "NoteListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NoteListActivity;->hideSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NoteListActivity;

.field final synthetic val$splitBarView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NoteListActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 1976
    iput-object p1, p0, Lcn/nubia/notepad/NoteListActivity$22;->this$0:Lcn/nubia/notepad/NoteListActivity;

    iput-object p2, p0, Lcn/nubia/notepad/NoteListActivity$22;->val$splitBarView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1980
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$22;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$4700(Lcn/nubia/notepad/NoteListActivity;)V

    .line 1981
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$22;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$4800(Lcn/nubia/notepad/NoteListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1982
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$22;->val$splitBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1983
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$22;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$4900(Lcn/nubia/notepad/NoteListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1984
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$22;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$500(Lcn/nubia/notepad/NoteListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1985
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$22;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$5000(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/commonui/widget/NubiaSearchView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->setVisibility(I)V

    .line 1986
    return-void
.end method
