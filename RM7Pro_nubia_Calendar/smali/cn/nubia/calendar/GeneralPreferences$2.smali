.class Lcn/nubia/calendar/GeneralPreferences$2;
.super Ljava/lang/Object;
.source "GeneralPreferences.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/GeneralPreferences;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/GeneralPreferences;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/GeneralPreferences;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/GeneralPreferences;

    .prologue
    .line 475
    iput-object p1, p0, Lcn/nubia/calendar/GeneralPreferences$2;->this$0:Lcn/nubia/calendar/GeneralPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 477
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 478
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 479
    .local v3, "year":I
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 480
    .local v2, "month":I
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 481
    .local v1, "day":I
    iget-object v4, p0, Lcn/nubia/calendar/GeneralPreferences$2;->this$0:Lcn/nubia/calendar/GeneralPreferences;

    invoke-static {v4}, Lcn/nubia/calendar/GeneralPreferences;->access$000(Lcn/nubia/calendar/GeneralPreferences;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcn/nubia/calendar/util/ParseXml;->parseXml(Landroid/content/Context;I)V

    .line 482
    iget-object v4, p0, Lcn/nubia/calendar/GeneralPreferences$2;->this$0:Lcn/nubia/calendar/GeneralPreferences;

    invoke-static {v4}, Lcn/nubia/calendar/GeneralPreferences;->access$000(Lcn/nubia/calendar/GeneralPreferences;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcn/nubia/calendar/util/Utils;->initHolidayMap(Landroid/content/Context;I)V

    .line 485
    iget-object v4, p0, Lcn/nubia/calendar/GeneralPreferences$2;->this$0:Lcn/nubia/calendar/GeneralPreferences;

    invoke-static {v4}, Lcn/nubia/calendar/GeneralPreferences;->access$000(Lcn/nubia/calendar/GeneralPreferences;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcn/nubia/calendar/util/ParseXml;->parseWeekendWork(Landroid/content/Context;I)V

    .line 486
    iget-object v4, p0, Lcn/nubia/calendar/GeneralPreferences$2;->this$0:Lcn/nubia/calendar/GeneralPreferences;

    invoke-static {v4}, Lcn/nubia/calendar/GeneralPreferences;->access$000(Lcn/nubia/calendar/GeneralPreferences;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcn/nubia/calendar/util/Utils;->initWeekendWorkList(Landroid/content/Context;I)V

    .line 489
    const/16 v4, 0xb

    if-ne v2, v4, :cond_0

    const/16 v4, 0x1f

    if-ne v1, v4, :cond_0

    .line 490
    iget-object v4, p0, Lcn/nubia/calendar/GeneralPreferences$2;->this$0:Lcn/nubia/calendar/GeneralPreferences;

    invoke-static {v4}, Lcn/nubia/calendar/GeneralPreferences;->access$000(Lcn/nubia/calendar/GeneralPreferences;)Landroid/content/Context;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-static {v4, v5}, Lcn/nubia/calendar/util/ParseXml;->parseXml(Landroid/content/Context;I)V

    .line 491
    iget-object v4, p0, Lcn/nubia/calendar/GeneralPreferences$2;->this$0:Lcn/nubia/calendar/GeneralPreferences;

    invoke-static {v4}, Lcn/nubia/calendar/GeneralPreferences;->access$000(Lcn/nubia/calendar/GeneralPreferences;)Landroid/content/Context;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-static {v4, v5}, Lcn/nubia/calendar/util/Utils;->initHolidayMap(Landroid/content/Context;I)V

    .line 494
    iget-object v4, p0, Lcn/nubia/calendar/GeneralPreferences$2;->this$0:Lcn/nubia/calendar/GeneralPreferences;

    invoke-static {v4}, Lcn/nubia/calendar/GeneralPreferences;->access$000(Lcn/nubia/calendar/GeneralPreferences;)Landroid/content/Context;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-static {v4, v5}, Lcn/nubia/calendar/util/ParseXml;->parseWeekendWork(Landroid/content/Context;I)V

    .line 495
    iget-object v4, p0, Lcn/nubia/calendar/GeneralPreferences$2;->this$0:Lcn/nubia/calendar/GeneralPreferences;

    invoke-static {v4}, Lcn/nubia/calendar/GeneralPreferences;->access$000(Lcn/nubia/calendar/GeneralPreferences;)Landroid/content/Context;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-static {v4, v5}, Lcn/nubia/calendar/util/Utils;->initWeekendWorkList(Landroid/content/Context;I)V

    .line 499
    :cond_0
    return-void
.end method
