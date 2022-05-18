.class Lcn/nubia/deskclock/ui/DigitalTime$1$1;
.super Ljava/lang/Object;
.source "DigitalTime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/ui/DigitalTime$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/deskclock/ui/DigitalTime$1;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/ui/DigitalTime$1;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/deskclock/ui/DigitalTime$1;

    .prologue
    .line 66
    iput-object p1, p0, Lcn/nubia/deskclock/ui/DigitalTime$1$1;->this$1:Lcn/nubia/deskclock/ui/DigitalTime$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/deskclock/ui/DigitalTime$1$1;->this$1:Lcn/nubia/deskclock/ui/DigitalTime$1;

    iget-object v0, v0, Lcn/nubia/deskclock/ui/DigitalTime$1;->this$0:Lcn/nubia/deskclock/ui/DigitalTime;

    invoke-static {v0}, Lcn/nubia/deskclock/ui/DigitalTime;->access$200(Lcn/nubia/deskclock/ui/DigitalTime;)V

    .line 69
    return-void
.end method
