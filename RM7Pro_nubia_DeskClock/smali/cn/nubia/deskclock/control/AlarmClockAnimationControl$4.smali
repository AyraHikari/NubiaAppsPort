.class Lcn/nubia/deskclock/control/AlarmClockAnimationControl$4;
.super Ljava/lang/Object;
.source "AlarmClockAnimationControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->formatDay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/control/AlarmClockAnimationControl;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    .prologue
    .line 195
    iput-object p1, p0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$4;->this$0:Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 198
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 199
    .local v11, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 200
    const-string v3, " EEEE"

    invoke-static {v3, v11}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v19

    .line 201
    .local v19, "week":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$4;->this$0:Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    invoke-static {v3}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->access$800(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/deskclock/model/AlarmsDb;->get24HourMode(Landroid/content/Context;)Z

    move-result v15

    .line 202
    .local v15, "mIs24HourMode":Z
    new-instance v3, Ljava/text/DateFormatSymbols;

    invoke-direct {v3}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "ampm":[Ljava/lang/String;
    const-string v9, ""

    .line 204
    .local v9, "ampmString":Ljava/lang/String;
    if-nez v15, :cond_0

    .line 205
    const/16 v3, 0x9

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v14, 0x1

    .line 206
    .local v14, "isMorning":Z
    :goto_0
    if-eqz v14, :cond_2

    .line 207
    const/4 v3, 0x0

    aget-object v9, v2, v3

    .line 212
    .end local v14    # "isMorning":Z
    :cond_0
    :goto_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$4;->this$0:Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    invoke-static {v3}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->access$800(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const v8, 0x10010

    .line 212
    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v3

    .line 214
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 216
    .local v12, "date":Ljava/lang/String;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 217
    .local v10, "bundle":Landroid/os/Bundle;
    const-string v3, "date"

    invoke-virtual {v10, v3, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$4;->this$0:Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    invoke-static {v3}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->access$900(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;)Lcn/nubia/deskclock/control/AlarmClockAnimationControl$WorkerHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$WorkerHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v17

    .line 219
    .local v17, "msg":Landroid/os/Message;
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 220
    const/16 v3, 0x3ec

    move-object/from16 v0, v17

    iput v3, v0, Landroid/os/Message;->what:I

    .line 221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$4;->this$0:Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    invoke-static {v3}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->access$900(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;)Lcn/nubia/deskclock/control/AlarmClockAnimationControl$WorkerHandler;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 223
    const/16 v3, 0xa

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 224
    .local v13, "hour":I
    const/16 v3, 0xc

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v16

    .line 225
    .local v16, "minute":I
    const/16 v3, 0xd

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v18

    .line 226
    .local v18, "second":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$4;->this$0:Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    invoke-static {v3}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->access$900(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;)Lcn/nubia/deskclock/control/AlarmClockAnimationControl$WorkerHandler;

    move-result-object v3

    const/16 v4, 0x3ed

    invoke-virtual {v3, v4}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$WorkerHandler;->removeMessages(I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$4;->this$0:Lcn/nubia/deskclock/control/AlarmClockAnimationControl;

    invoke-static {v3}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl;->access$900(Lcn/nubia/deskclock/control/AlarmClockAnimationControl;)Lcn/nubia/deskclock/control/AlarmClockAnimationControl$WorkerHandler;

    move-result-object v3

    const/16 v4, 0x3ed

    rsub-int/lit8 v5, v13, 0xc

    mul-int/lit8 v5, v5, 0x3c

    mul-int/lit8 v5, v5, 0x3c

    mul-int/lit16 v5, v5, 0x3e8

    mul-int/lit8 v6, v16, 0x3c

    mul-int/lit16 v6, v6, 0x3e8

    sub-int/2addr v5, v6

    move/from16 v0, v18

    mul-int/lit16 v6, v0, 0x3e8

    sub-int/2addr v5, v6

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Lcn/nubia/deskclock/control/AlarmClockAnimationControl$WorkerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 230
    return-void

    .line 205
    .end local v10    # "bundle":Landroid/os/Bundle;
    .end local v12    # "date":Ljava/lang/String;
    .end local v13    # "hour":I
    .end local v16    # "minute":I
    .end local v17    # "msg":Landroid/os/Message;
    .end local v18    # "second":I
    :cond_1
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 209
    .restart local v14    # "isMorning":Z
    :cond_2
    const/4 v3, 0x1

    aget-object v9, v2, v3

    goto/16 :goto_1
.end method
