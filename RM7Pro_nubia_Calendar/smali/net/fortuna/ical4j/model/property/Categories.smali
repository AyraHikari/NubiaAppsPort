.class public Lnet/fortuna/ical4j/model/property/Categories;
.super Lnet/fortuna/ical4j/model/Property;
.source "Categories.java"


# static fields
.field private static final serialVersionUID:J = -0x6bd48a137f5bc922L


# instance fields
.field private categories:Lnet/fortuna/ical4j/model/TextList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 102
    const-string v0, "CATEGORIES"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 103
    new-instance v0, Lnet/fortuna/ical4j/model/TextList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/TextList;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Categories;->categories:Lnet/fortuna/ical4j/model/TextList;

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 110
    const-string v0, "CATEGORIES"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 111
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/property/Categories;->setValue(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "aValue"    # Ljava/lang/String;

    .prologue
    .line 119
    const-string v0, "CATEGORIES"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 120
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/Categories;->setValue(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/TextList;)V
    .locals 2
    .param p1, "aList"    # Lnet/fortuna/ical4j/model/ParameterList;
    .param p2, "cList"    # Lnet/fortuna/ical4j/model/TextList;

    .prologue
    .line 136
    const-string v0, "CATEGORIES"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 137
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/Categories;->categories:Lnet/fortuna/ical4j/model/TextList;

    .line 138
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/TextList;)V
    .locals 2
    .param p1, "cList"    # Lnet/fortuna/ical4j/model/TextList;

    .prologue
    .line 127
    const-string v0, "CATEGORIES"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 128
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Categories;->categories:Lnet/fortuna/ical4j/model/TextList;

    .line 129
    return-void
.end method


# virtual methods
.method public final getCategories()Lnet/fortuna/ical4j/model/TextList;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Categories;->categories:Lnet/fortuna/ical4j/model/TextList;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Categories;->getCategories()Lnet/fortuna/ical4j/model/TextList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/TextList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "aValue"    # Ljava/lang/String;

    .prologue
    .line 144
    new-instance v0, Lnet/fortuna/ical4j/model/TextList;

    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/TextList;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Categories;->categories:Lnet/fortuna/ical4j/model/TextList;

    .line 145
    return-void
.end method

.method public final validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "LANGUAGE"

    .line 156
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Categories;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 155
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 161
    return-void
.end method
