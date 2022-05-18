.class Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;
.super Ljava/lang/Object;
.source "DateTimeFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StyleFormatterCacheKey"
.end annotation


# instance fields
.field private final combinedTypeAndStyle:I

.field private final locale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(IIILjava/util/Locale;)V
    .locals 2

    .prologue
    .line 867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    iput-object p4, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;->locale:Ljava/util/Locale;

    .line 870
    shl-int/lit8 v0, p2, 0x4

    add-int/2addr v0, p1

    shl-int/lit8 v1, p3, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;->combinedTypeAndStyle:I

    .line 871
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 884
    if-ne p0, p1, :cond_1

    .line 904
    :cond_0
    :goto_0
    return v0

    .line 887
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 888
    goto :goto_0

    .line 890
    :cond_2
    instance-of v2, p1, Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;

    if-nez v2, :cond_3

    move v0, v1

    .line 891
    goto :goto_0

    .line 893
    :cond_3
    check-cast p1, Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;

    .line 894
    iget v2, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;->combinedTypeAndStyle:I

    iget v3, p1, Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;->combinedTypeAndStyle:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 895
    goto :goto_0

    .line 897
    :cond_4
    iget-object v2, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;->locale:Ljava/util/Locale;

    if-nez v2, :cond_5

    .line 898
    iget-object v2, p1, Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_0

    move v0, v1

    .line 899
    goto :goto_0

    .line 901
    :cond_5
    iget-object v2, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;->locale:Ljava/util/Locale;

    iget-object v3, p1, Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 902
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 876
    .line 877
    iget v0, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;->combinedTypeAndStyle:I

    add-int/lit8 v0, v0, 0x1f

    .line 878
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 879
    return v0

    .line 878
    :cond_0
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatterCacheKey;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->hashCode()I

    move-result v0

    goto :goto_0
.end method
