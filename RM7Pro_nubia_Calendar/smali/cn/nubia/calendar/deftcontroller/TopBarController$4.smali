.class Lcn/nubia/calendar/deftcontroller/TopBarController$4;
.super Ljava/lang/Object;
.source "TopBarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/deftcontroller/TopBarController;->initCurrentYearView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/deftcontroller/TopBarController;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/deftcontroller/TopBarController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/deftcontroller/TopBarController;

    .prologue
    .line 139
    iput-object p1, p0, Lcn/nubia/calendar/deftcontroller/TopBarController$4;->this$0:Lcn/nubia/calendar/deftcontroller/TopBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/TopBarController$4;->this$0:Lcn/nubia/calendar/deftcontroller/TopBarController;

    invoke-static {v1}, Lcn/nubia/calendar/deftcontroller/TopBarController;->access$100(Lcn/nubia/calendar/deftcontroller/TopBarController;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xfa6

    .line 143
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 144
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 145
    return-void
.end method
