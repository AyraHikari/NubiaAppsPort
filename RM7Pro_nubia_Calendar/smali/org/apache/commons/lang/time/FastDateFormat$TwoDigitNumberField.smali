.class Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitNumberField;
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
    name = "TwoDigitNumberField"
.end annotation


# instance fields
.field private final mField:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "field"    # I

    .prologue
    .line 1328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1329
    iput p1, p0, Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitNumberField;->mField:I

    .line 1330
    return-void
.end method


# virtual methods
.method public final appendTo(Ljava/lang/StringBuffer;I)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # I

    .prologue
    .line 1350
    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    .line 1351
    div-int/lit8 v0, p2, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1352
    rem-int/lit8 v0, p2, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1356
    :goto_0
    return-void

    .line 1354
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 1343
    iget v0, p0, Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitNumberField;->mField:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/time/FastDateFormat$TwoDigitNumberField;->appendTo(Ljava/lang/StringBuffer;I)V

    .line 1344
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .prologue
    .line 1336
    const/4 v0, 0x2

    return v0
.end method
