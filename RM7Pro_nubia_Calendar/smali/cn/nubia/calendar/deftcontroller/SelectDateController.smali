.class public Lcn/nubia/calendar/deftcontroller/SelectDateController;
.super Lcn/nubia/deftmachanism/DeftController;
.source "SelectDateController.java"

# interfaces
.implements Lcn/nubia/deftmachanism/IDeftObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/deftcontroller/SelectDateController$DateOKListener;,
        Lcn/nubia/calendar/deftcontroller/SelectDateController$InitData;
    }
.end annotation


# static fields
.field public static final MAXDAYMONTH:I = 0x1f

.field public static final MAXMONTH:I = 0xb

.field public static final MAXYEAR:I = 0x7f5

.field public static final SELECT_CMD_SELECT_DATE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SelectDateController"


# instance fields
.field private mOutterHandler:Landroid/os/Handler;

.field private mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

.field private mdpdialog:Lcn/nubia/commonui/widget/DatePickerDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/deftmachanism/IDeftEventSender;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "sender"    # Lcn/nubia/deftmachanism/IDeftEventSender;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Lcn/nubia/deftmachanism/DeftController;-><init>(Landroid/content/Context;Lcn/nubia/deftmachanism/IDeftEventSender;)V

    .line 126
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/SelectDateController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 127
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/SelectDateController;->mOutterHandler:Landroid/os/Handler;

    .line 128
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/SelectDateController;->mdpdialog:Lcn/nubia/commonui/widget/DatePickerDialog;

    .line 40
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/calendar/deftcontroller/SelectDateController;)Lcn/nubia/commonui/widget/DatePickerDialog;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/SelectDateController;

    .prologue
    .line 23
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/SelectDateController;->mdpdialog:Lcn/nubia/commonui/widget/DatePickerDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/calendar/deftcontroller/SelectDateController;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/deftcontroller/SelectDateController;

    .prologue
    .line 23
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/SelectDateController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    return-object v0
.end method

.method private selectDate()V
    .locals 7

    .prologue
    .line 63
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 65
    .local v6, "time":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 66
    new-instance v0, Lcn/nubia/commonui/widget/DatePickerDialog;

    iget-object v1, p0, Lcn/nubia/calendar/deftcontroller/SelectDateController;->mContext:Landroid/content/Context;

    new-instance v2, Lcn/nubia/calendar/deftcontroller/SelectDateController$DateOKListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcn/nubia/calendar/deftcontroller/SelectDateController$DateOKListener;-><init>(Lcn/nubia/calendar/deftcontroller/SelectDateController;Lcn/nubia/calendar/deftcontroller/SelectDateController$1;)V

    iget v3, v6, Landroid/text/format/Time;->year:I

    iget v4, v6, Landroid/text/format/Time;->month:I

    iget v5, v6, Landroid/text/format/Time;->monthDay:I

    invoke-direct/range {v0 .. v5}, Lcn/nubia/commonui/widget/DatePickerDialog;-><init>(Landroid/content/Context;Lcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;III)V

    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/SelectDateController;->mdpdialog:Lcn/nubia/commonui/widget/DatePickerDialog;

    .line 68
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/SelectDateController;->mdpdialog:Lcn/nubia/commonui/widget/DatePickerDialog;

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/SelectDateController;->mdpdialog:Lcn/nubia/commonui/widget/DatePickerDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/DatePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 75
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/SelectDateController;->mdpdialog:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/DatePickerDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public destroySelf()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/SelectDateController;->mOutterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/SelectDateController;->mOutterHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/SelectDateController;->mdpdialog:Lcn/nubia/commonui/widget/DatePickerDialog;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/SelectDateController;->mdpdialog:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/DatePickerDialog;->dismiss()V

    .line 138
    :cond_1
    return-void
.end method

.method public execCommand(I)V
    .locals 0
    .param p1, "cmd"    # I

    .prologue
    .line 52
    packed-switch p1, :pswitch_data_0

    .line 60
    :goto_0
    return-void

    .line 54
    :pswitch_0
    invoke-direct {p0}, Lcn/nubia/calendar/deftcontroller/SelectDateController;->selectDate()V

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public init(Lcn/nubia/calendar/deftcontroller/SelectDateController$InitData;)V
    .locals 1
    .param p1, "data"    # Lcn/nubia/calendar/deftcontroller/SelectDateController$InitData;

    .prologue
    .line 43
    iget-object v0, p1, Lcn/nubia/calendar/deftcontroller/SelectDateController$InitData;->workingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/SelectDateController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 44
    iget-object v0, p1, Lcn/nubia/calendar/deftcontroller/SelectDateController$InitData;->outterHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/SelectDateController;->mOutterHandler:Landroid/os/Handler;

    .line 46
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/SelectDateController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcn/nubia/calendar/deftcontroller/SelectDateController;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v0, p0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->registerObserver(Ljava/lang/Object;)V

    .line 49
    :cond_0
    return-void
.end method

.method public onChanged(I)V
    .locals 0
    .param p1, "changeFlag"    # I

    .prologue
    .line 79
    return-void
.end method
