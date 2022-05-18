.class Lcn/nubia/notepad/NoteListActivity$24;
.super Ljava/lang/Object;
.source "NoteListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NoteListActivity;->showSyncPemitDialog()V
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
    .line 2030
    iput-object p1, p0, Lcn/nubia/notepad/NoteListActivity$24;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2032
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$24;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$2300(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$24;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NoteListActivity;->access$2400(Lcn/nubia/notepad/NoteListActivity;)I

    move-result v1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcn/nubia/notepad/cloud/anim/NotePadSyncContentLayout;->updateSyncTip(II)V

    .line 2034
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2035
    return-void
.end method
