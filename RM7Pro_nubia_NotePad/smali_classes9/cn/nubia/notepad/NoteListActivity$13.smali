.class Lcn/nubia/notepad/NoteListActivity$13;
.super Ljava/lang/Object;
.source "NoteListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NoteListActivity;->regeditSyncListener()V
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
    .line 1499
    iput-object p1, p0, Lcn/nubia/notepad/NoteListActivity$13;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1504
    :try_start_0
    iget-object v1, p0, Lcn/nubia/notepad/NoteListActivity$13;->this$0:Lcn/nubia/notepad/NoteListActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NoteListActivity;->access$3400(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/cloud/sync/common/SyncManager;

    move-result-object v1

    const-string v2, "cn.nubia.notepad.provider.NotePad"

    iget-object v3, p0, Lcn/nubia/notepad/NoteListActivity$13;->this$0:Lcn/nubia/notepad/NoteListActivity;

    .line 1505
    invoke-static {v3}, Lcn/nubia/notepad/NoteListActivity;->access$3300(Lcn/nubia/notepad/NoteListActivity;)Lcn/nubia/notepad/cloud/SyncListenerIml;

    move-result-object v3

    .line 1504
    invoke-virtual {v1, v2, v3}, Lcn/nubia/cloud/sync/common/SyncManager;->regeditSyncListener(Ljava/lang/String;Lcn/nubia/cloud/sync/common/SyncListener;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1509
    :goto_0
    return-void

    .line 1506
    :catch_0
    move-exception v0

    .line 1507
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
