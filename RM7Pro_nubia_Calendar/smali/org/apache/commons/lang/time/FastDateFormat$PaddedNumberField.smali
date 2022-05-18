.class Lorg/apache/commons/lang/time/FastDateFormat$PaddedNumberField;
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
    name = "PaddedNumberField"
.end annotation


# instance fields
.field private final mField:I

.field private final mSize:I


# direct methods
.method constructor <init>(II)V
    .locals 1
    .param p1, "field"    # I
    .param p2, "size"    # I

    .prologue
    .line 1268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1269
    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    .line 1271
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1273
    :cond_0
    iput p1, p0, Lorg/apache/commons/lang/time/FastDateFormat$PaddedNumberField;->mField:I

    .line 1274
    iput p2, p0, Lorg/apache/commons/lang/time/FastDateFormat$PaddedNumberField;->mSize:I

    .line 1275
    return-void
.end method


# virtual methods
.method public final appendTo(Ljava/lang/StringBuffer;I)V
    .locals 7
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "value"    # I

    .prologue
    const/16 v6, 0x30

    .line 1295
    const/16 v2, 0x64

    if-ge p2, v2, :cond_1

    .line 1296
    iget v1, p0, Lorg/apache/commons/lang/time/FastDateFormat$PaddedNumberField;->mSize:I

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 1297
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1299
    :cond_0
    div-int/lit8 v2, p2, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1300
    rem-int/lit8 v2, p2, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1314
    :goto_1
    return-void

    .line 1303
    .end local v1    # "i":I
    :cond_1
    const/16 v2, 0x3e8

    if-ge p2, v2, :cond_2

    .line 1304
    const/4 v0, 0x3

    .line 1309
    .local v0, "digits":I
    :goto_2
    iget v1, p0, Lorg/apache/commons/lang/time/FastDateFormat$PaddedNumberField;->mSize:I

    .restart local v1    # "i":I
    :goto_3
    add-int/lit8 v1, v1, -0x1

    if-lt v1, v0, :cond_4

    .line 1310
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1306
    .end local v0    # "digits":I
    .end local v1    # "i":I
    :cond_2
    const/4 v2, -0x1

    if-le p2, v2, :cond_3

    const/4 v2, 0x1

    :goto_4
    const-string v3, "Negative values should not be possible"

    int-to-long v4, p2

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/lang/Validate;->isTrue(ZLjava/lang/String;J)V

    .line 1307
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .restart local v0    # "digits":I
    goto :goto_2

    .line 1306
    .end local v0    # "digits":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 1312
    .restart local v0    # "digits":I
    .restart local v1    # "i":I
    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 1288
    iget v0, p0, Lorg/apache/commons/lang/time/FastDateFormat$PaddedNumberField;->mField:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang/time/FastDateFormat$PaddedNumberField;->appendTo(Ljava/lang/StringBuffer;I)V

    .line 1289
    return-void
.end method

.method public estimateLength()I
    .locals 1

    .prologue
    .line 1281
    const/4 v0, 0x4

    return v0
.end method
