.class public Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;
.super Ljava/lang/Object;
.source "GregorianLunarDateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/GregorianLunarDateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarData"
.end annotation


# instance fields
.field public chineseCalendar:Lcom/zte/mifavor/widget/ChineseCalendar;

.field public isGregorian:Z

.field public pickedDay:I

.field public pickedMonthSway:I

.field public pickedYear:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 1

    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 927
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->isGregorian:Z

    .line 935
    iput p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->pickedYear:I

    .line 936
    iput p2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->pickedMonthSway:I

    .line 937
    iput p3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->pickedDay:I

    .line 938
    iput-boolean p4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->isGregorian:Z

    .line 939
    invoke-direct {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->initChineseCalendar()V

    return-void
.end method

.method private initChineseCalendar()V
    .locals 5

    .line 943
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->isGregorian:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 944
    new-instance v0, Lcom/zte/mifavor/widget/ChineseCalendar;

    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->pickedYear:I

    iget v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->pickedMonthSway:I

    sub-int/2addr v3, v1

    iget v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->pickedDay:I

    invoke-direct {v0, v2, v3, v1}, Lcom/zte/mifavor/widget/ChineseCalendar;-><init>(III)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->chineseCalendar:Lcom/zte/mifavor/widget/ChineseCalendar;

    goto :goto_0

    .line 946
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->pickedYear:I

    .line 947
    iget v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->pickedMonthSway:I

    iget v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->pickedYear:I

    invoke-static {v2, v3}, Lcom/zte/mifavor/widget/Util;->convertMonthSwayToMonthLunarByYear(II)I

    move-result v2

    .line 948
    iget v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->pickedDay:I

    .line 950
    new-instance v4, Lcom/zte/mifavor/widget/ChineseCalendar;

    invoke-direct {v4, v1, v0, v2, v3}, Lcom/zte/mifavor/widget/ChineseCalendar;-><init>(ZIII)V

    iput-object v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->chineseCalendar:Lcom/zte/mifavor/widget/ChineseCalendar;

    :goto_0
    return-void
.end method


# virtual methods
.method public getCalendar()Ljava/util/Calendar;
    .locals 0

    .line 955
    iget-object p0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$CalendarData;->chineseCalendar:Lcom/zte/mifavor/widget/ChineseCalendar;

    return-object p0
.end method
