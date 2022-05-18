.class public final Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;
.super Ljava/lang/Object;
.source "Alarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/model/Alarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DaysOfWeek"
.end annotation


# static fields
.field private static DAY_MAP:[I

.field private static DAY_TO_BIT_MASK:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDays:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 537
    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->DAY_MAP:[I

    .line 541
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->DAY_TO_BIT_MASK:Ljava/util/HashMap;

    .line 543
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->DAY_MAP:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 544
    sget-object v1, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->DAY_TO_BIT_MASK:Ljava/util/HashMap;

    sget-object v2, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->DAY_MAP:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 546
    :cond_0
    return-void

    .line 537
    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x1
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "days"    # I

    .prologue
    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    iput p1, p0, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->mDays:I

    .line 553
    return-void
.end method

.method private static convertDayToBitIndex(I)I
    .locals 1
    .param p0, "day"    # I

    .prologue
    .line 628
    add-int/lit8 v0, p0, 0x5

    rem-int/lit8 v0, v0, 0x7

    return v0
.end method

.method private isSet(I)Z
    .locals 3
    .param p1, "day"    # I

    .prologue
    const/4 v0, 0x1

    .line 604
    iget v1, p0, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->mDays:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toString(Landroid/content/Context;ZZ)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "showNever"    # Z
    .param p3, "forAccessibility"    # Z

    .prologue
    const/4 v8, 0x1

    .line 565
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    .local v5, "ret":Ljava/lang/StringBuilder;
    iget v6, p0, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->mDays:I

    if-nez v6, :cond_1

    .line 569
    if-eqz p2, :cond_0

    const v6, 0x7f0d0075

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 600
    :goto_0
    return-object v6

    .line 569
    :cond_0
    const-string v6, ""

    goto :goto_0

    .line 574
    :cond_1
    iget v6, p0, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->mDays:I

    const/16 v7, 0x7f

    if-ne v6, v7, :cond_2

    .line 575
    const v6, 0x7f0d0064

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 579
    :cond_2
    const/4 v0, 0x0

    .local v0, "dayCount":I
    iget v2, p0, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->mDays:I

    .line 580
    .local v2, "days":I
    :goto_1
    if-lez v2, :cond_4

    .line 581
    and-int/lit8 v6, v2, 0x1

    if-ne v6, v8, :cond_3

    .line 582
    add-int/lit8 v0, v0, 0x1

    .line 583
    :cond_3
    shr-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 587
    :cond_4
    new-instance v3, Ljava/text/DateFormatSymbols;

    invoke-direct {v3}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 588
    .local v3, "dfs":Ljava/text/DateFormatSymbols;
    if-nez p3, :cond_5

    if-gt v0, v8, :cond_7

    .line 589
    :cond_5
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, "dayList":[Ljava/lang/String;
    :goto_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    const/4 v6, 0x7

    if-ge v4, v6, :cond_8

    .line 593
    iget v6, p0, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->mDays:I

    shl-int v7, v8, v4

    and-int/2addr v6, v7

    if-eqz v6, :cond_6

    .line 594
    sget-object v6, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->DAY_MAP:[I

    aget v6, v6, v4

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    add-int/lit8 v0, v0, -0x1

    .line 596
    if-lez v0, :cond_6

    .line 597
    const v6, 0x7f0d0056

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 592
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 589
    .end local v1    # "dayList":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_7
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 600
    .restart local v1    # "dayList":[Ljava/lang/String;
    .restart local v4    # "i":I
    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method


# virtual methods
.method public getBooleanArray()[Z
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 659
    new-array v1, v3, [Z

    .line 660
    .local v1, "ret":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 661
    invoke-direct {p0, v0}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->isSet(I)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 660
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 663
    :cond_0
    return-object v1
.end method

.method public getCoded()I
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->mDays:I

    return v0
.end method

.method public getNextAlarm(Ljava/util/Calendar;)I
    .locals 5
    .param p1, "c"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x7

    .line 677
    iget v3, p0, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->mDays:I

    if-nez v3, :cond_1

    .line 678
    const/4 v1, -0x1

    .line 691
    :cond_0
    return v1

    .line 681
    :cond_1
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    rem-int/lit8 v2, v3, 0x7

    .line 683
    .local v2, "today":I
    const/4 v0, 0x0

    .line 684
    .local v0, "day":I
    const/4 v1, 0x0

    .line 685
    .local v1, "dayCount":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 686
    add-int v3, v2, v1

    rem-int/lit8 v0, v3, 0x7

    .line 687
    invoke-direct {p0, v0}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->isSet(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 685
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getSetDays()Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 648
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 649
    .local v1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    .line 650
    invoke-direct {p0, v0}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 651
    sget-object v2, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->DAY_MAP:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 649
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 654
    :cond_1
    return-object v1
.end method

.method public isRepeatSet()Z
    .locals 1

    .prologue
    .line 667
    iget v0, p0, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->mDays:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(IZ)V
    .locals 2
    .param p1, "day"    # I
    .param p2, "set"    # Z

    .prologue
    const/4 v1, 0x1

    .line 632
    if-eqz p2, :cond_0

    .line 633
    iget v0, p0, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->mDays:I

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->mDays:I

    .line 637
    :goto_0
    return-void

    .line 635
    :cond_0
    iget v0, p0, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->mDays:I

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->mDays:I

    goto :goto_0
.end method

.method public set(Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;)V
    .locals 1
    .param p1, "dow"    # Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;

    .prologue
    .line 640
    iget v0, p1, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->mDays:I

    iput v0, p0, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->mDays:I

    .line 641
    return-void
.end method

.method public setDayOfWeek(IZ)V
    .locals 3
    .param p1, "dayOfWeek"    # I
    .param p2, "set"    # Z

    .prologue
    .line 617
    sget-object v1, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->DAY_TO_BIT_MASK:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 618
    .local v0, "bitIndex":I
    invoke-virtual {p0, v0, p2}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->set(IZ)V

    .line 619
    return-void
.end method

.method public varargs setDaysOfWeek(Z[I)V
    .locals 4
    .param p1, "value"    # Z
    .param p2, "daysOfWeek"    # [I

    .prologue
    .line 622
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p2, v1

    .line 623
    .local v0, "day":I
    invoke-static {v0}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->convertDayToBitIndex(I)I

    move-result v3

    invoke-virtual {p0, v3, p1}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->set(IZ)V

    .line 622
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 625
    .end local v0    # "day":I
    :cond_0
    return-void
.end method

.method public toAccessibilityString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 560
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->toString(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DaysOfWeek{mDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->mDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "showNever"    # Z

    .prologue
    .line 556
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;->toString(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
