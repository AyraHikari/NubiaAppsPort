.class Lnet/fortuna/ical4j/model/PropertyFactoryImpl$CategoriesFactory;
.super Ljava/lang/Object;
.source "PropertyFactoryImpl.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/PropertyFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/PropertyFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CategoriesFactory"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/fortuna/ical4j/model/PropertyFactoryImpl$1;

    .prologue
    .line 228
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl$CategoriesFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 238
    new-instance v0, Lnet/fortuna/ical4j/model/property/Categories;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Categories;-><init>()V

    return-object v0
.end method

.method public createProperty(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parameters"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 234
    new-instance v0, Lnet/fortuna/ical4j/model/property/Categories;

    invoke-direct {v0, p2, p3}, Lnet/fortuna/ical4j/model/property/Categories;-><init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V

    return-object v0
.end method