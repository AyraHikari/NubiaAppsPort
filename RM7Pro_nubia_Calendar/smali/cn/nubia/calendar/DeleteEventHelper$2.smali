.class Lcn/nubia/calendar/DeleteEventHelper$2;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/DeleteEventHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/DeleteEventHelper;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/DeleteEventHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/DeleteEventHelper;

    .prologue
    .line 149
    iput-object p1, p0, Lcn/nubia/calendar/DeleteEventHelper$2;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v2, 0x0

    .line 151
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper$2;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcn/nubia/calendar/DeleteEventHelper;->access$300(Lcn/nubia/calendar/DeleteEventHelper;)V

    .line 152
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper$2;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcn/nubia/calendar/DeleteEventHelper;->access$400(Lcn/nubia/calendar/DeleteEventHelper;)Lcn/nubia/calendar/model/CalendarEventModel;

    move-result-object v0

    iget-wide v8, v0, Lcn/nubia/calendar/model/CalendarEventModel;->mId:J

    .line 153
    .local v8, "id":J
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 155
    .local v3, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper$2;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcn/nubia/calendar/DeleteEventHelper;->access$500(Lcn/nubia/calendar/DeleteEventHelper;)Lcn/nubia/calendar/AsyncQueryService;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/DeleteEventHelper$2;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-static {v1}, Lcn/nubia/calendar/DeleteEventHelper;->access$500(Lcn/nubia/calendar/DeleteEventHelper;)Lcn/nubia/calendar/AsyncQueryService;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/calendar/AsyncQueryService;->getNextToken()I

    move-result v1

    const-wide/16 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/AsyncQueryService;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 157
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper$2;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcn/nubia/calendar/DeleteEventHelper;->access$600(Lcn/nubia/calendar/DeleteEventHelper;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper$2;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcn/nubia/calendar/DeleteEventHelper;->access$600(Lcn/nubia/calendar/DeleteEventHelper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper$2;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcn/nubia/calendar/DeleteEventHelper;->access$700(Lcn/nubia/calendar/DeleteEventHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcn/nubia/calendar/DeleteEventHelper$2;->this$0:Lcn/nubia/calendar/DeleteEventHelper;

    invoke-static {v0}, Lcn/nubia/calendar/DeleteEventHelper;->access$800(Lcn/nubia/calendar/DeleteEventHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 163
    :cond_1
    return-void
.end method
