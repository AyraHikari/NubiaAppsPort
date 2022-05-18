.class public Lcn/nubia/calendar/submodule_agenda/activity/GlobalAgendaSearchActivity;
.super Landroid/app/Activity;
.source "GlobalAgendaSearchActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "action":Ljava/lang/String;
    :try_start_0
    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 31
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 32
    .local v1, "detailUri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 33
    .local v5, "id":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 34
    .local v9, "startTime":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x3

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 36
    .local v3, "endTime":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .local v4, "eventIntent":Landroid/content/Intent;
    sget-object v10, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 38
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 37
    invoke-static {v10, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 39
    .local v6, "intentUri":Landroid/net/Uri;
    const-class v10, Lcn/nubia/calendar/EventInfoActivity;

    invoke-virtual {v4, p0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 41
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 42
    const-string v10, "beginTime"

    .line 43
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 42
    invoke-virtual {v4, v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 44
    const-string v10, "endTime"

    .line 45
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 44
    invoke-virtual {v4, v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v4}, Lcn/nubia/calendar/submodule_agenda/activity/GlobalAgendaSearchActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v1    # "detailUri":Landroid/net/Uri;
    .end local v3    # "endTime":Ljava/lang/String;
    .end local v4    # "eventIntent":Landroid/content/Intent;
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "intentUri":Landroid/net/Uri;
    .end local v9    # "startTime":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/GlobalAgendaSearchActivity;->finish()V

    .line 64
    return-void

    .line 48
    :cond_1
    :try_start_1
    const-string v10, "android.intent.action.SEARCH"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 49
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/GlobalAgendaSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "query"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 51
    .local v8, "searchStringParameter":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 52
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/GlobalAgendaSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "intent_extra_data_key"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 55
    :cond_2
    new-instance v7, Landroid/content/Intent;

    const-class v10, Lcn/nubia/calendar/HomeActivity;

    invoke-direct {v7, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .local v7, "searchIntent":Landroid/content/Intent;
    const-string v10, "search_key"

    invoke-virtual {v7, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v10, "for_search"

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, v7}, Lcn/nubia/calendar/submodule_agenda/activity/GlobalAgendaSearchActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 60
    .end local v7    # "searchIntent":Landroid/content/Intent;
    .end local v8    # "searchStringParameter":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 61
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->setStatusBarColor(Landroid/app/Activity;)V

    .line 24
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/activity/GlobalAgendaSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/calendar/submodule_agenda/activity/GlobalAgendaSearchActivity;->handleIntent(Landroid/content/Intent;)V

    .line 25
    return-void
.end method
