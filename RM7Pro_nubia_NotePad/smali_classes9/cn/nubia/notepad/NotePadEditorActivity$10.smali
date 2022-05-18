.class Lcn/nubia/notepad/NotePadEditorActivity$10;
.super Ljava/lang/Object;
.source "NotePadEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadEditorActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadEditorActivity;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadEditorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 1694
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity$10;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1697
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity$10;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1200(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;

    move-result-object v1

    .line 1698
    .local v1, "noteData":Lcn/nubia/notepad/utils/NotesData$NOTES_DATA;
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity$10;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1300(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1700
    .local v0, "msg":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1701
    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity$10;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1300(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1702
    return-void
.end method
