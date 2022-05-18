.class Lnet/fortuna/ical4j/model/ParameterFactoryImpl$PartStatFactory;
.super Ljava/lang/Object;
.source "ParameterFactoryImpl.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/ParameterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/ParameterFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PartStatFactory"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;

    .prologue
    .line 307
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$PartStatFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createParameter(Ljava/lang/String;Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 312
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/PartStat;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/parameter/PartStat;-><init>(Ljava/lang/String;)V

    .line 313
    .local v0, "parameter":Lnet/fortuna/ical4j/model/parameter/PartStat;
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/PartStat;->NEEDS_ACTION:Lnet/fortuna/ical4j/model/parameter/PartStat;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/PartStat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->NEEDS_ACTION:Lnet/fortuna/ical4j/model/parameter/PartStat;

    .line 334
    :cond_0
    :goto_0
    return-object v0

    .line 316
    :cond_1
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/PartStat;->ACCEPTED:Lnet/fortuna/ical4j/model/parameter/PartStat;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/PartStat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->ACCEPTED:Lnet/fortuna/ical4j/model/parameter/PartStat;

    goto :goto_0

    .line 319
    :cond_2
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/PartStat;->DECLINED:Lnet/fortuna/ical4j/model/parameter/PartStat;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/PartStat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 320
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->DECLINED:Lnet/fortuna/ical4j/model/parameter/PartStat;

    goto :goto_0

    .line 322
    :cond_3
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/PartStat;->TENTATIVE:Lnet/fortuna/ical4j/model/parameter/PartStat;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/PartStat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 323
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->TENTATIVE:Lnet/fortuna/ical4j/model/parameter/PartStat;

    goto :goto_0

    .line 325
    :cond_4
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/PartStat;->DELEGATED:Lnet/fortuna/ical4j/model/parameter/PartStat;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/PartStat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 326
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->DELEGATED:Lnet/fortuna/ical4j/model/parameter/PartStat;

    goto :goto_0

    .line 328
    :cond_5
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/PartStat;->COMPLETED:Lnet/fortuna/ical4j/model/parameter/PartStat;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/PartStat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 329
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->COMPLETED:Lnet/fortuna/ical4j/model/parameter/PartStat;

    goto :goto_0

    .line 331
    :cond_6
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/PartStat;->IN_PROCESS:Lnet/fortuna/ical4j/model/parameter/PartStat;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/PartStat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/PartStat;->IN_PROCESS:Lnet/fortuna/ical4j/model/parameter/PartStat;

    goto :goto_0
.end method
