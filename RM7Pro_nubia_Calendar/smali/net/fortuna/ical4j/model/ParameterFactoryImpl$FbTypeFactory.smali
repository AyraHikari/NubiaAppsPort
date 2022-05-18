.class Lnet/fortuna/ical4j/model/ParameterFactoryImpl$FbTypeFactory;
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
    name = "FbTypeFactory"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;

    .prologue
    .line 267
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$FbTypeFactory;-><init>()V

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
    .line 272
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/FbType;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/parameter/FbType;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, "parameter":Lnet/fortuna/ical4j/model/parameter/FbType;
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/FbType;->FREE:Lnet/fortuna/ical4j/model/parameter/FbType;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/FbType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/FbType;->FREE:Lnet/fortuna/ical4j/model/parameter/FbType;

    .line 285
    :cond_0
    :goto_0
    return-object v0

    .line 276
    :cond_1
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/FbType;->BUSY:Lnet/fortuna/ical4j/model/parameter/FbType;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/FbType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 277
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/FbType;->BUSY:Lnet/fortuna/ical4j/model/parameter/FbType;

    goto :goto_0

    .line 279
    :cond_2
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/FbType;->BUSY_TENTATIVE:Lnet/fortuna/ical4j/model/parameter/FbType;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/FbType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 280
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/FbType;->BUSY_TENTATIVE:Lnet/fortuna/ical4j/model/parameter/FbType;

    goto :goto_0

    .line 282
    :cond_3
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/FbType;->BUSY_UNAVAILABLE:Lnet/fortuna/ical4j/model/parameter/FbType;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/FbType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/FbType;->BUSY_UNAVAILABLE:Lnet/fortuna/ical4j/model/parameter/FbType;

    goto :goto_0
.end method
