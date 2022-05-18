.class Lcn/nubia/deskclock/fragment/StopwatchFragment$1;
.super Ljava/lang/Object;
.source "StopwatchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/fragment/StopwatchFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/fragment/StopwatchFragment;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/fragment/StopwatchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/fragment/StopwatchFragment;

    .prologue
    .line 133
    iput-object p1, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment$1;->this$0:Lcn/nubia/deskclock/fragment/StopwatchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/StopwatchFragment$1;->this$0:Lcn/nubia/deskclock/fragment/StopwatchFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/StopwatchFragment;->access$000(Lcn/nubia/deskclock/fragment/StopwatchFragment;)V

    .line 136
    return-void
.end method
