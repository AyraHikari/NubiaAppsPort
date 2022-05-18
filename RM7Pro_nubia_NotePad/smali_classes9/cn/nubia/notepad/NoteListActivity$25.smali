.class Lcn/nubia/notepad/NoteListActivity$25;
.super Ljava/lang/Object;
.source "NoteListActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NoteListActivity;->onForceTouchSearchAction()V
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
    .line 2076
    iput-object p1, p0, Lcn/nubia/notepad/NoteListActivity$25;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2079
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$25;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NoteListActivity;->access$1300(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/view/DownSynchroniozeListView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/notepad/view/DownSynchroniozeListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2080
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$25;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NoteListActivity;->access$5300(Lcn/nubia/notepad/NoteListActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "first force touch"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 2081
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$25;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NoteListActivity;->access$5400(Lcn/nubia/notepad/NoteListActivity;)V

    .line 2085
    :goto_0
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$25;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NoteListActivity;->access$5600(Lcn/nubia/notepad/NoteListActivity;)V

    .line 2086
    invoke-static {}, Lcn/nubia/notepad/SysApplication;->getInstance()Lcn/nubia/notepad/SysApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/notepad/SysApplication;->getSearchString()Ljava/lang/String;

    move-result-object v0

    .line 2087
    .local v0, "search":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2089
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$25;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1, v0}, Lcn/nubia/notepad/NoteListActivity;->access$600(Lcn/nubia/notepad/NoteListActivity;Ljava/lang/String;)V

    .line 2090
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$25;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NoteListActivity;->access$5700(Lcn/nubia/notepad/NoteListActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2091
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$25;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NoteListActivity;->access$5700(Lcn/nubia/notepad/NoteListActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 2093
    :cond_0
    return v3

    .line 2083
    .end local v0    # "search":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$25;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NoteListActivity;->access$5500(Lcn/nubia/notepad/NoteListActivity;)V

    goto :goto_0
.end method
