.class Lcn/nubia/notepad/NoteListActivity$4;
.super Ljava/lang/Object;
.source "NoteListActivity.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;


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
    .line 580
    iput-object p1, p0, Lcn/nubia/notepad/NoteListActivity$4;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 5
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 591
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$4;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$200(Lcn/nubia/notepad/NoteListActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    :goto_0
    return v4

    .line 594
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$4;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$800(Lcn/nubia/notepad/NoteListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$4;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NoteListActivity;->access$700(Lcn/nubia/notepad/NoteListActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0078

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 595
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$4;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$800(Lcn/nubia/notepad/NoteListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 598
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$4;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$500(Lcn/nubia/notepad/NoteListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 600
    :cond_2
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$4;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$500(Lcn/nubia/notepad/NoteListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$4;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0, p1}, Lcn/nubia/notepad/NoteListActivity;->access$600(Lcn/nubia/notepad/NoteListActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 582
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$4;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$200(Lcn/nubia/notepad/NoteListActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    :goto_0
    return v1

    .line 585
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$4;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$500(Lcn/nubia/notepad/NoteListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$4;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0, p1}, Lcn/nubia/notepad/NoteListActivity;->access$600(Lcn/nubia/notepad/NoteListActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
