.class Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;
.super Ljava/lang/Object;
.source "NubiaLunarTimePickerDialog.java"

# interfaces
.implements Lcn/nubia/commonui/widget/NubiaLunarTimePickerView$OnTimeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimePickerOnTimeChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;
    .param p2, "x1"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$1;

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;-><init>(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;IIII)V
    .locals 5
    .param p1, "view"    # Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;
    .param p2, "year"    # I
    .param p3, "monthDay"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I

    .prologue
    .line 297
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v0, p5}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$302(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;I)I

    .line 298
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v0, p4}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$400(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;I)V

    .line 299
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v0, p2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$502(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;I)I

    .line 301
    const/4 v0, 0x1

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$600(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 302
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$700(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V

    .line 334
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$800(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1000(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v1

    .line 306
    invoke-virtual {v1}, Lcn/nubia/commonui/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v1

    .line 305
    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$902(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;[Ljava/lang/String;)[Ljava/lang/String;

    .line 307
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$900(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1000(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    move-result-object v2

    .line 308
    invoke-virtual {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v2

    aget-object v1, v1, v2

    .line 307
    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1102(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 309
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$500(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)I

    move-result v1

    invoke-static {v1}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1202(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Z)Z

    .line 310
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .line 311
    invoke-static {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$500(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .line 312
    invoke-static {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1100(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .line 313
    invoke-static {v3}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$900(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v4}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1200(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Z

    move-result v4

    .line 312
    invoke-static {v2, v3, v4}, Lcn/nubia/commonui/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-static {v1}, Lcn/nubia/commonui/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1302(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 314
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1400(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V

    goto/16 :goto_0

    .line 316
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1000(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v1

    .line 317
    invoke-virtual {v1}, Lcn/nubia/commonui/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1502(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;[Ljava/lang/String;)[Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1500(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1000(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    move-result-object v2

    .line 319
    invoke-virtual {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v2

    aget-object v1, v1, v2

    .line 318
    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1102(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$500(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)I

    move-result v1

    invoke-static {v1}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1202(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Z)Z

    .line 321
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .line 322
    invoke-static {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$500(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .line 323
    invoke-static {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1100(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v3}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1500(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .line 324
    invoke-static {v4}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1200(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Z

    move-result v4

    .line 323
    invoke-static {v2, v3, v4}, Lcn/nubia/commonui/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 321
    invoke-static {v1}, Lcn/nubia/commonui/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1302(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1100(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v4}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1100(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .line 327
    invoke-static {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1100(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .line 328
    invoke-static {v3}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1100(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v4}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1100(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1102(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 329
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    sget-object v1, Lcn/nubia/commonui/widget/LunarUtil;->WEEKDAYS_SHORT:[Ljava/lang/String;

    sget-object v2, Lcn/nubia/commonui/widget/LunarUtil;->WEEKDAYS_LONG:[Ljava/lang/String;

    .line 330
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v3}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1300(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    aget-object v1, v1, v2

    .line 329
    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1302(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$TimePickerOnTimeChangeListener;->this$0:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1400(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V

    goto/16 :goto_0
.end method
