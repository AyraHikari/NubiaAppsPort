.class Lcn/nubia/calendar/HomeActivity$2$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/HomeActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/calendar/HomeActivity$2;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/HomeActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/calendar/HomeActivity$2;

    .prologue
    .line 306
    iput-object p1, p0, Lcn/nubia/calendar/HomeActivity$2$1;->this$1:Lcn/nubia/calendar/HomeActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 309
    iget-object v2, p0, Lcn/nubia/calendar/HomeActivity$2$1;->this$1:Lcn/nubia/calendar/HomeActivity$2;

    iget-object v2, v2, Lcn/nubia/calendar/HomeActivity$2;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-static {v2}, Lcn/nubia/calendar/HomeActivity;->access$000(Lcn/nubia/calendar/HomeActivity;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGotoTime()J

    move-result-wide v0

    .line 310
    .local v0, "gotoTime":J
    const-string v2, "calendar_preset"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gotoTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v2, p0, Lcn/nubia/calendar/HomeActivity$2$1;->this$1:Lcn/nubia/calendar/HomeActivity$2;

    iget-object v2, v2, Lcn/nubia/calendar/HomeActivity$2;->this$0:Lcn/nubia/calendar/HomeActivity;

    invoke-static {v2}, Lcn/nubia/calendar/HomeActivity;->access$000(Lcn/nubia/calendar/HomeActivity;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setGotoTime(JZ)V

    .line 312
    return-void
.end method
