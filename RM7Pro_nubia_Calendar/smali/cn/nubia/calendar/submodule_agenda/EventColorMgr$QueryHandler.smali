.class Lcn/nubia/calendar/submodule_agenda/EventColorMgr$QueryHandler;
.super Lcn/nubia/calendar/AsyncQueryService;
.source "EventColorMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/EventColorMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/EventColorMgr;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/submodule_agenda/EventColorMgr;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/EventColorMgr;

    .line 110
    invoke-direct {p0, p2}, Lcn/nubia/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    .line 111
    return-void
.end method


# virtual methods
.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 162
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 117
    if-nez p3, :cond_0

    .line 157
    :goto_0
    return-void

    .line 124
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 125
    const/4 v6, 0x0

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 126
    .local v2, "id":J
    const/4 v6, 0x1

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, "type":Ljava/lang/String;
    const/4 v6, 0x2

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, "name":Ljava/lang/String;
    const-string v6, "Contact Birthday"

    .line 129
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 130
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;

    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/EventColorMgr;

    const/16 v7, -0xb21

    const v8, -0x113b8b

    invoke-direct {v0, v6, v7, v8}, Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;-><init>(Lcn/nubia/calendar/submodule_agenda/EventColorMgr;II)V

    .line 149
    .local v0, "color":Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;
    :goto_2
    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/EventColorMgr;

    invoke-static {v6}, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->access$200(Lcn/nubia/calendar/submodule_agenda/EventColorMgr;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 153
    .end local v0    # "color":Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;
    .end local v2    # "id":J
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 132
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "id":J
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "type":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v6, "com.android.exchange"

    .line 133
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 134
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;

    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/EventColorMgr;

    const/16 v7, -0xf17

    const v8, -0x63951

    invoke-direct {v0, v6, v7, v8}, Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;-><init>(Lcn/nubia/calendar/submodule_agenda/EventColorMgr;II)V

    .restart local v0    # "color":Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;
    goto :goto_2

    .line 136
    .end local v0    # "color":Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;
    :cond_2
    const-string v6, "com.google"

    .line 137
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 138
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;

    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/EventColorMgr;

    const/16 v7, -0xe02

    const v8, -0x203c0a

    invoke-direct {v0, v6, v7, v8}, Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;-><init>(Lcn/nubia/calendar/submodule_agenda/EventColorMgr;II)V

    .restart local v0    # "color":Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;
    goto :goto_2

    .line 140
    .end local v0    # "color":Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;
    :cond_3
    const-string v6, "com.ztemt"

    .line 141
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 142
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;

    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/EventColorMgr;

    const v7, -0x18041a

    const v8, -0x692b6b

    invoke-direct {v0, v6, v7, v8}, Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;-><init>(Lcn/nubia/calendar/submodule_agenda/EventColorMgr;II)V

    .restart local v0    # "color":Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;
    goto :goto_2

    .line 145
    .end local v0    # "color":Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;
    :cond_4
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;

    iget-object v6, p0, Lcn/nubia/calendar/submodule_agenda/EventColorMgr$QueryHandler;->this$0:Lcn/nubia/calendar/submodule_agenda/EventColorMgr;

    invoke-static {}, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->access$000()I

    move-result v7

    .line 146
    invoke-static {}, Lcn/nubia/calendar/submodule_agenda/EventColorMgr;->access$100()I

    move-result v8

    invoke-direct {v0, v6, v7, v8}, Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;-><init>(Lcn/nubia/calendar/submodule_agenda/EventColorMgr;II)V

    .restart local v0    # "color":Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;
    goto :goto_2

    .line 151
    .end local v0    # "color":Lcn/nubia/calendar/submodule_agenda/EventColorMgr$EventColor;
    .end local v2    # "id":J
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    :cond_5
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 167
    return-void
.end method
