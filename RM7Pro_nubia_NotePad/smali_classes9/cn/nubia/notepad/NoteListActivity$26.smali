.class Lcn/nubia/notepad/NoteListActivity$26;
.super Ljava/lang/Object;
.source "NoteListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NoteListActivity;->startDataStatistic()V
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
    .line 2099
    iput-object p1, p0, Lcn/nubia/notepad/NoteListActivity$26;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2103
    :try_start_0
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$26;->this$0:Lcn/nubia/notepad/NoteListActivity;

    iget-object v1, v1, Lcn/nubia/notepad/NoteListActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity$26;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NoteListActivity;->access$4100(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/utils/NotesData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackCustomBehavior(Lcn/nubia/notepad/utils/NotesData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2107
    :goto_0
    return-void

    .line 2104
    :catch_0
    move-exception v0

    .line 2105
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
