.class final Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;
.super Ljava/lang/Object;
.source "DateTimeZoneBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/tz/DateTimeZoneBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RuleSet"
.end annotation


# static fields
.field private static final YEAR_LIMIT:I


# instance fields
.field private iInitialNameKey:Ljava/lang/String;

.field private iInitialSaveMillis:I

.field private iRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;",
            ">;"
        }
    .end annotation
.end field

.field private iStandardOffset:I

.field private iUpperOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

.field private iUpperYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 973
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    .line 974
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/chrono/ISOChronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    sput v0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->YEAR_LIMIT:I

    .line 975
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 988
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 989
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    .line 990
    const v0, 0x7fffffff

    iput v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperYear:I

    .line 991
    return-void
.end method

.method constructor <init>(Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;)V
    .locals 2

    .prologue
    .line 996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 997
    iget v0, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    iput v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    .line 998
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    .line 999
    iget-object v0, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialNameKey:Ljava/lang/String;

    iput-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialNameKey:Ljava/lang/String;

    .line 1000
    iget v0, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialSaveMillis:I

    iput v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialSaveMillis:I

    .line 1001
    iget v0, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperYear:I

    iput v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperYear:I

    .line 1002
    iget-object v0, p1, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    iput-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    .line 1003
    return-void
.end method


# virtual methods
.method public addRule(Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;)V
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1021
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1023
    :cond_0
    return-void
.end method

.method public buildTailZone(Ljava/lang/String;)Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;
    .locals 4

    .prologue
    const v3, 0x7fffffff

    .line 1167
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1168
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;

    .line 1169
    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;

    .line 1170
    invoke-virtual {v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->getToYear()I

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->getToYear()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1180
    new-instance v2, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;

    iget v3, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    iget-object v0, v0, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->iRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    iget-object v1, v1, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->iRecurrence:Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;

    invoke-direct {v2, p1, v3, v0, v1}, Lorg/joda/time/tz/DateTimeZoneBuilder$DSTZone;-><init>(Ljava/lang/String;ILorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;Lorg/joda/time/tz/DateTimeZoneBuilder$Recurrence;)V

    move-object v0, v2

    .line 1184
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public firstTransition(J)Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;
    .locals 9

    .prologue
    .line 1037
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialNameKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1039
    new-instance v1, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    iget-object v4, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialNameKey:Ljava/lang/String;

    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    iget v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialSaveMillis:I

    add-int v5, v0, v2

    iget v6, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;-><init>(JLjava/lang/String;II)V

    .line 1093
    :goto_0
    return-object v1

    .line 1044
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1050
    const-wide/high16 v2, -0x8000000000000000L

    .line 1051
    const/4 v1, 0x0

    .line 1052
    const/4 v0, 0x0

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    .line 1055
    :goto_1
    invoke-virtual {p0, v2, v3, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->nextTransition(JI)Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1056
    invoke-virtual {v4}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getMillis()J

    move-result-wide v2

    .line 1058
    cmp-long v0, v2, p1

    if-nez v0, :cond_2

    .line 1059
    new-instance v1, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    invoke-direct {v1, p1, p2, v4}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;-><init>(JLorg/joda/time/tz/DateTimeZoneBuilder$Transition;)V

    .line 1092
    :cond_1
    :goto_2
    iput-object v7, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    goto :goto_0

    .line 1063
    :cond_2
    cmp-long v0, v2, p1

    if-lez v0, :cond_5

    .line 1064
    if-nez v1, :cond_4

    .line 1068
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;

    .line 1069
    invoke-virtual {v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->getSaveMillis()I

    move-result v3

    if-nez v3, :cond_3

    .line 1070
    new-instance v1, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    iget v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    invoke-direct {v1, p1, p2, v0, v2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;-><init>(JLorg/joda/time/tz/DateTimeZoneBuilder$Rule;I)V

    .line 1075
    :cond_4
    if-nez v1, :cond_1

    .line 1079
    new-instance v1, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    invoke-virtual {v4}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getNameKey()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    iget v6, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;-><init>(JLjava/lang/String;II)V

    goto :goto_2

    .line 1087
    :cond_5
    new-instance v0, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    invoke-direct {v0, p1, p2, v4}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;-><init>(JLorg/joda/time/tz/DateTimeZoneBuilder$Transition;)V

    .line 1089
    invoke-virtual {v4}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;->getSaveMillis()I

    move-result v1

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    goto :goto_1
.end method

.method public getStandardOffset()I
    .locals 1

    .prologue
    .line 1007
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    return v0
.end method

.method public getUpperLimit(I)J
    .locals 3

    .prologue
    .line 1157
    iget v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperYear:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 1158
    const-wide v0, 0x7fffffffffffffffL

    .line 1160
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperYear:I

    iget v2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setInstant(III)J

    move-result-wide v0

    goto :goto_0
.end method

.method public nextTransition(JI)Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;
    .locals 17

    .prologue
    const/4 v10, 0x0

    .line 1108
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v11

    .line 1112
    const-wide v8, 0x7fffffffffffffffL

    .line 1114
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v5, v10

    .line 1115
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1116
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;

    .line 1117
    move-object/from16 v0, p0

    iget v6, v0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    move-wide/from16 v0, p1

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v6, v2}, Lorg/joda/time/tz/DateTimeZoneBuilder$Rule;->next(JII)J

    move-result-wide v6

    .line 1118
    cmp-long v13, v6, p1

    if-gtz v13, :cond_0

    .line 1119
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1124
    :cond_0
    cmp-long v13, v6, v8

    if-gtz v13, :cond_5

    move-wide v14, v6

    move-object v6, v4

    move-wide v4, v14

    :goto_1
    move-wide v8, v4

    move-object v5, v6

    .line 1129
    goto :goto_0

    .line 1131
    :cond_1
    if-nez v5, :cond_3

    .line 1150
    :cond_2
    :goto_2
    return-object v10

    .line 1136
    :cond_3
    invoke-virtual {v11}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v4

    sget v6, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->YEAR_LIMIT:I

    if-ge v4, v6, :cond_2

    .line 1141
    move-object/from16 v0, p0

    iget v4, v0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperYear:I

    const v6, 0x7fffffff

    if-ge v4, v6, :cond_4

    .line 1142
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    move-object/from16 v0, p0

    iget v6, v0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperYear:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    move/from16 v0, p3

    invoke-virtual {v4, v6, v7, v0}, Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;->setInstant(III)J

    move-result-wide v6

    .line 1144
    cmp-long v4, v8, v6

    if-gez v4, :cond_2

    .line 1150
    :cond_4
    new-instance v10, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    invoke-direct {v10, v8, v9, v5, v4}, Lorg/joda/time/tz/DateTimeZoneBuilder$Transition;-><init>(JLorg/joda/time/tz/DateTimeZoneBuilder$Rule;I)V

    goto :goto_2

    :cond_5
    move-object v6, v5

    move-wide v4, v8

    goto :goto_1
.end method

.method public setFixedSavings(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1015
    iput-object p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialNameKey:Ljava/lang/String;

    .line 1016
    iput p2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialSaveMillis:I

    .line 1017
    return-void
.end method

.method public setStandardOffset(I)V
    .locals 0

    .prologue
    .line 1011
    iput p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    .line 1012
    return-void
.end method

.method public setUpperLimit(ILorg/joda/time/tz/DateTimeZoneBuilder$OfYear;)V
    .locals 0

    .prologue
    .line 1026
    iput p1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperYear:I

    .line 1027
    iput-object p2, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    .line 1028
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialNameKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " initial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iInitialSaveMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " std: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iStandardOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " upper: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iUpperOfYear:Lorg/joda/time/tz/DateTimeZoneBuilder$OfYear;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/time/tz/DateTimeZoneBuilder$RuleSet;->iRules:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
