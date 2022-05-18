.class Lcn/nubia/deskclock/control/WorldTimeAnimationControl$1;
.super Landroid/content/BroadcastReceiver;
.source "WorldTimeAnimationControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->initAnimantionParam()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/control/WorldTimeAnimationControl;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/control/WorldTimeAnimationControl;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/control/WorldTimeAnimationControl;

    .prologue
    .line 196
    iput-object p1, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl$1;->this$0:Lcn/nubia/deskclock/control/WorldTimeAnimationControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 199
    iget-object v0, p0, Lcn/nubia/deskclock/control/WorldTimeAnimationControl$1;->this$0:Lcn/nubia/deskclock/control/WorldTimeAnimationControl;

    invoke-static {v0}, Lcn/nubia/deskclock/control/WorldTimeAnimationControl;->access$300(Lcn/nubia/deskclock/control/WorldTimeAnimationControl;)V

    .line 200
    return-void
.end method
