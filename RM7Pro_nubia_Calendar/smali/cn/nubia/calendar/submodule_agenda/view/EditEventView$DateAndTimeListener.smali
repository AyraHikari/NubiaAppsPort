.class public Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$onTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateAndTimeListener"
.end annotation


# instance fields
.field private dtpd:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

.field mEditEventViewWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/calendar/submodule_agenda/view/EditEventView;",
            ">;"
        }
    .end annotation
.end field

.field mViewRF:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "editEventView"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;->dtpd:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .line 148
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;->mViewRF:Ljava/lang/ref/WeakReference;

    .line 149
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;->mEditEventViewWR:Ljava/lang/ref/WeakReference;

    .line 150
    return-void
.end method


# virtual methods
.method public onTimeSet(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;IIIII)V
    .locals 20
    .param p1, "view"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I
    .param p5, "hourOfDay"    # I
    .param p6, "minute"    # I

    .prologue
    .line 161
    const/4 v15, 0x0

    .line 162
    .local v15, "timeView":Landroid/view/View;
    const/4 v3, 0x0

    .line 163
    .local v3, "editEventView":Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;->mViewRF:Ljava/lang/ref/WeakReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "timeView":Landroid/view/View;
    check-cast v15, Landroid/view/View;

    .restart local v15    # "timeView":Landroid/view/View;
    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;->mEditEventViewWR:Ljava/lang/ref/WeakReference;

    move-object/from16 v17, v0

    .line 164
    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "editEventView":Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    check-cast v3, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .restart local v3    # "editEventView":Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    if-nez v3, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    const/16 v17, 0x7f6

    move/from16 v0, p2

    move/from16 v1, v17

    if-lt v0, v1, :cond_2

    .line 168
    const/16 p2, 0x7f5

    .line 169
    const/16 p3, 0xb

    .line 170
    const/16 p4, 0x1f

    .line 173
    :cond_2
    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$000(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/text/format/Time;

    move-result-object v14

    .line 174
    .local v14, "startTime":Landroid/text/format/Time;
    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$100(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/text/format/Time;

    move-result-object v6

    .line 175
    .local v6, "endTime":Landroid/text/format/Time;
    const/4 v2, 0x0

    .line 176
    .local v2, "LeapFlag":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;->dtpd:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;->dtpd:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->getSwitchState()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;->dtpd:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->getSwitchState()Z

    move-result v2

    .line 180
    :cond_3
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v3, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$202(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Z)Z

    .line 181
    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$300(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Z

    move-result v17

    move/from16 v0, v17

    if-eq v0, v2, :cond_b

    .line 182
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v3, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$402(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Z)Z

    .line 188
    :goto_1
    iput-boolean v2, v3, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mTimeLeapFlag:Z

    .line 189
    if-nez v2, :cond_c

    const/16 v17, 0x1

    :goto_2
    move/from16 v0, v17

    iput-boolean v0, v3, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mSaveStatus:Z

    .line 190
    if-nez v2, :cond_4

    .line 191
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v3, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mDateLeapFlag:Z

    .line 196
    :cond_4
    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$500(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/widget/TextView;

    move-result-object v17

    move-object/from16 v0, v17

    if-ne v15, v0, :cond_d

    .line 197
    const/4 v8, 0x0

    .line 198
    .local v8, "isDateChanged":Z
    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$000(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/text/format/Time;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p2

    if-ne v0, v1, :cond_5

    .line 199
    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$000(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/text/format/Time;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p3

    if-ne v0, v1, :cond_5

    .line 200
    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$000(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/text/format/Time;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p4

    if-eq v0, v1, :cond_6

    .line 201
    :cond_5
    const/4 v8, 0x1

    .line 202
    const-string v17, "EditEventView"

    const-string v18, "isDateChanged true"

    invoke-static/range {v17 .. v18}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_6
    iget v0, v6, Landroid/text/format/Time;->year:I

    move/from16 v17, v0

    iget v0, v14, Landroid/text/format/Time;->year:I

    move/from16 v18, v0

    sub-int v16, v17, v18

    .line 206
    .local v16, "yearDuration":I
    iget v0, v6, Landroid/text/format/Time;->month:I

    move/from16 v17, v0

    iget v0, v14, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    sub-int v11, v17, v18

    .line 207
    .local v11, "monthDuration":I
    iget v0, v6, Landroid/text/format/Time;->monthDay:I

    move/from16 v17, v0

    iget v0, v14, Landroid/text/format/Time;->monthDay:I

    move/from16 v18, v0

    sub-int v10, v17, v18

    .line 208
    .local v10, "monthDayDuration":I
    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v17, v0

    iget v0, v14, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    sub-int v7, v17, v18

    .line 209
    .local v7, "hourDuration":I
    iget v0, v6, Landroid/text/format/Time;->minute:I

    move/from16 v17, v0

    iget v0, v14, Landroid/text/format/Time;->minute:I

    move/from16 v18, v0

    sub-int v9, v17, v18

    .line 210
    .local v9, "minuteDuration":I
    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x3c

    iget v0, v6, Landroid/text/format/Time;->minute:I

    move/from16 v18, v0

    add-int v17, v17, v18

    iget v0, v14, Landroid/text/format/Time;->hour:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x3c

    iget v0, v14, Landroid/text/format/Time;->minute:I

    move/from16 v19, v0

    add-int v18, v18, v19

    sub-int v17, v17, v18

    const/16 v18, 0x3c

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_7

    .line 211
    add-int/lit8 v17, p5, 0x1

    move/from16 v0, v17

    iput v0, v6, Landroid/text/format/Time;->hour:I

    .line 212
    move/from16 v0, p6

    iput v0, v6, Landroid/text/format/Time;->minute:I

    .line 214
    :cond_7
    iget v0, v6, Landroid/text/format/Time;->hour:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x3c

    iget v0, v6, Landroid/text/format/Time;->minute:I

    move/from16 v18, v0

    add-int v17, v17, v18

    mul-int/lit8 v18, p5, 0x3c

    add-int v18, v18, p6

    sub-int v17, v17, v18

    if-gez v17, :cond_8

    .line 215
    add-int/lit8 v17, p5, 0x1

    move/from16 v0, v17

    iput v0, v6, Landroid/text/format/Time;->hour:I

    .line 216
    move/from16 v0, p6

    iput v0, v6, Landroid/text/format/Time;->minute:I

    .line 218
    :cond_8
    move/from16 v0, p2

    iput v0, v14, Landroid/text/format/Time;->year:I

    .line 219
    move/from16 v0, p3

    iput v0, v14, Landroid/text/format/Time;->month:I

    .line 220
    move/from16 v0, p4

    iput v0, v14, Landroid/text/format/Time;->monthDay:I

    .line 221
    move/from16 v0, p5

    iput v0, v14, Landroid/text/format/Time;->hour:I

    .line 222
    move/from16 v0, p6

    iput v0, v14, Landroid/text/format/Time;->minute:I

    .line 223
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v12

    .line 225
    .local v12, "startMillis":J
    add-int v17, p2, v16

    move/from16 v0, v17

    iput v0, v6, Landroid/text/format/Time;->year:I

    .line 226
    add-int v17, p3, v11

    move/from16 v0, v17

    iput v0, v6, Landroid/text/format/Time;->month:I

    .line 227
    add-int v17, p4, v10

    move/from16 v0, v17

    iput v0, v6, Landroid/text/format/Time;->monthDay:I

    .line 230
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    .line 231
    .local v4, "endMillis":J
    if-eqz v8, :cond_9

    .line 233
    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$600(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    .line 236
    :cond_9
    invoke-static {v3, v12, v13}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$700(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;J)V

    .line 254
    .end local v7    # "hourDuration":I
    .end local v8    # "isDateChanged":Z
    .end local v9    # "minuteDuration":I
    .end local v10    # "monthDayDuration":I
    .end local v11    # "monthDuration":I
    .end local v16    # "yearDuration":I
    :cond_a
    :goto_3
    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 257
    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$500(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/widget/TextView;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v0, v12, v13, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$900(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Landroid/widget/TextView;JZ)V

    .line 258
    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$1000(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/widget/TextView;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v0, v4, v5, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$900(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Landroid/widget/TextView;JZ)V

    .line 261
    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$1100(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    .line 262
    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$600(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    .line 264
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v3, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$202(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Z)Z

    goto/16 :goto_0

    .line 184
    .end local v4    # "endMillis":J
    .end local v12    # "startMillis":J
    :cond_b
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v3, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$402(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Z)Z

    goto/16 :goto_1

    .line 189
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 239
    :cond_d
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    .line 240
    .restart local v12    # "startMillis":J
    move/from16 v0, p2

    iput v0, v6, Landroid/text/format/Time;->year:I

    .line 241
    move/from16 v0, p3

    iput v0, v6, Landroid/text/format/Time;->month:I

    .line 242
    move/from16 v0, p4

    iput v0, v6, Landroid/text/format/Time;->monthDay:I

    .line 243
    move/from16 v0, p5

    iput v0, v6, Landroid/text/format/Time;->hour:I

    .line 244
    move/from16 v0, p6

    iput v0, v6, Landroid/text/format/Time;->minute:I

    .line 245
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    .line 248
    .restart local v4    # "endMillis":J
    invoke-virtual {v6, v14}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 249
    invoke-virtual {v6, v14}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 250
    move-wide v4, v12

    goto :goto_3
.end method

.method public setNubiaLunarTimePickerDialog(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V
    .locals 0
    .param p1, "dtpd"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .prologue
    .line 155
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;->dtpd:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .line 156
    return-void
.end method
