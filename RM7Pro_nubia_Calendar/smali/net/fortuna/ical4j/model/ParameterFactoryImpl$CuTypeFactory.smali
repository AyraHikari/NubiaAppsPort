.class Lnet/fortuna/ical4j/model/ParameterFactoryImpl$CuTypeFactory;
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
    name = "CuTypeFactory"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;

    .prologue
    .line 180
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$CuTypeFactory;-><init>()V

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
    .line 184
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/CuType;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/parameter/CuType;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, "parameter":Lnet/fortuna/ical4j/model/parameter/CuType;
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/CuType;->INDIVIDUAL:Lnet/fortuna/ical4j/model/parameter/CuType;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/CuType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/CuType;->INDIVIDUAL:Lnet/fortuna/ical4j/model/parameter/CuType;

    .line 200
    :cond_0
    :goto_0
    return-object v0

    .line 188
    :cond_1
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/CuType;->GROUP:Lnet/fortuna/ical4j/model/parameter/CuType;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/CuType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 189
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/CuType;->GROUP:Lnet/fortuna/ical4j/model/parameter/CuType;

    goto :goto_0

    .line 191
    :cond_2
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/CuType;->RESOURCE:Lnet/fortuna/ical4j/model/parameter/CuType;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/CuType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 192
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/CuType;->RESOURCE:Lnet/fortuna/ical4j/model/parameter/CuType;

    goto :goto_0

    .line 194
    :cond_3
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/CuType;->ROOM:Lnet/fortuna/ical4j/model/parameter/CuType;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/CuType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 195
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/CuType;->ROOM:Lnet/fortuna/ical4j/model/parameter/CuType;

    goto :goto_0

    .line 197
    :cond_4
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/CuType;->UNKNOWN:Lnet/fortuna/ical4j/model/parameter/CuType;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/CuType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/CuType;->UNKNOWN:Lnet/fortuna/ical4j/model/parameter/CuType;

    goto :goto_0
.end method
