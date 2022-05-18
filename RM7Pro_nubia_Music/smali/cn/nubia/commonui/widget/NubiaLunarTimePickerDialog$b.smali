.class Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;
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
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$1;)V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;-><init>(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;IIII)V
    .locals 5

    .prologue
    .line 299
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v0, p5}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$302(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;I)I

    .line 300
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v0, p4}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$400(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;I)V

    .line 301
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v0, p2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$502(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;I)I

    .line 303
    const/4 v0, 0x1

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$600(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 304
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$700(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V

    .line 336
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$800(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1000(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v1

    .line 308
    invoke-virtual {v1}, Lcn/nubia/commonui/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$902(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;[Ljava/lang/String;)[Ljava/lang/String;

    .line 309
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$900(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1000(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    move-result-object v2

    .line 310
    invoke-virtual {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v2

    aget-object v1, v1, v2

    .line 309
    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1102(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$500(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)I

    move-result v1

    invoke-static {v1}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1202(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Z)Z

    .line 312
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .line 313
    invoke-static {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$500(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .line 314
    invoke-static {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1100(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .line 315
    invoke-static {v3}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$900(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v4}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1200(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Z

    move-result v4

    .line 314
    invoke-static {v2, v3, v4}, Lcn/nubia/commonui/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-static {v1}, Lcn/nubia/commonui/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1302(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1400(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V

    goto/16 :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1000(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v1

    .line 319
    invoke-virtual {v1}, Lcn/nubia/commonui/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1502(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;[Ljava/lang/String;)[Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1500(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1000(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;

    move-result-object v2

    .line 321
    invoke-virtual {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerView;->getMonthDayView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/WheelView;->getValue()I

    move-result v2

    aget-object v1, v1, v2

    .line 320
    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1102(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 322
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$500(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)I

    move-result v1

    invoke-static {v1}, Lcn/nubia/commonui/widget/LunarUtil;->isSolarLeapYear(I)Z

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1202(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Z)Z

    .line 323
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .line 324
    invoke-static {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$500(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .line 325
    invoke-static {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1100(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v3}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1500(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .line 326
    invoke-static {v4}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1200(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Z

    move-result v4

    .line 325
    invoke-static {v2, v3, v4}, Lcn/nubia/commonui/widget/LunarUtil;->daysTommdd(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 323
    invoke-static {v1}, Lcn/nubia/commonui/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1302(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1100(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

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

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .line 329
    invoke-static {v2}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1100(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    .line 330
    invoke-static {v3}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1100(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

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

    .line 327
    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1102(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    sget-object v1, Lcn/nubia/commonui/widget/LunarUtil;->WEEKDAYS_SHORT:[Ljava/lang/String;

    sget-object v2, Lcn/nubia/commonui/widget/LunarUtil;->WEEKDAYS_LONG:[Ljava/lang/String;

    .line 332
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v3}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1300(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    aget-object v1, v1, v2

    .line 331
    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1302(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog$b;->a:Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;->access$1400(Lcn/nubia/commonui/widget/NubiaLunarTimePickerDialog;)V

    goto/16 :goto_0
.end method
