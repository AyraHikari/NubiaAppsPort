.class Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitYearField;
.super Ljava/lang/Object;
.source "FastDateFormat.java"

# interfaces
.implements Lorg/apache/commons/lang/time/FastDateFormat$NumberRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/time/FastDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwoDigitYearField"
.end annotation


# static fields
.field static final INSTANCE:Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitYearField;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1363
    new-instance v0, Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitYearField;

    invoke-direct {v0}, Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitYearField;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitYearField;->INSTANCE:Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitYearField;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1370
    return-void
.end method


# virtual methods
.method public final appendTo(Ljava/lang/StringBuffer;I)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # I

    .prologue
    .line 1390
    div-int/lit8 v0, p2, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1391
    rem-int/lit8 v0, p2, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1392
    return-void
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 1383
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitYearField;->appendTo(Ljava/lang/StringBuffer;I)V

    .line 1384
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .prologue
    .line 1376
    const/4 v0, 0x2

    return v0
.end method
