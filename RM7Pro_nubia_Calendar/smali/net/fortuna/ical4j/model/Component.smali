.class public abstract Lnet/fortuna/ical4j/model/Component;
.super Ljava/lang/Object;
.source "Component.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final AVAILABLE:Ljava/lang/String; = "AVAILABLE"

.field public static final BEGIN:Ljava/lang/String; = "BEGIN"

.field public static final END:Ljava/lang/String; = "END"

.field public static final EXPERIMENTAL_PREFIX:Ljava/lang/String; = "X-"

.field public static final VALARM:Ljava/lang/String; = "VALARM"

.field public static final VAVAILABILITY:Ljava/lang/String; = "VAVAILABILITY"

.field public static final VEVENT:Ljava/lang/String; = "VEVENT"

.field public static final VFREEBUSY:Ljava/lang/String; = "VFREEBUSY"

.field public static final VJOURNAL:Ljava/lang/String; = "VJOURNAL"

.field public static final VTIMEZONE:Ljava/lang/String; = "VTIMEZONE"

.field public static final VTODO:Ljava/lang/String; = "VTODO"

.field public static final VVENUE:Ljava/lang/String; = "VVENUE"

.field private static final serialVersionUID:J = 0x4499c04881ed51f9L


# instance fields
.field private name:Ljava/lang/String;

.field private properties:Lnet/fortuna/ical4j/model/PropertyList;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v0, Lnet/fortuna/ical4j/model/PropertyList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/PropertyList;-><init>()V

    invoke-direct {p0, p1, v0}, Lnet/fortuna/ical4j/model/Component;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 134
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "p"    # Lnet/fortuna/ical4j/model/PropertyList;

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Component;->name:Ljava/lang/String;

    .line 143
    iput-object p2, p0, Lnet/fortuna/ical4j/model/Component;->properties:Lnet/fortuna/ical4j/model/PropertyList;

    .line 144
    return-void
.end method


# virtual methods
.method public final calculateRecurrenceSet(Lnet/fortuna/ical4j/model/Period;)Lnet/fortuna/ical4j/model/PeriodList;
    .locals 30
    .param p1, "period"    # Lnet/fortuna/ical4j/model/Period;

    .prologue
    .line 277
    new-instance v18, Lnet/fortuna/ical4j/model/PeriodList;

    invoke-direct/range {v18 .. v18}, Lnet/fortuna/ical4j/model/PeriodList;-><init>()V

    .line 279
    .local v18, "recurrenceSet":Lnet/fortuna/ical4j/model/PeriodList;
    const-string v26, "DTSTART"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v22

    check-cast v22, Lnet/fortuna/ical4j/model/property/DtStart;

    .line 280
    .local v22, "start":Lnet/fortuna/ical4j/model/property/DtStart;
    const-string v26, "DTEND"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v5

    check-cast v5, Lnet/fortuna/ical4j/model/property/DateProperty;

    .line 281
    .local v5, "end":Lnet/fortuna/ical4j/model/property/DateProperty;
    if-nez v5, :cond_0

    .line 282
    const-string v26, "DUE"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v5

    .end local v5    # "end":Lnet/fortuna/ical4j/model/property/DateProperty;
    check-cast v5, Lnet/fortuna/ical4j/model/property/DateProperty;

    .line 284
    .restart local v5    # "end":Lnet/fortuna/ical4j/model/property/DateProperty;
    :cond_0
    const-string v26, "DURATION"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/Component;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v4

    check-cast v4, Lnet/fortuna/ical4j/model/property/Duration;

    .line 287
    .local v4, "duration":Lnet/fortuna/ical4j/model/property/Duration;
    if-nez v22, :cond_2

    .line 413
    :cond_1
    return-object v18

    .line 291
    :cond_2
    const-string v26, "VALUE"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/property/DtStart;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v25

    check-cast v25, Lnet/fortuna/ical4j/model/parameter/Value;

    .line 295
    .local v25, "startValue":Lnet/fortuna/ical4j/model/parameter/Value;
    invoke-virtual/range {v22 .. v22}, Lnet/fortuna/ical4j/model/property/DtStart;->isUtc()Z

    move-result v26

    if-eqz v26, :cond_6

    .line 296
    const/16 v26, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PeriodList;->setUtc(Z)V

    .line 306
    :cond_3
    :goto_0
    if-nez v5, :cond_7

    if-nez v4, :cond_7

    .line 307
    new-instance v11, Lnet/fortuna/ical4j/model/Dur;

    invoke-virtual/range {v22 .. v22}, Lnet/fortuna/ical4j/model/property/DtStart;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v26

    invoke-virtual/range {v22 .. v22}, Lnet/fortuna/ical4j/model/property/DtStart;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v11, v0, v1}, Lnet/fortuna/ical4j/model/Dur;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    .line 317
    .local v11, "rDuration":Lnet/fortuna/ical4j/model/Dur;
    :goto_1
    const-string v26, "RDATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/Component;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lnet/fortuna/ical4j/model/PropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_d

    .line 318
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnet/fortuna/ical4j/model/property/RDate;

    .line 319
    .local v12, "rdate":Lnet/fortuna/ical4j/model/property/RDate;
    const-string v26, "VALUE"

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lnet/fortuna/ical4j/model/property/RDate;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v16

    check-cast v16, Lnet/fortuna/ical4j/model/parameter/Value;

    .line 320
    .local v16, "rdateValue":Lnet/fortuna/ical4j/model/parameter/Value;
    sget-object v26, Lnet/fortuna/ical4j/model/parameter/Value;->PERIOD:Lnet/fortuna/ical4j/model/parameter/Value;

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 321
    invoke-virtual {v12}, Lnet/fortuna/ical4j/model/property/RDate;->getPeriods()Lnet/fortuna/ical4j/model/PeriodList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lnet/fortuna/ical4j/model/PeriodList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "j":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_4

    .line 322
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnet/fortuna/ical4j/model/Period;

    .line 323
    .local v14, "rdatePeriod":Lnet/fortuna/ical4j/model/Period;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lnet/fortuna/ical4j/model/Period;->intersects(Lnet/fortuna/ical4j/model/DateRange;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 324
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lnet/fortuna/ical4j/model/PeriodList;->add(Lnet/fortuna/ical4j/model/Period;)Z

    goto :goto_2

    .line 298
    .end local v9    # "i":Ljava/util/Iterator;
    .end local v10    # "j":Ljava/util/Iterator;
    .end local v11    # "rDuration":Lnet/fortuna/ical4j/model/Dur;
    .end local v12    # "rdate":Lnet/fortuna/ical4j/model/property/RDate;
    .end local v14    # "rdatePeriod":Lnet/fortuna/ical4j/model/Period;
    .end local v16    # "rdateValue":Lnet/fortuna/ical4j/model/parameter/Value;
    :cond_6
    invoke-virtual/range {v22 .. v22}, Lnet/fortuna/ical4j/model/property/DtStart;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v0, v0, Lnet/fortuna/ical4j/model/DateTime;

    move/from16 v26, v0

    if-eqz v26, :cond_3

    .line 299
    invoke-virtual/range {v22 .. v22}, Lnet/fortuna/ical4j/model/property/DtStart;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v26

    check-cast v26, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual/range {v26 .. v26}, Lnet/fortuna/ical4j/model/DateTime;->getTimeZone()Lnet/fortuna/ical4j/model/TimeZone;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PeriodList;->setTimeZone(Lnet/fortuna/ical4j/model/TimeZone;)V

    goto/16 :goto_0

    .line 309
    :cond_7
    if-nez v4, :cond_8

    .line 310
    new-instance v11, Lnet/fortuna/ical4j/model/Dur;

    invoke-virtual/range {v22 .. v22}, Lnet/fortuna/ical4j/model/property/DtStart;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v26

    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v11, v0, v1}, Lnet/fortuna/ical4j/model/Dur;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    .restart local v11    # "rDuration":Lnet/fortuna/ical4j/model/Dur;
    goto/16 :goto_1

    .line 313
    .end local v11    # "rDuration":Lnet/fortuna/ical4j/model/Dur;
    :cond_8
    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/property/Duration;->getDuration()Lnet/fortuna/ical4j/model/Dur;

    move-result-object v11

    .restart local v11    # "rDuration":Lnet/fortuna/ical4j/model/Dur;
    goto/16 :goto_1

    .line 328
    .restart local v9    # "i":Ljava/util/Iterator;
    .restart local v12    # "rdate":Lnet/fortuna/ical4j/model/property/RDate;
    .restart local v16    # "rdateValue":Lnet/fortuna/ical4j/model/parameter/Value;
    :cond_9
    sget-object v26, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 329
    invoke-virtual {v12}, Lnet/fortuna/ical4j/model/property/RDate;->getDates()Lnet/fortuna/ical4j/model/DateList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "j":Ljava/util/Iterator;
    :cond_a
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_4

    .line 330
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lnet/fortuna/ical4j/model/DateTime;

    .line 331
    .local v15, "rdateTime":Lnet/fortuna/ical4j/model/DateTime;
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lnet/fortuna/ical4j/model/Period;->includes(Ljava/util/Date;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 332
    new-instance v26, Lnet/fortuna/ical4j/model/Period;

    move-object/from16 v0, v26

    invoke-direct {v0, v15, v11}, Lnet/fortuna/ical4j/model/Period;-><init>(Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/Dur;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PeriodList;->add(Lnet/fortuna/ical4j/model/Period;)Z

    goto :goto_3

    .line 337
    .end local v10    # "j":Ljava/util/Iterator;
    .end local v15    # "rdateTime":Lnet/fortuna/ical4j/model/DateTime;
    :cond_b
    invoke-virtual {v12}, Lnet/fortuna/ical4j/model/property/RDate;->getDates()Lnet/fortuna/ical4j/model/DateList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "j":Ljava/util/Iterator;
    :cond_c
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_4

    .line 338
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/fortuna/ical4j/model/Date;

    .line 339
    .local v13, "rdateDate":Lnet/fortuna/ical4j/model/Date;
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lnet/fortuna/ical4j/model/Period;->includes(Ljava/util/Date;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 340
    new-instance v26, Lnet/fortuna/ical4j/model/Period;

    new-instance v27, Lnet/fortuna/ical4j/model/DateTime;

    move-object/from16 v0, v27

    invoke-direct {v0, v13}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v11}, Lnet/fortuna/ical4j/model/Period;-><init>(Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/Dur;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PeriodList;->add(Lnet/fortuna/ical4j/model/Period;)Z

    goto :goto_4

    .line 348
    .end local v10    # "j":Ljava/util/Iterator;
    .end local v12    # "rdate":Lnet/fortuna/ical4j/model/property/RDate;
    .end local v13    # "rdateDate":Lnet/fortuna/ical4j/model/Date;
    .end local v16    # "rdateValue":Lnet/fortuna/ical4j/model/parameter/Value;
    :cond_d
    new-instance v23, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual/range {p1 .. p1}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    .line 349
    .local v23, "startMinusDuration":Lnet/fortuna/ical4j/model/DateTime;
    invoke-virtual {v11}, Lnet/fortuna/ical4j/model/Dur;->negate()Lnet/fortuna/ical4j/model/Dur;

    move-result-object v26

    .line 350
    invoke-virtual/range {p1 .. p1}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v27

    .line 349
    invoke-virtual/range {v26 .. v27}, Lnet/fortuna/ical4j/model/Dur;->getTime(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v26

    .line 350
    invoke-virtual/range {v26 .. v26}, Ljava/util/Date;->getTime()J

    move-result-wide v26

    .line 349
    move-object/from16 v0, v23

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/model/DateTime;->setTime(J)V

    .line 353
    const-string v26, "RRULE"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/Component;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lnet/fortuna/ical4j/model/PropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_f

    .line 354
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lnet/fortuna/ical4j/model/property/RRule;

    .line 355
    .local v19, "rrule":Lnet/fortuna/ical4j/model/property/RRule;
    invoke-virtual/range {v19 .. v19}, Lnet/fortuna/ical4j/model/property/RRule;->getRecur()Lnet/fortuna/ical4j/model/Recur;

    move-result-object v26

    invoke-virtual/range {v22 .. v22}, Lnet/fortuna/ical4j/model/property/DtStart;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v27

    new-instance v28, Lnet/fortuna/ical4j/model/Period;

    .line 356
    invoke-virtual/range {p1 .. p1}, Lnet/fortuna/ical4j/model/Period;->getEnd()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/Period;-><init>(Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/DateTime;)V

    .line 355
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lnet/fortuna/ical4j/model/Recur;->getDates(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v21

    .line 357
    .local v21, "rruleDates":Lnet/fortuna/ical4j/model/DateList;
    invoke-virtual/range {v21 .. v21}, Lnet/fortuna/ical4j/model/DateList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "j":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_e

    .line 358
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lnet/fortuna/ical4j/model/Date;

    .line 359
    .local v20, "rruleDate":Lnet/fortuna/ical4j/model/Date;
    new-instance v26, Lnet/fortuna/ical4j/model/Period;

    new-instance v27, Lnet/fortuna/ical4j/model/DateTime;

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v11}, Lnet/fortuna/ical4j/model/Period;-><init>(Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/Dur;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PeriodList;->add(Lnet/fortuna/ical4j/model/Period;)Z

    goto :goto_5

    .line 364
    .end local v10    # "j":Ljava/util/Iterator;
    .end local v19    # "rrule":Lnet/fortuna/ical4j/model/property/RRule;
    .end local v20    # "rruleDate":Lnet/fortuna/ical4j/model/Date;
    .end local v21    # "rruleDates":Lnet/fortuna/ical4j/model/DateList;
    :cond_f
    const/16 v24, 0x0

    .line 365
    .local v24, "startPeriod":Lnet/fortuna/ical4j/model/Period;
    if-eqz v5, :cond_14

    .line 366
    new-instance v24, Lnet/fortuna/ical4j/model/Period;

    .end local v24    # "startPeriod":Lnet/fortuna/ical4j/model/Period;
    new-instance v26, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual/range {v22 .. v22}, Lnet/fortuna/ical4j/model/property/DtStart;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    new-instance v27, Lnet/fortuna/ical4j/model/DateTime;

    .line 367
    invoke-virtual {v5}, Lnet/fortuna/ical4j/model/property/DateProperty;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/Period;-><init>(Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/DateTime;)V

    .line 381
    .restart local v24    # "startPeriod":Lnet/fortuna/ical4j/model/Period;
    :goto_6
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/Period;->intersects(Lnet/fortuna/ical4j/model/DateRange;)Z

    move-result v26

    if-eqz v26, :cond_10

    .line 382
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/PeriodList;->add(Lnet/fortuna/ical4j/model/Period;)Z

    .line 386
    :cond_10
    const-string v26, "EXDATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/Component;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lnet/fortuna/ical4j/model/PropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_16

    .line 387
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/fortuna/ical4j/model/property/ExDate;

    .line 388
    .local v6, "exdate":Lnet/fortuna/ical4j/model/property/ExDate;
    invoke-virtual/range {v18 .. v18}, Lnet/fortuna/ical4j/model/PeriodList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "j":Ljava/util/Iterator;
    :cond_12
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_11

    .line 389
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lnet/fortuna/ical4j/model/Period;

    .line 391
    .local v17, "recurrence":Lnet/fortuna/ical4j/model/Period;
    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/property/ExDate;->getDates()Lnet/fortuna/ical4j/model/DateList;

    move-result-object v26

    invoke-virtual/range {v17 .. v17}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lnet/fortuna/ical4j/model/DateList;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_13

    .line 392
    invoke-virtual {v6}, Lnet/fortuna/ical4j/model/property/ExDate;->getDates()Lnet/fortuna/ical4j/model/DateList;

    move-result-object v26

    new-instance v27, Lnet/fortuna/ical4j/model/Date;

    invoke-virtual/range {v17 .. v17}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Lnet/fortuna/ical4j/model/Date;-><init>(Ljava/util/Date;)V

    invoke-virtual/range {v26 .. v27}, Lnet/fortuna/ical4j/model/DateList;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 393
    :cond_13
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    .line 374
    .end local v6    # "exdate":Lnet/fortuna/ical4j/model/property/ExDate;
    .end local v10    # "j":Ljava/util/Iterator;
    .end local v17    # "recurrence":Lnet/fortuna/ical4j/model/Period;
    :cond_14
    if-nez v4, :cond_15

    .line 375
    new-instance v4, Lnet/fortuna/ical4j/model/property/Duration;

    .end local v4    # "duration":Lnet/fortuna/ical4j/model/property/Duration;
    invoke-direct {v4, v11}, Lnet/fortuna/ical4j/model/property/Duration;-><init>(Lnet/fortuna/ical4j/model/Dur;)V

    .line 378
    .restart local v4    # "duration":Lnet/fortuna/ical4j/model/property/Duration;
    :cond_15
    new-instance v24, Lnet/fortuna/ical4j/model/Period;

    .end local v24    # "startPeriod":Lnet/fortuna/ical4j/model/Period;
    new-instance v26, Lnet/fortuna/ical4j/model/DateTime;

    invoke-virtual/range {v22 .. v22}, Lnet/fortuna/ical4j/model/property/DtStart;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Lnet/fortuna/ical4j/model/DateTime;-><init>(Ljava/util/Date;)V

    .line 379
    invoke-virtual {v4}, Lnet/fortuna/ical4j/model/property/Duration;->getDuration()Lnet/fortuna/ical4j/model/Dur;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/Period;-><init>(Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/Dur;)V

    .restart local v24    # "startPeriod":Lnet/fortuna/ical4j/model/Period;
    goto :goto_6

    .line 399
    :cond_16
    const-string v26, "EXRULE"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/Component;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lnet/fortuna/ical4j/model/PropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_17
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_1

    .line 400
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/fortuna/ical4j/model/property/ExRule;

    .line 401
    .local v7, "exrule":Lnet/fortuna/ical4j/model/property/ExRule;
    invoke-virtual {v7}, Lnet/fortuna/ical4j/model/property/ExRule;->getRecur()Lnet/fortuna/ical4j/model/Recur;

    move-result-object v26

    invoke-virtual/range {v22 .. v22}, Lnet/fortuna/ical4j/model/property/DtStart;->getDate()Lnet/fortuna/ical4j/model/Date;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, p1

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lnet/fortuna/ical4j/model/Recur;->getDates(Lnet/fortuna/ical4j/model/Date;Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/parameter/Value;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object v8

    .line 403
    .local v8, "exruleDates":Lnet/fortuna/ical4j/model/DateList;
    invoke-virtual/range {v18 .. v18}, Lnet/fortuna/ical4j/model/PeriodList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "j":Ljava/util/Iterator;
    :cond_18
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_17

    .line 404
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lnet/fortuna/ical4j/model/Period;

    .line 406
    .restart local v17    # "recurrence":Lnet/fortuna/ical4j/model/Period;
    invoke-virtual/range {v17 .. v17}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Lnet/fortuna/ical4j/model/DateList;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_19

    new-instance v26, Lnet/fortuna/ical4j/model/Date;

    .line 407
    invoke-virtual/range {v17 .. v17}, Lnet/fortuna/ical4j/model/Period;->getStart()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Lnet/fortuna/ical4j/model/Date;-><init>(Ljava/util/Date;)V

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Lnet/fortuna/ical4j/model/DateList;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_18

    .line 408
    :cond_19
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_8
.end method

.method public copy()Lnet/fortuna/ical4j/model/Component;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Lnet/fortuna/ical4j/model/PropertyList;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/PropertyList;-><init>(Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 256
    .local v0, "newprops":Lnet/fortuna/ical4j/model/PropertyList;
    invoke-static {}, Lnet/fortuna/ical4j/model/ComponentFactory;->getInstance()Lnet/fortuna/ical4j/model/ComponentFactory;

    move-result-object v1

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lnet/fortuna/ical4j/model/ComponentFactory;->createComponent(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 227
    instance-of v1, p1, Lnet/fortuna/ical4j/model/Component;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 228
    check-cast v0, Lnet/fortuna/ical4j/model/Component;

    .line 229
    .local v0, "c":Lnet/fortuna/ical4j/model/Component;
    new-instance v1, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v1}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Component;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v1

    .line 230
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result v1

    .line 232
    .end local v0    # "c":Lnet/fortuna/ical4j/model/Component;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Component;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getProperties()Lnet/fortuna/ical4j/model/PropertyList;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Component;->properties:Lnet/fortuna/ical4j/model/PropertyList;

    return-object v0
.end method

.method public final getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/PropertyList;->getProperties(Ljava/lang/String;)Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    return-object v0
.end method

.method public final getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/PropertyList;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 239
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    .line 239
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x3a

    .line 150
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 151
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "BEGIN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 156
    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 158
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final validate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 201
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Component;->validate(Z)V

    .line 202
    return-void
.end method

.method public abstract validate(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation
.end method

.method protected final validateProperties()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Component;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v2}, Lnet/fortuna/ical4j/model/PropertyList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/fortuna/ical4j/model/Property;

    .line 219
    .local v1, "property":Lnet/fortuna/ical4j/model/Property;
    invoke-virtual {v1}, Lnet/fortuna/ical4j/model/Property;->validate()V

    goto :goto_0

    .line 221
    .end local v1    # "property":Lnet/fortuna/ical4j/model/Property;
    :cond_0
    return-void
.end method
