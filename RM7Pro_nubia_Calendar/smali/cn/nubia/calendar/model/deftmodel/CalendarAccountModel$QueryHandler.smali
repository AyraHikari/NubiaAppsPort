.class Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CalendarAccountModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel$QueryHandler$CalendarAccountCallback;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 75
    iput-object p1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel$QueryHandler;->this$0:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;

    .line 76
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 77
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    .line 81
    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel$QueryHandler;->this$0:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->access$002(Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;Z)Z

    .line 84
    if-eqz p3, :cond_0

    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel$QueryHandler;->this$0:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;

    .line 85
    invoke-static {v1}, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->access$100(Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    :cond_0
    if-eqz p3, :cond_1

    .line 90
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 102
    :cond_1
    :goto_0
    return-void

    .line 89
    :cond_2
    if-eqz p3, :cond_3

    .line 90
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 94
    :cond_3
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v4, "options":Landroid/os/Bundle;
    const-string v1, "introMessage"

    iget-object v2, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel$QueryHandler;->this$0:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;

    invoke-static {v2}, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->access$200(Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c0020

    .line 96
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 97
    const-string v1, "allowSkip"

    const/4 v2, 0x1

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel$QueryHandler;->this$0:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;

    invoke-static {v1}, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->access$100(Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 100
    .local v0, "am":Landroid/accounts/AccountManager;
    const-string v1, "com.google"

    const-string v2, "com.android.calendar"

    iget-object v5, p0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel$QueryHandler;->this$0:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;

    .line 101
    invoke-static {v5}, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->access$100(Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;)Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel$QueryHandler$CalendarAccountCallback;

    invoke-direct {v6, p0}, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel$QueryHandler$CalendarAccountCallback;-><init>(Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel$QueryHandler;)V

    move-object v7, v3

    .line 100
    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0

    .line 89
    .end local v0    # "am":Landroid/accounts/AccountManager;
    .end local v4    # "options":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    if-eqz p3, :cond_4

    .line 90
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 92
    :cond_4
    throw v1
.end method
