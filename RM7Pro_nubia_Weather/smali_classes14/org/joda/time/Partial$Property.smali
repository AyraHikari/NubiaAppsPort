.class public Lorg/joda/time/Partial$Property;
.super Lorg/joda/time/field/AbstractPartialFieldProperty;
.source "Partial.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/Partial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Property"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3074d5e4b020L


# instance fields
.field private final iFieldIndex:I

.field private final iPartial:Lorg/joda/time/Partial;


# direct methods
.method constructor <init>(Lorg/joda/time/Partial;I)V
    .locals 0

    .prologue
    .line 864
    invoke-direct {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;-><init>()V

    .line 865
    iput-object p1, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    .line 866
    iput p2, p0, Lorg/joda/time/Partial$Property;->iFieldIndex:I

    .line 867
    return-void
.end method


# virtual methods
.method public addToCopy(I)Lorg/joda/time/Partial;
    .locals 4

    .prologue
    .line 924
    iget-object v0, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    invoke-virtual {v0}, Lorg/joda/time/Partial;->getValues()[I

    move-result-object v0

    .line 925
    invoke-virtual {p0}, Lorg/joda/time/Partial$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    iget v3, p0, Lorg/joda/time/Partial$Property;->iFieldIndex:I

    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/joda/time/DateTimeField;->add(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v0

    .line 926
    new-instance v1, Lorg/joda/time/Partial;

    iget-object v2, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    invoke-direct {v1, v2, v0}, Lorg/joda/time/Partial;-><init>(Lorg/joda/time/Partial;[I)V

    return-object v1
.end method

.method public addWrapFieldToCopy(I)Lorg/joda/time/Partial;
    .locals 4

    .prologue
    .line 948
    iget-object v0, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    invoke-virtual {v0}, Lorg/joda/time/Partial;->getValues()[I

    move-result-object v0

    .line 949
    invoke-virtual {p0}, Lorg/joda/time/Partial$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    iget v3, p0, Lorg/joda/time/Partial$Property;->iFieldIndex:I

    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/joda/time/DateTimeField;->addWrapField(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v0

    .line 950
    new-instance v1, Lorg/joda/time/Partial;

    iget-object v2, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    invoke-direct {v1, v2, v0}, Lorg/joda/time/Partial;-><init>(Lorg/joda/time/Partial;[I)V

    return-object v1
.end method

.method public get()I
    .locals 2

    .prologue
    .line 902
    iget-object v0, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    iget v1, p0, Lorg/joda/time/Partial$Property;->iFieldIndex:I

    invoke-virtual {v0, v1}, Lorg/joda/time/Partial;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getField()Lorg/joda/time/DateTimeField;
    .locals 2

    .prologue
    .line 875
    iget-object v0, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    iget v1, p0, Lorg/joda/time/Partial$Property;->iFieldIndex:I

    invoke-virtual {v0, v1}, Lorg/joda/time/Partial;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v0

    return-object v0
.end method

.method public getPartial()Lorg/joda/time/Partial;
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    return-object v0
.end method

.method protected getReadablePartial()Lorg/joda/time/ReadablePartial;
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    return-object v0
.end method

.method public setCopy(I)Lorg/joda/time/Partial;
    .locals 4

    .prologue
    .line 965
    iget-object v0, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    invoke-virtual {v0}, Lorg/joda/time/Partial;->getValues()[I

    move-result-object v0

    .line 966
    invoke-virtual {p0}, Lorg/joda/time/Partial$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    iget v3, p0, Lorg/joda/time/Partial$Property;->iFieldIndex:I

    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object v0

    .line 967
    new-instance v1, Lorg/joda/time/Partial;

    iget-object v2, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    invoke-direct {v1, v2, v0}, Lorg/joda/time/Partial;-><init>(Lorg/joda/time/Partial;[I)V

    return-object v1
.end method

.method public setCopy(Ljava/lang/String;)Lorg/joda/time/Partial;
    .locals 1

    .prologue
    .line 998
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/Partial$Property;->setCopy(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/Partial;

    move-result-object v0

    return-object v0
.end method

.method public setCopy(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/Partial;
    .locals 6

    .prologue
    .line 982
    iget-object v0, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    invoke-virtual {v0}, Lorg/joda/time/Partial;->getValues()[I

    move-result-object v3

    .line 983
    invoke-virtual {p0}, Lorg/joda/time/Partial$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    iget v2, p0, Lorg/joda/time/Partial$Property;->iFieldIndex:I

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[ILjava/lang/String;Ljava/util/Locale;)[I

    move-result-object v0

    .line 984
    new-instance v1, Lorg/joda/time/Partial;

    iget-object v2, p0, Lorg/joda/time/Partial$Property;->iPartial:Lorg/joda/time/Partial;

    invoke-direct {v1, v2, v0}, Lorg/joda/time/Partial;-><init>(Lorg/joda/time/Partial;[I)V

    return-object v1
.end method

.method public withMaximumValue()Lorg/joda/time/Partial;
    .locals 1

    .prologue
    .line 1012
    invoke-virtual {p0}, Lorg/joda/time/Partial$Property;->getMaximumValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/Partial$Property;->setCopy(I)Lorg/joda/time/Partial;

    move-result-object v0

    return-object v0
.end method

.method public withMinimumValue()Lorg/joda/time/Partial;
    .locals 1

    .prologue
    .line 1025
    invoke-virtual {p0}, Lorg/joda/time/Partial$Property;->getMinimumValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/Partial$Property;->setCopy(I)Lorg/joda/time/Partial;

    move-result-object v0

    return-object v0
.end method
