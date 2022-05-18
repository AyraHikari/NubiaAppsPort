.class Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;
.super Ljava/lang/Object;
.source "CalendarHolidayModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->asyncLoad(Lcn/nubia/calendar/model/deftmodel/IHolidayDownload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

.field final synthetic val$holidayDownload:Lcn/nubia/calendar/model/deftmodel/IHolidayDownload;

.field final synthetic val$year:I


# direct methods
.method constructor <init>(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;ILcn/nubia/calendar/model/deftmodel/IHolidayDownload;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    .prologue
    .line 48
    iput-object p1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->this$0:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    iput p2, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->val$year:I

    iput-object p3, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->val$holidayDownload:Lcn/nubia/calendar/model/deftmodel/IHolidayDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 50
    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->this$0:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    invoke-static {v1}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->access$000(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 51
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->this$0:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    iget v2, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->val$year:I

    invoke-static {v1, v0, v2}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->access$100(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;Landroid/content/Context;I)V

    .line 52
    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->this$0:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    invoke-static {v1}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->access$200(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->this$0:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    iget v2, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->val$year:I

    invoke-static {v1, v0, v2}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->access$300(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    :cond_0
    iget v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->val$year:I

    iget-object v2, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->val$holidayDownload:Lcn/nubia/calendar/model/deftmodel/IHolidayDownload;

    invoke-static {v0, v1, v2}, Lcn/nubia/calendar/util/ParseXml;->parseXml(Landroid/content/Context;ILcn/nubia/calendar/model/deftmodel/IHolidayDownload;)V

    .line 54
    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->this$0:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    iget v2, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->val$year:I

    invoke-static {v1, v0, v2}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->access$100(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;Landroid/content/Context;I)V

    .line 56
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->this$0:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    iget v2, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->val$year:I

    invoke-static {v1, v0, v2}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->access$400(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;Landroid/content/Context;I)V

    .line 57
    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->this$0:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    invoke-static {v1}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->access$500(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->this$0:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    iget v2, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->val$year:I

    invoke-static {v1, v0, v2}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->access$600(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    :cond_2
    iget v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->val$year:I

    iget-object v2, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->val$holidayDownload:Lcn/nubia/calendar/model/deftmodel/IHolidayDownload;

    invoke-static {v0, v1, v2}, Lcn/nubia/calendar/util/ParseXml;->parseWeekendWork(Landroid/content/Context;ILcn/nubia/calendar/model/deftmodel/IHolidayDownload;)V

    .line 59
    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->this$0:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    iget v2, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->val$year:I

    invoke-static {v1, v0, v2}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->access$400(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;Landroid/content/Context;I)V

    .line 61
    :cond_3
    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->this$0:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    iget v2, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->val$year:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v0, v2}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->access$100(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;Landroid/content/Context;I)V

    .line 62
    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->this$0:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    iget v2, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->val$year:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v0, v2}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->access$700(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->this$0:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    iget v2, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->val$year:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v0, v2}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->access$800(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 63
    :cond_4
    iget v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->val$year:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->val$holidayDownload:Lcn/nubia/calendar/model/deftmodel/IHolidayDownload;

    invoke-static {v0, v1, v2}, Lcn/nubia/calendar/util/ParseXml;->parseXml(Landroid/content/Context;ILcn/nubia/calendar/model/deftmodel/IHolidayDownload;)V

    .line 64
    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->this$0:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    iget v2, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->val$year:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v0, v2}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->access$100(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;Landroid/content/Context;I)V

    .line 66
    :cond_5
    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->this$0:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    iget v2, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->val$year:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v0, v2}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->access$400(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;Landroid/content/Context;I)V

    .line 67
    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->this$0:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    iget v2, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->val$year:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v0, v2}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->access$900(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->this$0:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    iget v2, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->val$year:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v0, v2}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->access$1000(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 68
    :cond_6
    iget v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->val$year:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->val$holidayDownload:Lcn/nubia/calendar/model/deftmodel/IHolidayDownload;

    invoke-static {v0, v1, v2}, Lcn/nubia/calendar/util/ParseXml;->parseWeekendWork(Landroid/content/Context;ILcn/nubia/calendar/model/deftmodel/IHolidayDownload;)V

    .line 69
    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->this$0:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    iget v2, p0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel$1;->val$year:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v0, v2}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->access$400(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;Landroid/content/Context;I)V

    .line 71
    :cond_7
    return-void
.end method
