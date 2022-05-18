.class Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel$QueryHandler$CalendarAccountCallback;
.super Ljava/lang/Object;
.source "CalendarAccountModel.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel$QueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CalendarAccountCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel$QueryHandler;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel$QueryHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel$QueryHandler;

    .prologue
    .line 104
    iput-object p1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel$QueryHandler$CalendarAccountCallback;->this$1:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel$QueryHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 112
    .local v0, "result":Landroid/os/Bundle;
    const-string v2, "setupSkipped"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 114
    .local v1, "setupSkipped":Z
    if-eqz v1, :cond_0

    .line 115
    iget-object v2, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel$QueryHandler$CalendarAccountCallback;->this$1:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel$QueryHandler;

    iget-object v2, v2, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel$QueryHandler;->this$0:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;

    invoke-static {v2}, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->access$300(Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;)Lcn/nubia/calendar/util/SharedPrefUtil;

    move-result-object v2

    const-string v3, "preferences_skip_setup"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcn/nubia/calendar/util/SharedPrefUtil;->setSharedPreference(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 119
    .end local v0    # "result":Landroid/os/Bundle;
    .end local v1    # "setupSkipped":Z
    :catch_0
    move-exception v2

    goto :goto_0

    .line 122
    :catch_1
    move-exception v2

    goto :goto_0

    .line 121
    :catch_2
    move-exception v2

    goto :goto_0
.end method
