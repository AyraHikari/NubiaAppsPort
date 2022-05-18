.class public Lorg/joda/time/YearMonth$Property;
.super Lorg/joda/time/field/AbstractPartialFieldProperty;
.source "YearMonth.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/YearMonth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Property"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4f7cffbcbc856febL


# instance fields
.field private final iBase:Lorg/joda/time/YearMonth;

.field private final iFieldIndex:I


# direct methods
.method constructor <init>(Lorg/joda/time/YearMonth;I)V
    .locals 0

    .prologue
    .line 853
    invoke-direct {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;-><init>()V

    .line 854
    iput-object p1, p0, Lorg/joda/time/YearMonth$Property;->iBase:Lorg/joda/time/YearMonth;

    .line 855
    iput p2, p0, Lorg/joda/time/YearMonth$Property;->iFieldIndex:I

    .line 856
    return-void
.end method


# virtual methods
.method public addToCopy(I)Lorg/joda/time/YearMonth;
    .locals 4

    .prologue
    .line 913
    iget-object v0, p0, Lorg/joda/time/YearMonth$Property;->iBase:Lorg/joda/time/YearMonth;

    invoke-virtual {v0}, Lorg/joda/time/YearMonth;->getValues()[I

    move-result-object v0

    .line 914
    invoke-virtual {p0}, Lorg/joda/time/YearMonth$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/YearMonth$Property;->iBase:Lorg/joda/time/YearMonth;

    iget v3, p0, Lorg/joda/time/YearMonth$Property;->iFieldIndex:I

    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/joda/time/DateTimeField;->add(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v0

    .line 915
    new-instance v1, Lorg/joda/time/YearMonth;

    iget-object v2, p0, Lorg/joda/time/YearMonth$Property;->iBase:Lorg/joda/time/YearMonth;

    invoke-direct {v1, v2, v0}, Lorg/joda/time/YearMonth;-><init>(Lorg/joda/time/YearMonth;[I)V

    return-object v1
.end method

.method public addWrapFieldToCopy(I)Lorg/joda/time/YearMonth;
    .locals 4

    .prologue
    .line 937
    iget-object v0, p0, Lorg/joda/time/YearMonth$Property;->iBase:Lorg/joda/time/YearMonth;

    invoke-virtual {v0}, Lorg/joda/time/YearMonth;->getValues()[I

    move-result-object v0

    .line 938
    invoke-virtual {p0}, Lorg/joda/time/YearMonth$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/YearMonth$Property;->iBase:Lorg/joda/time/YearMonth;

    iget v3, p0, Lorg/joda/time/YearMonth$Property;->iFieldIndex:I

    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/joda/time/DateTimeField;->addWrapField(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v0

    .line 939
    new-instance v1, Lorg/joda/time/YearMonth;

    iget-object v2, p0, Lorg/joda/time/YearMonth$Property;->iBase:Lorg/joda/time/YearMonth;

    invoke-direct {v1, v2, v0}, Lorg/joda/time/YearMonth;-><init>(Lorg/joda/time/YearMonth;[I)V

    return-object v1
.end method

.method public get()I
    .locals 2

    .prologue
    .line 891
    iget-object v0, p0, Lorg/joda/time/YearMonth$Property;->iBase:Lorg/joda/time/YearMonth;

    iget v1, p0, Lorg/joda/time/YearMonth$Property;->iFieldIndex:I

    invoke-virtual {v0, v1}, Lorg/joda/time/YearMonth;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getField()Lorg/joda/time/DateTimeField;
    .locals 2

    .prologue
    .line 864
    iget-object v0, p0, Lorg/joda/time/YearMonth$Property;->iBase:Lorg/joda/time/YearMonth;

    iget v1, p0, Lorg/joda/time/YearMonth$Property;->iFieldIndex:I

    invoke-virtual {v0, v1}, Lorg/joda/time/YearMonth;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v0

    return-object v0
.end method

.method protected getReadablePartial()Lorg/joda/time/ReadablePartial;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lorg/joda/time/YearMonth$Property;->iBase:Lorg/joda/time/YearMonth;

    return-object v0
.end method

.method public getYearMonth()Lorg/joda/time/YearMonth;
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lorg/joda/time/YearMonth$Property;->iBase:Lorg/joda/time/YearMonth;

    return-object v0
.end method

.method public setCopy(I)Lorg/joda/time/YearMonth;
    .locals 4

    .prologue
    .line 954
    iget-object v0, p0, Lorg/joda/time/YearMonth$Property;->iBase:Lorg/joda/time/YearMonth;

    invoke-virtual {v0}, Lorg/joda/time/YearMonth;->getValues()[I

    move-result-object v0

    .line 955
    invoke-virtual {p0}, Lorg/joda/time/YearMonth$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/YearMonth$Property;->iBase:Lorg/joda/time/YearMonth;

    iget v3, p0, Lorg/joda/time/YearMonth$Property;->iFieldIndex:I

    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v0

    .line 956
    new-instance v1, Lorg/joda/time/YearMonth;

    iget-object v2, p0, Lorg/joda/time/YearMonth$Property;->iBase:Lorg/joda/time/YearMonth;

    invoke-direct {v1, v2, v0}, Lorg/joda/time/YearMonth;-><init>(Lorg/joda/time/YearMonth;[I)V

    return-object v1
.end method

.method public setCopy(Ljava/lang/String;)Lorg/joda/time/YearMonth;
    .locals 1

    .prologue
    .line 987
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/YearMonth$Property;->setCopy(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public setCopy(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/YearMonth;
    .locals 6

    .prologue
    .line 971
    iget-object v0, p0, Lorg/joda/time/YearMonth$Property;->iBase:Lorg/joda/time/YearMonth;

    invoke-virtual {v0}, Lorg/joda/time/YearMonth;->getValues()[I

    move-result-object v3

    .line 972
    invoke-virtual {p0}, Lorg/joda/time/YearMonth$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/time/YearMonth$Property;->iBase:Lorg/joda/time/YearMonth;

    iget v2, p0, Lorg/joda/time/YearMonth$Property;->iFieldIndex:I

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[ILjava/lang/String;Ljava/util/Locale;)[I

    move-result-object v0

    .line 973
    new-instance v1, Lorg/joda/time/YearMonth;

    iget-object v2, p0, Lorg/joda/time/YearMonth$Property;->iBase:Lorg/joda/time/YearMonth;

    invoke-direct {v1, v2, v0}, Lorg/joda/time/YearMonth;-><init>(Lorg/joda/time/YearMonth;[I)V

    return-object v1
.end method
