.class Lcn/nubia/notepad/NoteListActivity$5;
.super Ljava/lang/Object;
.source "NoteListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$stateView:Landroid/widget/CheckedTextView;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NoteListActivity;Landroid/widget/CheckedTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 619
    iput-object p1, p0, Lcn/nubia/notepad/NoteListActivity$5;->this$0:Lcn/nubia/notepad/NoteListActivity;

    iput-object p2, p0, Lcn/nubia/notepad/NoteListActivity$5;->val$stateView:Landroid/widget/CheckedTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 623
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$5;->val$stateView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$5;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$000(Lcn/nubia/notepad/NoteListActivity;)V

    .line 625
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$5;->val$stateView:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 630
    :goto_0
    return-void

    .line 627
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$5;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$100(Lcn/nubia/notepad/NoteListActivity;)V

    .line 628
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$5;->val$stateView:Landroid/widget/CheckedTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0
.end method
