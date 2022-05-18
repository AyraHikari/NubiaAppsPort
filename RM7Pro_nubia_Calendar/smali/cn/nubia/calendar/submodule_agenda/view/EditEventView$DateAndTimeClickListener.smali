.class public Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;
.super Ljava/lang/Object;
.source "EditEventView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateAndTimeClickListener"
.end annotation


# instance fields
.field private mDateTimeViewWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDateViewWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mEditEventViewWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/calendar/submodule_agenda/view/EditEventView;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/text/format/Time;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/format/Time;Landroid/view/View;Landroid/view/View;Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "time"    # Landroid/text/format/Time;
    .param p3, "dateView"    # Landroid/view/View;
    .param p4, "dateTimeView"    # Landroid/view/View;
    .param p5, "editEventView"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;->mTimeWR:Ljava/lang/ref/WeakReference;

    .line 289
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;->mTitle:Ljava/lang/CharSequence;

    .line 290
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;->mDateViewWR:Ljava/lang/ref/WeakReference;

    .line 291
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;->mDateTimeViewWR:Ljava/lang/ref/WeakReference;

    .line 292
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;->mEditEventViewWR:Ljava/lang/ref/WeakReference;

    .line 293
    return-void
.end method

.method private onDateAndTimeClick()V
    .locals 12

    .prologue
    .line 315
    const/4 v11, 0x0

    .line 316
    .local v11, "time":Landroid/text/format/Time;
    const/4 v9, 0x0

    .local v9, "dateView":Landroid/view/View;
    const/4 v8, 0x0

    .line 317
    .local v8, "dateTimeView":Landroid/view/View;
    const/4 v10, 0x0

    .line 318
    .local v10, "editEventView":Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;->mTimeWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "time":Landroid/text/format/Time;
    check-cast v11, Landroid/text/format/Time;

    .restart local v11    # "time":Landroid/text/format/Time;
    if-eqz v11, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;->mDateViewWR:Ljava/lang/ref/WeakReference;

    .line 319
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "dateView":Landroid/view/View;
    check-cast v9, Landroid/view/View;

    .restart local v9    # "dateView":Landroid/view/View;
    if-eqz v9, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;->mDateTimeViewWR:Ljava/lang/ref/WeakReference;

    .line 320
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "dateTimeView":Landroid/view/View;
    check-cast v8, Landroid/view/View;

    .restart local v8    # "dateTimeView":Landroid/view/View;
    if-eqz v8, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;->mEditEventViewWR:Ljava/lang/ref/WeakReference;

    .line 321
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "editEventView":Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    check-cast v10, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .restart local v10    # "editEventView":Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    if-nez v10, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    invoke-static {v10}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$1200(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;

    move-result-object v0

    if-nez v0, :cond_2

    .line 325
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;

    invoke-direct {v0, v8, v10}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;-><init>(Landroid/view/View;Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    invoke-static {v10, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$1202(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;)Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;

    .line 332
    :goto_1
    new-instance v0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .line 333
    invoke-static {v10}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v10}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$1200(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;

    move-result-object v2

    iget v3, v11, Landroid/text/format/Time;->year:I

    iget v4, v11, Landroid/text/format/Time;->month:I

    iget v5, v11, Landroid/text/format/Time;->monthDay:I

    iget v6, v11, Landroid/text/format/Time;->hour:I

    iget v7, v11, Landroid/text/format/Time;->minute:I

    invoke-direct/range {v0 .. v7}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;-><init>(Landroid/content/Context;Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$onTimeSetListener;IIIII)V

    .line 332
    invoke-static {v10, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$1302(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .line 336
    invoke-static {v10}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$1300(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 337
    invoke-static {v10}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    invoke-static {v10}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$1300(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->show()V

    .line 339
    invoke-static {v10}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$1200(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;

    move-result-object v0

    invoke-static {v10}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$1300(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;->setNubiaLunarTimePickerDialog(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V

    goto :goto_0

    .line 327
    :cond_2
    const/4 v0, 0x0

    invoke-static {v10, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$1202(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;)Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;

    .line 328
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;

    invoke-direct {v0, v8, v10}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;-><init>(Landroid/view/View;Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    invoke-static {v10, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$1202(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;)Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeListener;

    goto :goto_1
.end method

.method private onDateClick()V
    .locals 10

    .prologue
    .line 345
    const/4 v9, 0x0

    .line 346
    .local v9, "time":Landroid/text/format/Time;
    const/4 v7, 0x0

    .local v7, "dateView":Landroid/view/View;
    const/4 v6, 0x0

    .line 347
    .local v6, "dateTimeView":Landroid/view/View;
    const/4 v8, 0x0

    .line 348
    .local v8, "editEventView":Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;->mTimeWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "time":Landroid/text/format/Time;
    check-cast v9, Landroid/text/format/Time;

    .restart local v9    # "time":Landroid/text/format/Time;
    if-eqz v9, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;->mDateViewWR:Ljava/lang/ref/WeakReference;

    .line 349
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "dateView":Landroid/view/View;
    check-cast v7, Landroid/view/View;

    .restart local v7    # "dateView":Landroid/view/View;
    if-eqz v7, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;->mDateTimeViewWR:Ljava/lang/ref/WeakReference;

    .line 350
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "dateTimeView":Landroid/view/View;
    check-cast v6, Landroid/view/View;

    .restart local v6    # "dateTimeView":Landroid/view/View;
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;->mEditEventViewWR:Ljava/lang/ref/WeakReference;

    .line 351
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "editEventView":Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    check-cast v8, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .restart local v8    # "editEventView":Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    if-nez v8, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    invoke-static {v8}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$1400(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;

    move-result-object v0

    if-nez v0, :cond_2

    .line 355
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;

    invoke-direct {v0, v7, v8}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;-><init>(Landroid/view/View;Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    invoke-static {v8, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$1402(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;)Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;

    .line 360
    :goto_1
    new-instance v0, Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v8}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v1

    .line 361
    invoke-static {v8}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$1400(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;

    move-result-object v2

    iget v3, v9, Landroid/text/format/Time;->year:I

    iget v4, v9, Landroid/text/format/Time;->month:I

    iget v5, v9, Landroid/text/format/Time;->monthDay:I

    invoke-direct/range {v0 .. v5}, Lcn/nubia/commonui/widget/DatePickerDialog;-><init>(Landroid/content/Context;Lcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;III)V

    .line 360
    invoke-static {v8, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$1502(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerDialog;

    .line 364
    invoke-static {v8}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$1500(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/commonui/widget/DatePickerDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/DatePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 365
    invoke-static {v8}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$800(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    invoke-static {v8}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$1500(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/commonui/widget/DatePickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/DatePickerDialog;->show()V

    .line 368
    invoke-static {v8}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$1400(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;

    move-result-object v0

    invoke-static {v8}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$1500(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)Lcn/nubia/commonui/widget/DatePickerDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;->setDatePickerDialog(Lcn/nubia/commonui/widget/DatePickerDialog;)V

    goto :goto_0

    .line 357
    :cond_2
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$1402(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;)Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;

    .line 358
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;

    invoke-direct {v0, v7, v8}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;-><init>(Landroid/view/View;Lcn/nubia/calendar/submodule_agenda/view/EditEventView;)V

    invoke-static {v8, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$1402(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;)Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateListener;

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 297
    const/4 v3, 0x0

    .line 298
    .local v3, "time":Landroid/text/format/Time;
    const/4 v1, 0x0

    .local v1, "dateView":Landroid/view/View;
    const/4 v0, 0x0

    .line 299
    .local v0, "dateTimeView":Landroid/view/View;
    const/4 v2, 0x0

    .line 300
    .local v2, "editEventView":Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;->mTimeWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "time":Landroid/text/format/Time;
    check-cast v3, Landroid/text/format/Time;

    .restart local v3    # "time":Landroid/text/format/Time;
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;->mDateViewWR:Ljava/lang/ref/WeakReference;

    .line 301
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "dateView":Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .restart local v1    # "dateView":Landroid/view/View;
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;->mDateTimeViewWR:Ljava/lang/ref/WeakReference;

    .line 302
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "dateTimeView":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0    # "dateTimeView":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;->mEditEventViewWR:Ljava/lang/ref/WeakReference;

    .line 303
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "editEventView":Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    check-cast v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .restart local v2    # "editEventView":Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    if-nez v2, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->CalcelInput()V

    .line 307
    iget-object v4, v2, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->mAllDayCheckBox:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v4}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 308
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;->onDateClick()V

    goto :goto_0

    .line 310
    :cond_2
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$DateAndTimeClickListener;->onDateAndTimeClick()V

    goto :goto_0
.end method
