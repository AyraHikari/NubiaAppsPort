.class public final Lorg/joda/time/field/SkipUndoDateTimeField;
.super Lorg/joda/time/field/DelegatedDateTimeField;
.source "SkipUndoDateTimeField.java"


# static fields
.field private static final serialVersionUID:J = -0x558158f3a13L


# instance fields
.field private final iChronology:Lorg/joda/time/Chronology;

.field private transient iMinValue:I

.field private final iSkip:I


# direct methods
.method public constructor <init>(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeField;)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/field/SkipUndoDateTimeField;-><init>(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeField;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeField;I)V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0, p2}, Lorg/joda/time/field/DelegatedDateTimeField;-><init>(Lorg/joda/time/DateTimeField;)V

    .line 65
    iput-object p1, p0, Lorg/joda/time/field/SkipUndoDateTimeField;->iChronology:Lorg/joda/time/Chronology;

    .line 66
    invoke-super {p0}, Lorg/joda/time/field/DelegatedDateTimeField;->getMinimumValue()I

    move-result v0

    .line 67
    if-ge v0, p3, :cond_0

    .line 68
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joda/time/field/SkipUndoDateTimeField;->iMinValue:I

    .line 74
    :goto_0
    iput p3, p0, Lorg/joda/time/field/SkipUndoDateTimeField;->iSkip:I

    .line 75
    return-void

    .line 69
    :cond_0
    add-int/lit8 v1, p3, 0x1

    if-ne v0, v1, :cond_1

    .line 70
    iput p3, p0, Lorg/joda/time/field/SkipUndoDateTimeField;->iMinValue:I

    goto :goto_0

    .line 72
    :cond_1
    iput v0, p0, Lorg/joda/time/field/SkipUndoDateTimeField;->iMinValue:I

    goto :goto_0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lorg/joda/time/field/SkipUndoDateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/time/field/SkipUndoDateTimeField;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(J)I
    .locals 3

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Lorg/joda/time/field/DelegatedDateTimeField;->get(J)I

    move-result v0

    .line 80
    iget v1, p0, Lorg/joda/time/field/SkipUndoDateTimeField;->iSkip:I

    if-ge v0, v1, :cond_0

    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 83
    :cond_0
    return v0
.end method

.method public getMinimumValue()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/joda/time/field/SkipUndoDateTimeField;->iMinValue:I

    return v0
.end method

.method public set(JI)J
    .locals 3

    .prologue
    .line 87
    iget v0, p0, Lorg/joda/time/field/SkipUndoDateTimeField;->iMinValue:I

    invoke-virtual {p0}, Lorg/joda/time/field/SkipUndoDateTimeField;->getMaximumValue()I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeField;III)V

    .line 88
    iget v0, p0, Lorg/joda/time/field/SkipUndoDateTimeField;->iSkip:I

    if-gt p3, v0, :cond_0

    .line 89
    add-int/lit8 p3, p3, -0x1

    .line 91
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/joda/time/field/DelegatedDateTimeField;->set(JI)J

    move-result-wide v0

    return-wide v0
.end method
