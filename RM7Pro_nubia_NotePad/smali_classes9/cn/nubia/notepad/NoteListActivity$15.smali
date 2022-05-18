.class Lcn/nubia/notepad/NoteListActivity$15;
.super Ljava/lang/Object;
.source "NoteListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NoteListActivity;->startNotePadSyncing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NoteListActivity;

.field final synthetic val$date:Ljava/util/Date;

.field final synthetic val$mLastSyncTime:J


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NoteListActivity;Ljava/util/Date;J)V
    .locals 1
    .param p1, "this$0"    # Lcn/nubia/notepad/NoteListActivity;

    .prologue
    .line 1576
    iput-object p1, p0, Lcn/nubia/notepad/NoteListActivity$15;->this$0:Lcn/nubia/notepad/NoteListActivity;

    iput-object p2, p0, Lcn/nubia/notepad/NoteListActivity$15;->val$date:Ljava/util/Date;

    iput-wide p3, p0, Lcn/nubia/notepad/NoteListActivity$15;->val$mLastSyncTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x7d0

    const/16 v6, 0x3eb

    .line 1579
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity$15;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NoteListActivity;->access$3500(Lcn/nubia/notepad/NoteListActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1580
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity$15;->this$0:Lcn/nubia/notepad/NoteListActivity;

    iget-object v2, v2, Lcn/nubia/notepad/NoteListActivity;->mReYunUtils:Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;

    const-string v3, "notepad_cloud_sync_un_swtich"

    invoke-virtual {v2, v3}, Lcn/nubia/notepad/engine/statistic/NotePadReportUtils;->trackCustomEvent(Ljava/lang/String;)V

    .line 1581
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity$15;->val$date:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/nubia/notepad/NoteListActivity$15;->val$mLastSyncTime:J

    sub-long v0, v2, v4

    .line 1582
    .local v0, "sub":J
    cmp-long v2, v0, v8

    if-gez v2, :cond_0

    .line 1583
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity$15;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NoteListActivity;->access$2100(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;

    move-result-object v2

    sub-long v4, v8, v0

    invoke-virtual {v2, v6, v4, v5}, Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1598
    .end local v0    # "sub":J
    :goto_0
    return-void

    .line 1587
    .restart local v0    # "sub":J
    :cond_0
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity$15;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NoteListActivity;->access$2100(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcn/nubia/notepad/NoteListActivity$NotePadListHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1592
    .end local v0    # "sub":J
    :cond_1
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity$15;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NoteListActivity;->access$2000(Lcn/nubia/notepad/NoteListActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1593
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity$15;->this$0:Lcn/nubia/notepad/NoteListActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/nubia/notepad/NoteListActivity;->access$2002(Lcn/nubia/notepad/NoteListActivity;Z)Z

    goto :goto_0

    .line 1597
    :cond_2
    iget-object v2, p0, Lcn/nubia/notepad/NoteListActivity$15;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NoteListActivity;->access$3600(Lcn/nubia/notepad/NoteListActivity;)V

    goto :goto_0
.end method
