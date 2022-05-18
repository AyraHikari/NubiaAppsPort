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
.field final synthetic this$0:Lcn/nubia/commonui/widget/DatePickerDialog;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/DatePickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/widget/DatePickerDialog;

    .prologue
    .line 267
    iput-object p1, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 12
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 271
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v7, p2}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$702(Lcn/nubia/commonui/widget/DatePickerDialog;Z)Z

    .line 272
    const/4 v4, 0x0

    .line 273
    .local v4, "solarToLunar":Ljava/lang/String;
    const/4 v3, 0x0

    .line 274
    .local v3, "lunarToSolar":Ljava/lang/String;
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    iget-object v8, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v8}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/commonui/widget/DatePickerView;->getYear()I

    move-result v8

    invoke-static {v7, v8}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$302(Lcn/nubia/commonui/widget/DatePickerDialog;I)I

    .line 275
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    iget-object v8, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v8}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/commonui/widget/DatePickerView;->getMonth()I

    move-result v8

    invoke-static {v7, v8}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$502(Lcn/nubia/commonui/widget/DatePickerDialog;I)I

    .line 276
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    iget-object v8, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v8}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/commonui/widget/DatePickerView;->getDayOfMonth()I

    move-result v8

    invoke-static {v7, v8}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$602(Lcn/nubia/commonui/widget/DatePickerDialog;I)I

    .line 277
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v7}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$700(Lcn/nubia/commonui/widget/DatePickerDialog;)Z

    move-result v7

    if-ne v6, v7, :cond_0

    .line 278
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v7}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v7

    iput-boolean v6, v7, Lcn/nubia/commonui/widget/DatePickerView;->isLunarMode:Z

    .line 280
    :try_start_0
    iget-object v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v7}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$300(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v7

    iget-object v8, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    .line 281
    invoke-static {v8}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$500(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v8

    iget-object v9, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v9}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$600(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v9

    .line 280
    invoke-static {v7, v8, v9}, Lcn/nubia/commonui/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1102(Lcn/nubia/commonui/widget/DatePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 282
    iget-object v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    .line 283
    invoke-static {v6}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1100(Lcn/nubia/commonui/widget/DatePickerDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/commonui/widget/LunarUtil;->solarToLunar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 284
    iget-object v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v6, v4}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1200(Lcn/nubia/commonui/widget/DatePickerDialog;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 287
    :goto_0
    iget-object v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v6}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1300(Lcn/nubia/commonui/widget/DatePickerDialog;)V

    .line 288
    iget-object v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v6}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcn/nubia/commonui/widget/DatePickerView;->setDayLabelVisible(Z)V

    .line 289
    iget-object v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v6}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/commonui/widget/DatePickerView;->getMonthWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/commonui/widget/WheelView;->invalidate()V

    .line 290
    iget-object v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v6}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/commonui/widget/DatePickerView;->getDayWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/commonui/widget/WheelView;->invalidate()V

    .line 337
    :goto_1
    return-void

    .line 292
    :cond_0
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v7}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v7

    iput-boolean v0, v7, Lcn/nubia/commonui/widget/DatePickerView;->isLunarMode:Z

    .line 294
    :try_start_1
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v7}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$300(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v7

    invoke-static {v7}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonth(I)I

    move-result v2

    .line 295
    .local v2, "leapMonth":I
    if-nez v2, :cond_4

    .line 296
    .local v0, "hasLeapMonth":Z
    :goto_2
    const/4 v1, 0x0

    .line 297
    .local v1, "isCurMonthLeap":Z
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v7}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/commonui/widget/DatePickerView;->getMonthWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v7

    .line 298
    invoke-virtual {v7}, Lcn/nubia/commonui/widget/WheelView;->getDisplayedValues()[Ljava/lang/String;

    move-result-object v5

    .line 300
    .local v5, "values":[Ljava/lang/String;
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v7}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$500(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v7

    aget-object v7, v5, v7

    sget-object v8, Lcn/nubia/commonui/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-ne v6, v7, :cond_1

    .line 301
    const/4 v1, 0x1

    .line 304
    :cond_1
    if-eqz v0, :cond_5

    .line 305
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v7}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$500(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v7

    if-ge v7, v2, :cond_2

    .line 306
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    iget-object v8, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v8}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$500(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v7, v8}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$502(Lcn/nubia/commonui/widget/DatePickerDialog;I)I

    .line 312
    :cond_2
    :goto_3
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    iget-object v8, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v8}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$300(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v8

    iget-object v9, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    .line 313
    invoke-static {v9}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$500(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v9

    iget-object v10, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v10}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$600(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    .line 312
    invoke-static {v8, v9, v10}, Lcn/nubia/commonui/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1102(Lcn/nubia/commonui/widget/DatePickerDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 314
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    .line 315
    invoke-static {v7}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1100(Lcn/nubia/commonui/widget/DatePickerDialog;)Ljava/lang/String;

    move-result-object v7

    .line 314
    invoke-static {v7, v1}, Lcn/nubia/commonui/widget/LunarUtil;->lunarToSolar(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 316
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v7, v3}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1400(Lcn/nubia/commonui/widget/DatePickerDialog;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 320
    .end local v0    # "hasLeapMonth":Z
    .end local v1    # "isCurMonthLeap":Z
    .end local v2    # "leapMonth":I
    .end local v5    # "values":[Ljava/lang/String;
    :goto_4
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    iget-object v8, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v8}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1500(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v8

    iget-object v9, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v9}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1600(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v9

    iget-object v10, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v10}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1700(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1000(Lcn/nubia/commonui/widget/DatePickerDialog;III)V

    .line 321
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v7}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/commonui/widget/DatePickerView;->getYearWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 322
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v7}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/commonui/widget/DatePickerView;->getMonthWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 323
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v7}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/commonui/widget/DatePickerView;->getDayWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcn/nubia/commonui/widget/WheelView;->setDisplayedValues([Ljava/lang/String;)V

    .line 325
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v7}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1500(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v7

    sget v8, Lcn/nubia/commonui/widget/DatePickerDialog;->DEFAULT_END_YEAR:I

    if-le v7, v8, :cond_6

    .line 326
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    sget v8, Lcn/nubia/commonui/widget/DatePickerDialog;->DEFAULT_END_YEAR:I

    invoke-static {v7, v8}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1502(Lcn/nubia/commonui/widget/DatePickerDialog;I)I

    .line 331
    :cond_3
    :goto_5
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v7}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v8}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1500(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v8

    iget-object v9, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v9}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1600(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    iget-object v10, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v10}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1700(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v10

    iget-object v11, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    .line 332
    invoke-static {v11}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1800(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    move-result-object v11

    .line 331
    invoke-virtual {v7, v8, v9, v10, v11}, Lcn/nubia/commonui/widget/DatePickerView;->update(IIILcn/nubia/commonui/widget/DatePickerView$OnDateChangeListener;)V

    .line 333
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v7}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcn/nubia/commonui/widget/DatePickerView;->setDayLabelVisible(Z)V

    .line 334
    iget-object v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v6}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/commonui/widget/DatePickerView;->getMonthWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/commonui/widget/WheelView;->invalidate()V

    .line 335
    iget-object v6, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v6}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/commonui/widget/DatePickerView;->getDayWheelView()Lcn/nubia/commonui/widget/WheelView;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/commonui/widget/WheelView;->invalidate()V

    goto/16 :goto_1

    .restart local v2    # "leapMonth":I
    :cond_4
    move v0, v6

    .line 295
    goto/16 :goto_2

    .line 309
    .restart local v0    # "hasLeapMonth":Z
    .restart local v1    # "isCurMonthLeap":Z
    .restart local v5    # "values":[Ljava/lang/String;
    :cond_5
    :try_start_2
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    iget-object v8, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v8}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$500(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v7, v8}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$502(Lcn/nubia/commonui/widget/DatePickerDialog;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 317
    .end local v0    # "hasLeapMonth":Z
    .end local v1    # "isCurMonthLeap":Z
    .end local v2    # "leapMonth":I
    .end local v5    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v7

    goto/16 :goto_4

    .line 327
    :cond_6
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-static {v7}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1500(Lcn/nubia/commonui/widget/DatePickerDialog;)I

    move-result v7

    sget v8, Lcn/nubia/commonui/widget/DatePickerDialog;->DEFAULT_START_YEAR:I

    if-ge v7, v8, :cond_3

    .line 328
    iget-object v7, p0, Lcn/nubia/commonui/widget/DatePickerDialog$2;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    sget v8, Lcn/nubia/commonui/widget/DatePickerDialog;->DEFAULT_START_YEAR:I

    invoke-static {v7, v8}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$1502(Lcn/nubia/commonui/widget/DatePickerDialog;I)I

    goto :goto_5

    .line 285
    :catch_1
    move-exception v6

    goto/16 :goto_0
.end method
