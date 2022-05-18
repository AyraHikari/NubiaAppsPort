.class Lcn/nubia/video/player/common/CommandManager$1;
.super Ljava/lang/Object;
.source "CommandManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/common/CommandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/common/CommandManager;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/common/CommandManager;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcn/nubia/video/player/common/CommandManager$1;->this$0:Lcn/nubia/video/player/common/CommandManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcn/nubia/video/player/common/CommandManager$1;->this$0:Lcn/nubia/video/player/common/CommandManager;

    invoke-static {v0}, Lcn/nubia/video/player/common/CommandManager;->access$000(Lcn/nubia/video/player/common/CommandManager;)Lcn/nubia/video/player/common/BaseCommand;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcn/nubia/video/player/common/CommandManager$1;->this$0:Lcn/nubia/video/player/common/CommandManager;

    invoke-static {v0}, Lcn/nubia/video/player/common/CommandManager;->access$000(Lcn/nubia/video/player/common/CommandManager;)Lcn/nubia/video/player/common/BaseCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/video/player/common/BaseCommand;->excute()V

    .line 35
    iget-object v0, p0, Lcn/nubia/video/player/common/CommandManager$1;->this$0:Lcn/nubia/video/player/common/CommandManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/video/player/common/CommandManager;->access$102(Lcn/nubia/video/player/common/CommandManager;Z)Z

    .line 36
    iget-object v0, p0, Lcn/nubia/video/player/common/CommandManager$1;->this$0:Lcn/nubia/video/player/common/CommandManager;

    invoke-static {v0}, Lcn/nubia/video/player/common/CommandManager;->access$200(Lcn/nubia/video/player/common/CommandManager;)Lcn/nubia/video/player/common/CommandManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcn/nubia/video/player/common/CommandManager$1;->this$0:Lcn/nubia/video/player/common/CommandManager;

    invoke-static {v0}, Lcn/nubia/video/player/common/CommandManager;->access$200(Lcn/nubia/video/player/common/CommandManager;)Lcn/nubia/video/player/common/CommandManager$Listener;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/player/common/CommandManager$1;->this$0:Lcn/nubia/video/player/common/CommandManager;

    invoke-static {v1}, Lcn/nubia/video/player/common/CommandManager;->access$000(Lcn/nubia/video/player/common/CommandManager;)Lcn/nubia/video/player/common/BaseCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/video/player/common/BaseCommand;->getCmdType()I

    move-result v1

    invoke-interface {v0, v1}, Lcn/nubia/video/player/common/CommandManager$Listener;->onNotify(I)V

    :cond_0
    return-void
.end method
