.class Lcn/nubia/notepad/NoteListActivity$11;
.super Ljava/lang/Object;
.source "NoteListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NoteListActivity;->searchNote(Ljava/lang/String;)V
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
    .line 1133
    iput-object p1, p0, Lcn/nubia/notepad/NoteListActivity$11;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1136
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$11;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$1500(Lcn/nubia/notepad/NoteListActivity;)V

    .line 1137
    return-void
.end method
