.class Lcn/nubia/notepad/receiver/NotePadRemindReceiver$1;
.super Ljava/lang/Object;
.source "NotePadRemindReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/receiver/NotePadRemindReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/receiver/NotePadRemindReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/receiver/NotePadRemindReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/receiver/NotePadRemindReceiver;

    .prologue
    .line 49
    iput-object p1, p0, Lcn/nubia/notepad/receiver/NotePadRemindReceiver$1;->this$0:Lcn/nubia/notepad/receiver/NotePadRemindReceiver;

    iput-object p2, p0, Lcn/nubia/notepad/receiver/NotePadRemindReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcn/nubia/notepad/receiver/NotePadRemindReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcn/nubia/notepad/receiver/NotePadRemindReceiver$1;->this$0:Lcn/nubia/notepad/receiver/NotePadRemindReceiver;

    iget-object v1, p0, Lcn/nubia/notepad/receiver/NotePadRemindReceiver$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/notepad/receiver/NotePadRemindReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcn/nubia/notepad/receiver/NotePadRemindReceiver;->access$000(Lcn/nubia/notepad/receiver/NotePadRemindReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 54
    return-void
.end method
