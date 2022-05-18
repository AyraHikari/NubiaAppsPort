.class Lcn/nubia/notepad/NoteListActivity$21;
.super Ljava/lang/Object;
.source "NoteListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NoteListActivity;->showLabelMoveDialog()V
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
    .line 1912
    iput-object p1, p0, Lcn/nubia/notepad/NoteListActivity$21;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1915
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1916
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$21;->this$0:Lcn/nubia/notepad/NoteListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/notepad/NoteListActivity;->access$4600(Lcn/nubia/notepad/NoteListActivity;Z)V

    .line 1917
    return-void
.end method
