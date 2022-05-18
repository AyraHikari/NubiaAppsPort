.class Lcn/nubia/notepad/NotePadEditorActivity$11;
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
    .line 1724
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity$11;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1727
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1728
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity$11;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1400(Lcn/nubia/notepad/NotePadEditorActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1729
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1730
    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity$11;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NotePadEditorActivity;->access$1300(Lcn/nubia/notepad/NotePadEditorActivity;)Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/notepad/NotePadEditorActivity$NotePadEditorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1731
    return-void
.end method
