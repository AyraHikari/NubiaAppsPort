.class Lcn/nubia/touping/Utils/DialogManager$11;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/touping/Utils/DialogManager;->showDeviceList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/touping/Utils/DialogManager;


# direct methods
.method constructor <init>(Lcn/nubia/touping/Utils/DialogManager;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/touping/Utils/DialogManager;

    .prologue
    .line 266
    iput-object p1, p0, Lcn/nubia/touping/Utils/DialogManager$11;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 269
    const-string v0, "[DialogManager]"

    const-string v1, "search time out"

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager$11;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v0}, Lcn/nubia/touping/Utils/DialogManager;->access$400(Lcn/nubia/touping/Utils/DialogManager;)V

    .line 273
    iget-object v0, p0, Lcn/nubia/touping/Utils/DialogManager$11;->this$0:Lcn/nubia/touping/Utils/DialogManager;

    invoke-static {v0}, Lcn/nubia/touping/Utils/DialogManager;->access$000(Lcn/nubia/touping/Utils/DialogManager;)Lcn/nubia/touping/AbstractActivity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/touping/MiracastTouPing/OperateMiracastUtils;->stopMiracastTouPing(Landroid/content/Context;)V

    .line 274
    return-void
.end method
