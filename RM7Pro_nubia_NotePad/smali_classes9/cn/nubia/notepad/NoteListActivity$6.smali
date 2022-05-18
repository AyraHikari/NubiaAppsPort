.class Lcn/nubia/notepad/NoteListActivity$6;
.super Ljava/lang/Object;
.source "NoteListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NoteListActivity;->initData()V
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
    .line 734
    iput-object p1, p0, Lcn/nubia/notepad/NoteListActivity$6;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$6;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$700(Lcn/nubia/notepad/NoteListActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/notepad/utils/Util;->initDatabaseTime(Landroid/content/Context;)V

    .line 739
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$6;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$700(Lcn/nubia/notepad/NoteListActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/notepad/utils/Util;->updateDafaultTip(Landroid/content/Context;)V

    .line 740
    iget-object v0, p0, Lcn/nubia/notepad/NoteListActivity$6;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NoteListActivity;->access$700(Lcn/nubia/notepad/NoteListActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/notepad/utils/Util;->transferAllLabelRecordToUnclassifiedLabel(Landroid/content/Context;)V

    .line 741
    return-void
.end method
