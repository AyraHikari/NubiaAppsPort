.class Lcn/nubia/notepad/NoteListActivity$10;
.super Ljava/lang/Object;
.source "NoteListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/NoteListActivity;
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
    .line 1048
    iput-object p1, p0, Lcn/nubia/notepad/NoteListActivity$10;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1051
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$10;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-virtual {v0}, Lcn/nubia/notepad/NoteListActivity;->selectAllOrNone()V

    .line 1052
    return-void
.end method
