.class Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;
.super Ljava/lang/Object;
.source "DateAndTimePickerDialog.java"

# interfaces
.implements Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView$OnTimeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimePickerOnTimeChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;


# direct methods
.method private constructor <init>(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;
    .param p2, "x1"    # Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$1;

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;-><init>(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;IIII)V
    .locals 8
    .param p1, "view"    # Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;
    .param p2, "year"    # I
    .param p3, "monthDay"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 315
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v0, p5}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$302(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;I)I

    .line 316
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v0, p4}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$400(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;I)V

    .line 317
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v0, p2}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$502(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;I)I

    .line 318
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$600(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 319
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$700(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)V

    .line 358
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$800(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v1}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1000(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v1

    .line 323
    invoke-virtual {v1}, Lcn/nubia/calendar/ui_component/view/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-static {v0, v1}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$902(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;[Ljava/lang/String;)[Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v1}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$900(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v2}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1000(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    move-result-object v2

    .line 325
    invoke-virtual {v2}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/calendar/ui_component/view/WheelView;->getValue()I

    move-result v2

    aget-object v1, v1, v2

    .line 324
    invoke-static {v0, v1}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1102(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v1}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$500(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)I

    move-result v1

    invoke-static {v1}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1202(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;Z)Z

    .line 327
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .line 328
    invoke-static {v2}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$500(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .line 329
    invoke-static {v2}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1100(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .line 330
    invoke-static {v3}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$900(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v4}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1200(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Z

    move-result v4

    .line 329
    invoke-static {v2, v3, v4}, Lcn/nubia/commonui/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-static {v1}, Lcn/nubia/commonui/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1302(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1400(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)V

    goto/16 :goto_0

    .line 333
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v1}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1000(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v1

    .line 334
    invoke-virtual {v1}, Lcn/nubia/calendar/ui_component/view/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-static {v0, v1}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1502(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;[Ljava/lang/String;)[Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v1}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1500(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v2}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1000(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;

    move-result-object v2

    .line 336
    invoke-virtual {v2}, Lcn/nubia/calendar/ui_component/view/DateAndTimePickerView;->getMonthDayView()Lcn/nubia/calendar/ui_component/view/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/calendar/ui_component/view/WheelView;->getValue()I

    move-result v2

    aget-object v1, v1, v2

    .line 335
    invoke-static {v0, v1}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1102(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 337
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    iget-object v1, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v1}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$500(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)I

    move-result v1

    invoke-static {v1}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1202(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;Z)Z

    .line 338
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .line 339
    invoke-static {v2}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$500(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .line 340
    invoke-static {v2}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1100(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v3}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1500(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .line 341
    invoke-static {v4}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1200(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Z

    move-result v4

    .line 340
    invoke-static {v2, v3, v4}, Lcn/nubia/commonui/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 338
    invoke-static {v1}, Lcn/nubia/commonui/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1302(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 342
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v2}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1100(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .line 344
    invoke-static {v2}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1100(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .line 345
    invoke-static {v3}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1100(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-static {v0, v1}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1102(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 346
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1800(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v2}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1300(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .line 348
    invoke-static {v2}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1100(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .line 350
    invoke-static {v2}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$500(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .line 352
    invoke-static {v0}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1600(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)I

    move-result v0

    if-ge v0, v7, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    invoke-static {v3}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1600(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ge p5, v7, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .line 355
    invoke-static {v2}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1700(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 352
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;

    .line 353
    invoke-static {v3}, Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;->access$1600(Lcn/nubia/calendar/ui_component/dialog/DateAndTimePickerDialog;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
