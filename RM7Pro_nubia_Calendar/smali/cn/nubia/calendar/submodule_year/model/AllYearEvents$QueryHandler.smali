.class Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler;
.super Lcn/nubia/calendar/AsyncQueryService;
.source "AllYearEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_year/model/AllYearEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_year/model/AllYearEvents;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/submodule_year/model/AllYearEvents;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    iput-object p1, p0, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_year/model/AllYearEvents;

    .line 139
    invoke-direct {p0, p2}, Lcn/nubia/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-static {p1, p2}, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->access$002(Lcn/nubia/calendar/submodule_year/model/AllYearEvents;Landroid/content/Context;)Landroid/content/Context;

    .line 141
    return-void
.end method


# virtual methods
.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 195
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 147
    if-nez p3, :cond_0

    .line 191
    :goto_0
    return-void

    .line 151
    :cond_0
    :try_start_0
    new-instance v2, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler$1;

    invoke-direct {v2, p0, p3, p2}, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler$1;-><init>(Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler;Landroid/database/Cursor;Ljava/lang/Object;)V

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Void;

    .line 187
    invoke-virtual {v2, v1}, Lcn/nubia/calendar/submodule_year/model/AllYearEvents$QueryHandler$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 199
    return-void
.end method
