.class Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNumberRule;
.super Ljava/lang/Object;
.source "FastDateFormat.java"

# interfaces
.implements Lorg/apache/commons/lang/time/FastDateFormat$Rule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/time/FastDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeZoneNumberRule"
.end annotation


# static fields
.field static final INSTANCE_COLON:Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNumberRule;

.field static final INSTANCE_NO_COLON:Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNumberRule;


# instance fields
.field final mColon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1588
    new-instance v0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNumberRule;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNumberRule;-><init>(Z)V

    sput-object v0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNumberRule;->INSTANCE_COLON:Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNumberRule;

    .line 1589
    new-instance v0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNumberRule;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNumberRule;-><init>(Z)V

    sput-object v0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNumberRule;->INSTANCE_NO_COLON:Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNumberRule;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0
    .param p1, "colon"    # Z

    .prologue
    .line 1598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1599
    iput-boolean p1, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNumberRule;->mColon:Z

    .line 1600
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 1613
    const/16 v3, 0xf

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int v2, v3, v4

    .line 1615
    .local v2, "offset":I
    if-gez v2, :cond_1

    .line 1616
    const/16 v3, 0x2d

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1617
    neg-int v2, v2

    .line 1622
    :goto_0
    const v3, 0x36ee80

    div-int v0, v2, v3

    .line 1623
    .local v0, "hours":I
    div-int/lit8 v3, v0, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1624
    rem-int/lit8 v3, v0, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1626
    iget-boolean v3, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNumberRule;->mColon:Z

    if-eqz v3, :cond_0

    .line 1627
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1630
    :cond_0
    const v3, 0xea60

    div-int v3, v2, v3

    mul-int/lit8 v4, v0, 0x3c

    sub-int v1, v3, v4

    .line 1631
    .local v1, "minutes":I
    div-int/lit8 v3, v1, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1632
    rem-int/lit8 v3, v1, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1633
    return-void

    .line 1619
    .end local v0    # "hours":I
    .end local v1    # "minutes":I
    :cond_1
    const/16 v3, 0x2b

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public estimateLength()I
    .locals 1

    .prologue
    .line 1606
    const/4 v0, 0x5

    return v0
.end method
