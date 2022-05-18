.class Lcn/nubia/commonui/widget/DatePickerDialog$2;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/widget/DatePickerDialog;->setupNubiaSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/widget/DatePickerDialog;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/DatePickerDialog;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 269
    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v2, p2}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$702(Lcn/nubia/commonui/widget/DatePickerDialog;Z)Z

    .line 272
    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v3}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/DatePickerView;->getYear()I

    move-result v3

    invoke-static {v2, v3}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$302(Lcn/nubia/commonui/widget/DatePickerDialog;I)I

    .line 273
    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v3}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/DatePickerView;->getMonth()I

    move-result v3

    invoke-static {v2, v3}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$502(Lcn/nubia/commonui/widget/DatePickerDialog;I)I

    .line 274
    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v3}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/DatePickerView;->getDayOfMonth()I

    move-result v3

    invoke-static {v2, v3}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$602(Lcn/nubia/commonui/widget/DatePickerDialog;I)I

    .line 275
    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v2}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$700(Lcn/nubia/commonui/widget/DatePickerDialog;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 276
    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v2}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v2

    iput-boolean v1, v2, Lcn/nubia/commonui/widget/DatePickerView;->isLunarMode:Z

    .line 278
    :try_start_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v2}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$300(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v2

    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    .line 279
    invoke-static {v3}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$500(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v3

    iget-object v4, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v4}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$600(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v4

    .line 278
    invoke-static {v2, v3, v4}, Lcn/nubia/commonui/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1102(Lcn/nubia/commonui/widget/DatePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 280
    iget-object v1, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    .line 281
    invoke-static {v1}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1100(Lcn/nubia/commonui/widget/DatePickerDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/commonui/widget/LunarUtil;->solarToLunar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v2, v1}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1200(Lcn/nubia/commonui/widget/DatePickerDialog;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 285
    :goto_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v1}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1300(Lcn/nubia/commonui/widget/DatePickerDialog;)V

    .line 286
    iget-object v1, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v1}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/widget/DatePickerView;->setDayLabelVisible(Z)V

    .line 287
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/DatePickerView;->getMonthWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->invalidate()V

    .line 288
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/DatePickerView;->getDayWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->invalidate()V

    .line 335
    :goto_1
    return-void

    .line 290
    :cond_0
    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v2}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v2

    iput-boolean v0, v2, Lcn/nubia/commonui/widget/DatePickerView;->isLunarMode:Z

    .line 292
    :try_start_1
    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v2}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$300(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v2

    invoke-static {v2}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonth(I)I

    move-result v3

    .line 293
    if-nez v3, :cond_4

    move v2, v0

    .line 295
    :goto_2
    iget-object v4, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v4}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/commonui/widget/DatePickerView;->getMonthWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v4

    .line 296
    invoke-virtual {v4}, Lcn/nubia/commonui/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v4

    .line 298
    iget-object v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v5}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$500(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v5

    aget-object v4, v4, v5

    sget-object v5, Lcn/nubia/commonui/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-ne v1, v4, :cond_1

    move v0, v1

    .line 302
    :cond_1
    if-eqz v2, :cond_5

    .line 303
    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v2}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$500(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v2

    if-ge v2, v3, :cond_2

    .line 304
    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v3}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$500(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$502(Lcn/nubia/commonui/widget/DatePickerDialog;I)I

    .line 310
    :cond_2
    :goto_3
    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v3}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$300(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v3

    iget-object v4, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    .line 311
    invoke-static {v4}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$500(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v4

    iget-object v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v5}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$600(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 310
    invoke-static {v3, v4, v5}, Lcn/nubia/commonui/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1102(Lcn/nubia/commonui/widget/DatePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 312
    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    .line 313
    invoke-static {v2}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1100(Lcn/nubia/commonui/widget/DatePickerDialog;)Ljava/lang/String;

    move-result-object v2

    .line 312
    invoke-static {v2, v0}, Lcn/nubia/commonui/widget/LunarUtil;->lunarToSolar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 314
    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v2, v0}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1400(Lcn/nubia/commonui/widget/DatePickerDialog;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 318
    :goto_4
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v2}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1500(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v2

    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v3}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1600(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v3

    iget-object v4, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v4}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1700(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1000(Lcn/nubia/commonui/widget/DatePickerDialog;III)V

    .line 319
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/DatePickerView;->getYearWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/DatePickerView;->getMonthWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/DatePickerView;->getDayWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1500(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v0

    sget v2, Lcn/nubia/commonui/widget/DatePickerDialog;->DEFAULT_END_YEAR:I

    if-le v0, v2, :cond_6

    .line 324
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    sget v2, Lcn/nubia/commonui/widget/DatePickerDialog;->DEFAULT_END_YEAR:I

    invoke-static {v0, v2}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1502(Lcn/nubia/commonui/widget/DatePickerDialog;I)I

    .line 329
    :cond_3
    :goto_5
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v2}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1500(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v2

    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v3}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1600(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v4}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1700(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v4

    iget-object v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    .line 330
    invoke-static {v5}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1800(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerDialog$b;

    move-result-object v5

    .line 329
    invoke-virtual {v0, v2, v3, v4, v5}, Lcn/nubia/commonui/widget/DatePickerView;->update(IIILcn/nubia/commonui/widget/DatePickerView$OnDateChangeListener;)V

    .line 331
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/DatePickerView;->setDayLabelVisible(Z)V

    .line 332
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/DatePickerView;->getMonthWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->invalidate()V

    .line 333
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/DatePickerView;->getDayWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/WheelView;->invalidate()V

    goto/16 :goto_1

    :cond_4
    move v2, v1

    .line 293
    goto/16 :goto_2

    .line 307
    :cond_5
    :try_start_2
    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v3}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$500(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$502(Lcn/nubia/commonui/widget/DatePickerDialog;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 315
    :catch_0
    move-exception v0

    goto/16 :goto_4

    .line 325
    :cond_6
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v0}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1500(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v0

    sget v2, Lcn/nubia/commonui/widget/DatePickerDialog;->DEFAULT_START_YEAR:I

    if-ge v0, v2, :cond_3

    .line 326
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->a:Lcn/nubia/commonui/widget/DatePickerDialog;

    sget v2, Lcn/nubia/commonui/widget/DatePickerDialog;->DEFAULT_START_YEAR:I

    invoke-static {v0, v2}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1502(Lcn/nubia/commonui/widget/DatePickerDialog;I)I

    goto :goto_5

    .line 283
    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method
