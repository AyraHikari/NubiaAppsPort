.class Lcn/nubia/calendar/deftcontroller/SelectDateController$DateOKListener;
.super Ljava/lang/Object;
.source "SelectDateController.java"

# interfaces
.implements Lcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/deftcontroller/SelectDateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateOKListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/deftcontroller/SelectDateController;


# direct methods
.method private constructor <init>(Lcn/nubia/calendar/deftcontroller/SelectDateController;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcn/nubia/calendar/deftcontroller/SelectDateController$DateOKListener;->this$0:Lcn/nubia/calendar/deftcontroller/SelectDateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/calendar/deftcontroller/SelectDateController;Lcn/nubia/calendar/deftcontroller/SelectDateController$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/calendar/deftcontroller/SelectDateController;
    .param p2, "x1"    # Lcn/nubia/calendar/deftcontroller/SelectDateController$1;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcn/nubia/calendar/deftcontroller/SelectDateController$DateOKListener;-><init>(Lcn/nubia/calendar/deftcontroller/SelectDateController;)V

    return-void
.end method


# virtual methods
.method public onDateSet(Lcn/nubia/commonui/widget/DatePickerView;III)V
    .locals 13
    .param p1, "view"    # Lcn/nubia/commonui/widget/DatePickerView;
    .param p2, "year2"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 86
    move v6, p2

    .line 87
    .local v6, "year":I
    move/from16 v5, p3

    .line 88
    .local v5, "month":I
    move/from16 v4, p4

    .line 97
    .local v4, "dayOfmonth":I
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/SelectDateController$DateOKListener;->this$0:Lcn/nubia/calendar/deftcontroller/SelectDateController;

    invoke-static {v1}, Lcn/nubia/calendar/deftcontroller/SelectDateController;->access$100(Lcn/nubia/calendar/deftcontroller/SelectDateController;)Lcn/nubia/commonui/widget/DatePickerDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/DatePickerDialog;->getSwitchState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const/4 v7, 0x0

    .line 100
    .local v7, "LepedateStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v6, v5, v4}, Lcn/nubia/commonui/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object v8

    .line 101
    .local v8, "StrDate":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/SelectDateController$DateOKListener;->this$0:Lcn/nubia/calendar/deftcontroller/SelectDateController;

    invoke-static {v1}, Lcn/nubia/calendar/deftcontroller/SelectDateController;->access$100(Lcn/nubia/calendar/deftcontroller/SelectDateController;)Lcn/nubia/commonui/widget/DatePickerDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/DatePickerDialog;->getSwitchState()Z

    move-result v1

    invoke-static {v8, v1}, Lcn/nubia/commonui/widget/LunarUtil;->lunarToSolar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 102
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 103
    const/4 v1, 0x4

    const/4 v2, 0x6

    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 104
    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 109
    .end local v7    # "LepedateStr":Ljava/lang/String;
    .end local v8    # "StrDate":Ljava/lang/String;
    :cond_0
    :goto_0
    const/16 v1, 0x7f5

    if-le v6, v1, :cond_1

    .line 110
    const/16 v6, 0x7f5

    .line 111
    const/16 v5, 0xb

    .line 112
    const/16 v4, 0x1f

    .line 114
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/SelectDateController$DateOKListener;->this$0:Lcn/nubia/calendar/deftcontroller/SelectDateController;

    invoke-static {v1}, Lcn/nubia/calendar/deftcontroller/SelectDateController;->access$200(Lcn/nubia/calendar/deftcontroller/SelectDateController;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getCurTimeZone()Ljava/lang/String;

    move-result-object v12

    .line 115
    .local v12, "timeZone":Ljava/lang/String;
    if-nez v12, :cond_2

    .line 122
    :goto_1
    return-void

    .line 105
    .end local v12    # "timeZone":Ljava/lang/String;
    .restart local v7    # "LepedateStr":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 106
    .local v9, "e":Ljava/lang/Exception;
    const-string v1, "Exception"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    .end local v7    # "LepedateStr":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v12    # "timeZone":Ljava/lang/String;
    :cond_2
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, v12}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "time":Landroid/text/format/Time;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 120
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v10

    .line 121
    .local v10, "millisTime":J
    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/SelectDateController$DateOKListener;->this$0:Lcn/nubia/calendar/deftcontroller/SelectDateController;

    invoke-static {v1}, Lcn/nubia/calendar/deftcontroller/SelectDateController;->access$200(Lcn/nubia/calendar/deftcontroller/SelectDateController;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v10, v11, v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setGotoTime(JZ)V

    goto :goto_1
.end method
