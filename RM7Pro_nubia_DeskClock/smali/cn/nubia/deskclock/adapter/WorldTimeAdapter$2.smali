.class Lcn/nubia/deskclock/adapter/WorldTimeAdapter$2;
.super Landroid/content/BroadcastReceiver;
.source "WorldTimeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/adapter/WorldTimeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/adapter/WorldTimeAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    .prologue
    .line 131
    iput-object p1, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$2;->this$0:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$2;->this$0:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-static {v0}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->access$200(Lcn/nubia/deskclock/adapter/WorldTimeAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$2;->this$0:Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    invoke-static {v0}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->access$300(Lcn/nubia/deskclock/adapter/WorldTimeAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
