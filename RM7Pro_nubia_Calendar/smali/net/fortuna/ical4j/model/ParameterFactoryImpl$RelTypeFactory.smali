.class Lnet/fortuna/ical4j/model/ParameterFactoryImpl$RelTypeFactory;
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
    name = "RelTypeFactory"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;

    .prologue
    .line 370
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$RelTypeFactory;-><init>()V

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
    .line 375
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/RelType;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/parameter/RelType;-><init>(Ljava/lang/String;)V

    .line 376
    .local v0, "parameter":Lnet/fortuna/ical4j/model/parameter/RelType;
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/RelType;->PARENT:Lnet/fortuna/ical4j/model/parameter/RelType;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/RelType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 377
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/RelType;->PARENT:Lnet/fortuna/ical4j/model/parameter/RelType;

    .line 382
    :cond_0
    :goto_0
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/RelType;->SIBLING:Lnet/fortuna/ical4j/model/parameter/RelType;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/RelType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/RelType;->SIBLING:Lnet/fortuna/ical4j/model/parameter/RelType;

    .line 385
    :cond_1
    return-object v0

    .line 379
    :cond_2
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/RelType;->CHILD:Lnet/fortuna/ical4j/model/parameter/RelType;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/RelType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/RelType;->CHILD:Lnet/fortuna/ical4j/model/parameter/RelType;

    goto :goto_0
.end method
