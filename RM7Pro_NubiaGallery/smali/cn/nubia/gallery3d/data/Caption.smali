.class public Lcn/nubia/gallery3d/data/Caption;
.super Ljava/lang/Object;
.source "Caption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/data/Caption$DateType;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private date:J

.field private dateType:Lcn/nubia/gallery3d/data/Caption$DateType;

.field private withinThisYear:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcn/nubia/gallery3d/data/Caption;->context:Landroid/content/Context;

    .line 32
    iput-wide p2, p0, Lcn/nubia/gallery3d/data/Caption;->date:J

    .line 33
    invoke-direct {p0, p2, p3}, Lcn/nubia/gallery3d/data/Caption;->setup(J)V

    return-void
.end method

.method private getTodayCaption()Ljava/lang/String;
    .locals 2

    .line 86
    iget-object v0, p0, Lcn/nubia/gallery3d/data/Caption;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100249

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getYesterdayCaption()Ljava/lang/String;
    .locals 2

    .line 90
    iget-object v0, p0, Lcn/nubia/gallery3d/data/Caption;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isToday(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 2

    const/4 v0, 0x2

    .line 62
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x5

    .line 63
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isYesterday(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 2

    const/4 v0, 0x2

    .line 67
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x5

    .line 68
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private setYesterday(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 4

    const/4 v0, 0x5

    .line 72
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_1

    const/4 v1, 0x2

    .line 73
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_0

    const/16 p2, 0xb

    .line 74
    invoke-virtual {p1, v1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0x1f

    .line 75
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p1, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 78
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    :goto_0
    return-void
.end method

.method private setup(J)V
    .locals 3

    .line 37
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 38
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 39
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x1

    .line 41
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iput-boolean p2, p0, Lcn/nubia/gallery3d/data/Caption;->withinThisYear:Z

    .line 43
    :cond_0
    iget-boolean p2, p0, Lcn/nubia/gallery3d/data/Caption;->withinThisYear:Z

    if-eqz p2, :cond_2

    .line 44
    invoke-direct {p0, p1, v0}, Lcn/nubia/gallery3d/data/Caption;->isToday(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 45
    sget-object p1, Lcn/nubia/gallery3d/data/Caption$DateType;->TODAY:Lcn/nubia/gallery3d/data/Caption$DateType;

    iput-object p1, p0, Lcn/nubia/gallery3d/data/Caption;->dateType:Lcn/nubia/gallery3d/data/Caption$DateType;

    return-void

    .line 49
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 50
    invoke-direct {p0, p2, p1}, Lcn/nubia/gallery3d/data/Caption;->setYesterday(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 52
    invoke-direct {p0, p2, v0}, Lcn/nubia/gallery3d/data/Caption;->isYesterday(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 53
    sget-object p1, Lcn/nubia/gallery3d/data/Caption$DateType;->YESTERDAY:Lcn/nubia/gallery3d/data/Caption$DateType;

    iput-object p1, p0, Lcn/nubia/gallery3d/data/Caption;->dateType:Lcn/nubia/gallery3d/data/Caption$DateType;

    return-void

    .line 58
    :cond_2
    sget-object p1, Lcn/nubia/gallery3d/data/Caption$DateType;->OTHER:Lcn/nubia/gallery3d/data/Caption$DateType;

    iput-object p1, p0, Lcn/nubia/gallery3d/data/Caption;->dateType:Lcn/nubia/gallery3d/data/Caption$DateType;

    return-void
.end method


# virtual methods
.method public getChinaLocaleCaption()Ljava/lang/String;
    .locals 5

    .line 107
    sget-object v0, Lcn/nubia/gallery3d/data/Caption$DateType;->TODAY:Lcn/nubia/gallery3d/data/Caption$DateType;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/Caption;->dateType:Lcn/nubia/gallery3d/data/Caption$DateType;

    if-ne v0, v1, :cond_0

    .line 108
    invoke-direct {p0}, Lcn/nubia/gallery3d/data/Caption;->getTodayCaption()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 109
    :cond_0
    sget-object v0, Lcn/nubia/gallery3d/data/Caption$DateType;->YESTERDAY:Lcn/nubia/gallery3d/data/Caption$DateType;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/Caption;->dateType:Lcn/nubia/gallery3d/data/Caption$DateType;

    if-ne v0, v1, :cond_1

    .line 110
    invoke-direct {p0}, Lcn/nubia/gallery3d/data/Caption;->getYesterdayCaption()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 113
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/data/Caption;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v1

    const-string v2, "CN"

    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "TW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "HK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 122
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/gallery3d/data/Caption;->withinThisYear:Z

    if-eqz v0, :cond_3

    const-string v0, "M-d"

    goto :goto_0

    :cond_3
    const-string v0, "yyyy-M-d"

    .line 123
    :goto_0
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLayoutRTLNubia()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 124
    iget-wide v1, p0, Lcn/nubia/gallery3d/data/Caption;->date:J

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/util/Locale;

    const-string v4, "ar"

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 127
    :cond_4
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcn/nubia/gallery3d/data/Caption;->date:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 116
    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcn/nubia/gallery3d/data/Caption;->withinThisYear:Z

    if-eqz v0, :cond_6

    const v0, 0x7f100241

    goto :goto_2

    :cond_6
    const v0, 0x7f100242

    .line 118
    :goto_2
    iget-object v1, p0, Lcn/nubia/gallery3d/data/Caption;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/gallery3d/data/Caption;->date:J

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCaption()Ljava/lang/String;
    .locals 1

    const-string v0, "yyyy-M-d"

    .line 103
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/data/Caption;->getFormatCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormatCaption(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 94
    sget-object v0, Lcn/nubia/gallery3d/data/Caption$DateType;->TODAY:Lcn/nubia/gallery3d/data/Caption$DateType;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/Caption;->dateType:Lcn/nubia/gallery3d/data/Caption$DateType;

    if-ne v0, v1, :cond_0

    .line 95
    invoke-direct {p0}, Lcn/nubia/gallery3d/data/Caption;->getTodayCaption()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 96
    :cond_0
    sget-object v0, Lcn/nubia/gallery3d/data/Caption$DateType;->YESTERDAY:Lcn/nubia/gallery3d/data/Caption$DateType;

    iget-object v1, p0, Lcn/nubia/gallery3d/data/Caption;->dateType:Lcn/nubia/gallery3d/data/Caption$DateType;

    if-ne v0, v1, :cond_1

    .line 97
    invoke-direct {p0}, Lcn/nubia/gallery3d/data/Caption;->getYesterdayCaption()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 99
    :cond_1
    iget-wide v0, p0, Lcn/nubia/gallery3d/data/Caption;->date:J

    invoke-static {p1, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
