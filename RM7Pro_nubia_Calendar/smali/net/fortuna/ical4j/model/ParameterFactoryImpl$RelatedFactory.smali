.class Lnet/fortuna/ical4j/model/ParameterFactoryImpl$RelatedFactory;
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
    name = "RelatedFactory"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;

    .prologue
    .line 354
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$RelatedFactory;-><init>()V

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
    .line 359
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Related;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/parameter/Related;-><init>(Ljava/lang/String;)V

    .line 360
    .local v0, "parameter":Lnet/fortuna/ical4j/model/parameter/Related;
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Related;->START:Lnet/fortuna/ical4j/model/parameter/Related;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Related;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Related;->START:Lnet/fortuna/ical4j/model/parameter/Related;

    .line 366
    :cond_0
    :goto_0
    return-object v0

    .line 363
    :cond_1
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Related;->END:Lnet/fortuna/ical4j/model/parameter/Related;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Related;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Related;->END:Lnet/fortuna/ical4j/model/parameter/Related;

    goto :goto_0
.end method
